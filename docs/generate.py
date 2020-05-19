#!/usr/bin/env python3

import os, markdown2

with open(os.path.join(os.path.dirname(__file__), "page.html")) as f:
    page = f.read().strip()
with open(os.path.join(os.path.dirname(__file__), "content.md")) as f:
    content = markdown2.markdown(f.read().strip(), extras=['fenced-code-blocks', 'codehilite']).replace("&gt;&gt;&gt;", "<span class=\"int\">&gt;&gt;&gt;</span>").replace("{{","<span class=\"output\">").replace("}}","</span>").replace("...", "<span class=\"int\">...</span>")
with open(os.path.join(os.path.dirname(__file__), "index.html"), 'w') as f:
    f.write(page.replace("CONTENT", content))
