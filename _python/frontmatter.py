import re
import os
import sys


def splitall(path):
    # clean path
    path = path.replace(u'\xa0', u' ')
    path = str(os.path.splitext(path)[0])
    allparts = []
    while 1:
        parts = os.path.split(path)
        if parts[0] == path:  # sentinel for absolute paths
            allparts.insert(0, parts[0])
            break
        elif parts[1] == path:  # sentinel for relative paths
            allparts.insert(0, parts[1])
            break
        else:
            path = parts[0]
            allparts.insert(0, parts[1])
    return allparts


def front_matter(file_path, text):
    # clear / remove existing front matter
    text = re.sub(r'(---)[.\n\S\s]*?(---)', r'', text)
    # hierarchy properties
    parts = splitall(file_path)
    title = re.sub(r'([\d\.])', r'', parts[-1]).strip()
    section = re.sub(r'[a-zA-Z \,\_\-\'\(\)]', r'', parts[-1]).strip()
    divName = re.sub(r'(.*- )', r'', parts[-2]).strip()
    divNumb = int(re.sub(r'\D', r'', parts[-2]).strip())
    subgroup = re.sub(r'(\d+[ |\.\d])', r'', parts[-3]).strip()
    # tags
    tags = []
    tags.extend(re.split(' |, |- ', subgroup))
    tags.extend(re.split(' |, |- ', divName))
    tags.extend(re.split(' |, |- ', title))
    tags = list(dict.fromkeys(tags))
    if ('of' in tags):
        tags.remove('of')
    if ('and' in tags):
        tags.remove('and')
    if ('(2)' in tags):
        tags.remove('(2)')
    if ('(3)' in tags):
        tags.remove('(3)')
    # navigation
    if title == divName:
        parent = subgroup
        order = int(divNumb)
    else:
        parent = divName
        order = float(section[2:])
    # format into yaml frontmatter
    yaml = (
        f'---\n'
        f'title: {title}\n'
        f"section: '{section}'\n"
        f'divNumb: {divNumb}\n'
        f'divName: {divName}\n'
        f'subgroup: {subgroup}\n'
        f"tags: {tags}\n"
        # remove or reformat for general use?
        f'navigation:\n'
        f'  key: {title}\n'
        f'  parent: {parent}\n'
        f'  order: {order}\n'
        f'---\n'
    )
    # print(yaml)
    # print('✅ Frontmatter Added')
    return yaml + text
