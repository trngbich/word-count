#!/usr/bin/env bash

# loop over all books
for title in abyss isles last sierra; do
    python source/wordcount.py data/${title}.txt processed_data/${title}.dat
    python source/plotcount.py processed_data/${title}.dat processed_data/${title}.png
done

# this could be done using variables but nevermind
python source/zipf_test.py processed_data/abyss.dat processed_data/isles.dat processed_data/last.dat processed_data/sierra.dat