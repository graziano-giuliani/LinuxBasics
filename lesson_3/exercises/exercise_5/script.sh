#!/bin/bash

# Replacing grep with sed '/^#/d' is also acceptable. sed -i is incorrect
# however (permanent changes would be applied to the file).
grep -v '^#' example_file | awk '{print NR, ($1 - $2), ($1 - $2)*($1 - $2)}' > result

# An alternative solution (producing different row numbers) would be
awk 'NR>1 {print NR, ($1 - $2), ($1 - $2)*($1 - $2)}' > result
