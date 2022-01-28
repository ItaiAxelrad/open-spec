import re
import os
import time
from frontmatter import front_matter


def md_edits(text):
    # remove unicode characters
    text = re.sub(r'(\\u\d+|@)', r'', text, flags=re.M)
    # remove images
    text = re.sub(r'\!\[.*\]\(.*\)', r'<image removed>', text, flags=re.M)
    # clear all headings
    text = re.sub(r'^#+ ', r'', text, flags=re.M)
    # replace bold with list
    text = re.sub(r'^\*\*', r'1. ', text, flags=re.M)
    text = re.sub(r'\*\*$', r'', text, flags=re.M)
    # remove unordered list
    text = re.sub(r"^( {0,})(- )", r"\1 1. ", text, flags=re.M)
    # remove decimal lists
    text = re.sub(r"^\d+\.(\d+)", r"\1.", text, flags=re.M)
    # indent A. level and turn into order list 1.
    text = re.sub(r"^( {0,}[A-Z]+\. )(.*)\n",
                  r"   1. \2", text, flags=re.M)
    # indent a. level and turn into order list 1.
    text = re.sub(r"^( {0,}[a-z]+\. )(.*)\n",
                  r"      1. \2", text, flags=re.M)
    # remove preceding new lines
    text = re.sub(r"^\n( {0,})(\d+\.)",
                  r"\1\2", text, flags=re.M)
    # add list after :
    text = re.sub(r"(:\n)\n( {0,})",
                  r"\1\2   1. ", text, flags=re.M)
    # indent after :
    text = re.sub(r"^( {0,})(.*:\n)( {0,3}1\. )",
                  r"\1\2   \1\3", text, flags=re.M)
    # make everything a list
    text = re.sub(r"\n\n( {0,})([\wA-Z])",
                  r"\n\1   1. \2", text, flags=re.M)
    # break apart inline :
    text = re.sub(r"^( {0,})(\w\. )(.*:) (.*\n)",
                  r"\1\2\3\n\1   1. \4", text, flags=re.M)
    # remove double list
    text = re.sub(r'1\. 1\.', r'1.', text, flags=re.M)
    # fix tables
    text = re.sub(
        r"\+-\+\+\+|\+-\+-\+\+\+|\+\+--\+|\+\+  -\+-\+\+\+|\+\+\+-\+\+|\+\+-\+\+\+|\+\+---\+|\+-\+\+|\+--\+\+-\+|\+\+\+\+|\+\+-\+--\+|\+\+\+-\+--\+|\+\+\+--\+--\+", r"", text, flags=re.M)
    # fix headings
    text = re.sub(r'(Part 1 - General|Part 1 General|^General|1\. General|1\. Part 1 – General|Part 1 – General)',
                  r'## General', text, flags=re.I)
    text = re.sub(r'(Part 2 - Products|Part 2 Products|^Products|2\. Products|1\. Part 2 – Products|Part 2 – Products)',
                  r'## Product', text, flags=re.I)
    text = re.sub(r'(Part 3 - Execution|Part 3 Execution|^Execution|3\. Execution|1\. Part 3 – Execution|Part 3 – Execution)',
                  r'## Execution', text, flags=re.I)
    # add space back in after header
    text = re.sub(r"(## General)", r"\n\1\n", text, flags=re.M)
    text = re.sub(r"(## Products)",
                  r"\n\1\n", text, flags=re.M)
    text = re.sub(r"(## Execution)",
                  r"\n\1\n", text, flags=re.M)
    # replace spaces with clean blank line
    text = re.sub(r"^ +\n", r"\n", text, flags=re.M)
    # remove extra blank lines
    text = re.sub(r"^\n\n", r"\n", text, flags=re.M)
    # print('✅ Edited')
    return text
