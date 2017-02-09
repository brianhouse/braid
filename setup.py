#!/usr/bin/env python3

from distutils.core import setup

setup(
    name="braid",
    version="1.1.0",
    description="A musical notation system, livecoding framework, and sequencer for monophonic MIDI synths.",
    author="Brian House",
    url="https://github.com/brianhouse/braid",
    license='GPL3',
    py_modules=['braid'],
    install_requires=[
        "python-rtmidi>=0.5b1",
        "PyYAML>=3.11"
    ],
)
