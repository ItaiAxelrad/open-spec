import re
import os
import time
from frontmatter import front_matter
from edits import md_edits


def edit_all(dir_path):
    print("starting edits...")
    start = time.time()
    for root, dirs, files in os.walk(dir_path):
        for file in files:
            if file.endswith(".md"):
                file_path = os.path.join(root, file)
                print(file_path)
                # read md file
                with open(file_path, "r") as md_file:
                    text = md_file.read()
                    text = md_edits(text)
                    text = front_matter(file_path, text)
                # write to new file
                with open(file_path, 'w') as f:
                    f.write(text)
    end = time.time()
    print(f"✅ Edited {len(files)} files in {int(end - start)}s")


dir_path = "/Users/itaiaxelrad/Documents/GitHub/OpenSpec/src/specifications/"
edit_all(dir_path)
