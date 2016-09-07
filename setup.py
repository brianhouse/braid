#!/usr/bin/env python3

from distutils.core import setup

setup(
    name="braid",
    version="1.0.1",
    description="A musical notation system, livecoding / performance framework, and MIDI sequencer.",
    author="Brian House",
    url="https://github.com/brianhouse/braid",
    license='GPL3',
    py_modules=['braid'],
    install_requires=[
        "python-rtmidi>=0.5b1"
    ],
)
