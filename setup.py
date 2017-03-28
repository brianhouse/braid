#!/usr/bin/env python3

from distutils.core import setup

setup(
    name="braid",
    version="0.10.1",
    description="A musical notation system, livecoding framework, and sequencer for monophonic MIDI synths.",
    author="Brian House",
    url="https://github.com/brianhouse/braid",
    license='GPL3',
    packages=['braid'],
    install_requires=[
        "python-rtmidi>=1.0.0",
        "PyYAML>=3.11"
    ],
)
