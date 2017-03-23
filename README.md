# plink_to_csv.sh
A small Bash script to convert multiple files generated by Plink and concatenate them into a single CSV.

The script assumes that the headers for all files are the same.  (Otherwise why would you be combining them?)

This will work for any fixed-width space separated values, but I thought people would be specifically searching for "plink."

## Installation
1. Download the script:

   `wget https://raw.githubusercontent.com/marcteale/plink_to_csv/master/plink_to_csv.sh`

2. Make it executable:

   `chmod +x plink_to_csv.sh`

## Usage
Specify files:

`./plink_to_csv.sh shinynewcsv.csv plinkfile1 plinkfile2 .. plinkfileN`

Glob:

`./plink_to_csv.sh shinynewcsv.csv plinkfiles*`
