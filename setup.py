#!/usr/bin/env python3

from setuptools import setup

setup(
    name="braid",
    version="0.12.1",
    description="A musical notation system, livecoding framework, and sequencer for monophonic MIDI synths.",
    author="Brian House",
    author_email="brian.house@gmail.com",
    url="https://braid.live",
    license='GPL3',
    packages=['braid'],
    data_files=[('braid', ['synths.yaml', 'README.md', 'CHANGELOG.md', 'LICENSE.txt'])],
    install_requires=[
        "python-rtmidi>=1.0.0",
        "PyYAML>=3.11"
    ],
)
