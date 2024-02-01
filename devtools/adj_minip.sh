#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in sms:
# sh devtools/adj_minip.sh HUMO  | less
# sh devtools/adj_minip.sh hyeni 
# Only get the lemma you ask for:
# sh devtools/adj_minip.sh '^hyeni[:+]' 

LOOKUP=$(echo $LOOKUP)
GTLANGS=$(echo $GTLANGS)

PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/morphology/stems/A_sms2x.lexc | egrep $PATTERN | tr '+' ':' | cut -d ':' -f1>$L_FILE

P_FILE="test/data/testadjparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
      echo "${lemma}${form}" | $HLOOKUP $GTLANGS/lang-sms/src/fst/generator-gt-norm.hfstol # hfst
 done
 rm -f $L_FILE
done

