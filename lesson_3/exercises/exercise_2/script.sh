#!/bin/bash

# Solution 1: using pipes
# '^' and '$' make the search correct where required
grep -v '^#' file | grep '^2 ' | grep -i 'tamarindos$'

# Solution 2: using redirection (more sloppy)
# the output of each grep needs to be the input of the next
grep -v '^#' file > answer_1
grep '^2 ' answer_1 > answer_2
grep -i 'tamarindos$' answer_2 > answer_3
cat answer_3
