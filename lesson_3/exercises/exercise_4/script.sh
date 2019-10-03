#!/bin/bash

# After the file is sorted according to the 3rd column, this column will assume
# its largest value at the last row (the first, if you sort with the '-r'
# option). I select this row with 'tail -n1' and from it its second field.
paste -d' ' example_file_1 example_file_2 | sort -k3 -g | tail -n1 | cut -d' ' -f2

# Swapping the last 2 commands is also correct, but less efficient.
#paste -d' ' example_file_1 example_file_2 | sort -k3 -g | cut -d' ' -f2 | tail -n1
