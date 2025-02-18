#!/usr/bin/env python3
import sys

with open(sys.argv[1], "w") as out_fd:
    for input in sys.argv[2:]:
        with open(input) as input_fd:
            out_fd.write(input_fd.read())
