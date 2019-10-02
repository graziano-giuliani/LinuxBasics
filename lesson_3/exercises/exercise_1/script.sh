#!/bin/bash

head -n 3 file_1 > answer

# Mind the >> here instead of the >, to append to the existing file
head -n 3 file_2 | tail -n 2 >> answer

tail -n 3 file_3 >> answer

cat answer
