#!/usr/bin/env bash
rm -r data_analysis
mkdir -p data_analysis

echo "Пункт 1"
cut -d',' -f3 faculty_2.csv | tr '+' '\n' | sed 's/^[[:space:]]*//; s/[[:space:]]*$//' | grep -v '^$' | sort -u > data_analysis/research_themes.txt
wc -l < data_analysis/research_themes.txt >> data_analysis/research_themes.txt

echo "Пункт 2"
cut -d',' -f3 faculty_2.csv | tr '+' '\n' | sed 's/^[[:space:]]*//; s/[[:space:]]*$//' | grep -v '^$' | sort | uniq -c | while read -r count theme; do
    if (( count > 6 && count < 10 )); then
        echo "$theme"
    fi
done > "data_analysis/medium_groups.txt"

echo "Пункт 3"
grep 'Computer Security' faculty_2.csv | grep 'Philosophy' | grep 'Biomedicine' > data_analysis/joined.csv

echo "Пункт 4"
cut -d',' -f1 faculty_2.csv | sed 's/^[[:space:]]*//; s/[[:space:]]*$//' | grep -v '^$' | sort --key 3,3 --key 2,2 --key 1,1 > data_analysis/sorted_names.txt