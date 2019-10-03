#!/bin/bash

sed -i '/XXX/c #CORRUPTED' example_file
sed -i '/^#/d' example_file

# This last one will not be in-place, example_file will be left untouched
tail -n 2 example_file | sed 's/,/./g'

# Equivalent solution, less efficient (sed applied to the whole file)
#sed 's/,/./g' example_file | tail -n 2
