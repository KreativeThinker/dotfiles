from ranger.api.commands import Command
import os
import shutil
import tempfile

class zip(Command):
    """
    :zip <name>
    Create <name>.zip from the current selection.
    Implementation mirrors mkcd's argument style: you pass the name as an arg.
    The archive will contain a top-level folder named <name>.
    """

    def execute(self):
        name = self.rest(1).strip()
        if not name:
            self.fm.notify("Usage: :zip <name>", bad=True)
            return

        name = os.path.basename(name)
        if not name:
            self.fm.notify("Invalid archive name.", bad=True)
            return

        sel = list(self.fm.thistab.get_selection())
        if not sel:
            self.fm.notify("No files selected.", bad=True)
            return

        outzip = os.path.join(self.fm.thisdir.path, f"{name}.zip")
        if os.path.exists(outzip):
            self.fm.notify(f"Archive already exists: {outzip}", bad=True)
            return

        staging_root = tempfile.mkdtemp(prefix="ranger_zip_")
        content_dir = os.path.join(staging_root, name)
        os.makedirs(content_dir, exist_ok=True)

        try:
            for fobj in sel:
                src = fobj.path
                dest = os.path.join(content_dir, os.path.basename(src))
                if fobj.is_directory:
                    shutil.copytree(src, dest, dirs_exist_ok=True)
                else:
                    shutil.copy2(src, dest)

            # run `zip` detached so it doesn't corrupt ranger's screen
            self.fm.execute_command(
                ["zip", "-r", outzip, name],
                cwd=staging_root,
                flags="d"
            )
            self.fm.notify(f"Created {outzip}")
        finally:
            shutil.rmtree(staging_root, ignore_errors=True)


class unzip(Command):
    """
    :unzip
    Unzip each selected .zip into ./<basename>/ (create if missing), without overwriting existing files.
    """

    def execute(self):
        sel = list(self.fm.thistab.get_selection())
        if not sel:
            self.fm.notify("No files selected.", bad=True)
            return

        for fobj in sel:
            path = fobj.path
            if not path.lower().endswith(".zip"):
                self.fm.notify(f"Skipping non-zip: {os.path.basename(path)}")
                continue

            target = os.path.join(self.fm.thisdir.path, os.path.basename(path)[:-4])
            if not os.path.isdir(target):
                try:
                    os.makedirs(target)
                except Exception as e:
                    self.fm.notify(f"Failed to create {target}: {e}", bad=True)
                    continue

            # run `unzip` detached
            self.fm.execute_command(
                ["unzip", "-n", path, "-d", target],
                flags="d"
            )
            self.fm.notify(f"Extracted to {target}")
