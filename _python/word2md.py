import os
import re
import time
import mammoth
import markdownify
from edits import md_edits
from frontmatter import front_matter
# set input and output directories
src_path = "/Users/itaiaxelrad/Documents/Specifications"
dist_path = "/Users/itaiaxelrad/Documents/GitHub/OpenSpec/src/specifications"


def word_2_md(src_path, dist_path):
    print("starting conversion...")
    start = time.time()
    for root, dirs, files in os.walk(src_path):
        for file in sorted(files):
            if file.endswith(".docx") or file.endswith(".doc"):
                file_path = os.path.join(root, file)
                # read and convert docx files to md
                with open(file_path, "rb") as docx_file:
                    # parse docx file to html
                    try:
                        result = mammoth.convert_to_html(
                            docx_file)
                        html = result.value  # The generated HTML
                    except:
                        print(result.messages)
                    # convert to markdown
                    markdown = markdownify.markdownify(
                        html, heading_style=markdownify.ATX)
                    # pass in frontmatter & formating as functions (imported from files)
                    markdown = md_edits(markdown)
                    markdown = front_matter(file_path, markdown)
                # output location
                output_path = os.path.splitext(re.sub(
                    re.escape(src_path), dist_path, file_path))[0]+'.md'
                # clean path,
                output_path.replace(u'\xa0', u' ')
                output_path.replace(unichr(160), r' ')
                # check if spec directory exists
                if not os.path.exists(os.path.dirname(output_path)):
                    os.makedirs(os.path.dirname(output_path))
                # write to new file
                with open(output_path, 'w') as f:
                    f.write(markdown)
    end = time.time()
    print(f"✅ Converted {len(files)} files in {int(end - start)}s")


word_2_md(src_path, dist_path)
