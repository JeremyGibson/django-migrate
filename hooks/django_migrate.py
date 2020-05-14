import subprocess
import os
from pathlib import Path

def main():
    exitcode = 0
    cp = subprocess.run(
        ["python", "manage.py", "makemigrations"], 
        capture_output=True
    )
    if cp.stdout:
        if not cp.stdout.__contains__("No changes detected"):
            exitcode = 1
    return exitcode

if __name__ == "__main__":
    exit(main())