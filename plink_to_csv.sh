#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Too few arguments."
  echo "Usage: $0 outfile plinkfile1 .. plinkfileN"
  exit
fi

outfile=$1

for infile in ${BASH_ARGV[*]}; do
  if [ $infile != $outfile ]; then
    header=$(head -n1 $infile)
    lines=$(expr $(wc -l $infile | awk '{print $1}') - 1)
    tail -n ${lines} $infile >> $outfile
  fi
done

if [ "${header: -1}" == " " ]; then
  len=$(expr ${#header} - 1)
  header=$(expr substr "$header" 1 $len)
fi

sed -i 1i\\"$header" $outfile
perl -p -i -e 's/^\s+//' $outfile
perl -p -i -e 's/ +/,/g' $outfile
