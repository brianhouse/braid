#!/usr/bin/env python3

from setuptools import setup

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setup(
    name="braid",
    version="0.14.1",
    author="Brian House",
    author_email="email@brian.house",
    description="A musical notation system and sequencer for monophonic MIDI synths.",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://braid.live",
    project_urls={
        "Issue Tracker": "https://github.com/brianhouse/braid/issues",
    },
    license='GPL3',
    packages=['braid'],
    include_package_data=True,
    install_requires=[
        "python-rtmidi>=1.0.0",
        "PyYAML>=3.11"
    ],
    python_requires=">=3.7",
)
