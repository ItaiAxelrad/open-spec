import os
import re
import mammoth
import markdownify
from edits import md_edits
from frontmatter import front_matter


def test_file(file_path):
    with open(file_path, "rb") as docx_file:
        # parse docx file to html
        result = mammoth.convert_to_html(docx_file)
        html = result.value  # The generated HTML
        print(result.messages)
        # convert to markdown
        markdown = markdownify.markdownify(
            html, heading_style=markdownify.ATX)
        # pass in frontmatter & formating as functions (imported from files)
        markdown = md_edits(markdown)
        markdown = front_matter(file_path, markdown)
        # print(markdown)
    root_path = os.path.dirname(os.path.realpath(__file__))
    with open(os.path.join(root_path, 'test.md'), 'w') as f:
        f.write(markdown)
    print('✅ Test: Word -> MD')


file_path = '/Users/itaiaxelrad/Documents/Specifications/Site and Infrastructure/Division 31 - Earthwork/311000 Site Clearing.docx'

test_file(file_path)
