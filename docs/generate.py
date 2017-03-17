#!/usr/bin/env python3

import os, markdown

with open(os.path.join(os.path.dirname(__file__), "page.html")) as f:
    page = f.read().strip()
with open(os.path.join(os.path.dirname(__file__), "content.md")) as f:
    content = markdown.markdown(f.read().strip())
    print(content)
with open(os.path.join(os.path.dirname(__file__), "index.html"), 'w') as f:
    f.write(page.replace("CONTENT", content))