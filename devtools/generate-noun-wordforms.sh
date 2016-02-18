#!/bin/bash

# A short shell script to test word form generation for all continuation
# lexicons except the ones listed in the exception list.

######### USER Variables - change these to your liking: #########
# Codes for the word forms to be generated - list as many or few as needed:
morf_codes="+N+Sg+Nom \
            +N+Pl+Nom \
            +N+Sg+Ill \
            +N+Sg+Com \
            +N+Sg+Gen \
            +N+Pl+Acc \
            +N+Ess \
            +N+Par \
            +N+Der/Dim+N+Sg+Nom \
            +N+Sg+Nom+PxSg3 \
            +N+Sg+Loc+PxSg3 \
            +N+Sg+Acc+PxSg3 \
            +N+Ess+PxSg3"

# Lexicon source file for lexicons and lemmas:
#source_file=src/morphology/stems/N_sms2x.lexc
source_file=N-types_2016-02-17_01.regex

# Lexicons that should NOT be used to extract lemmas (egrep expression):
exception_lexicons="(flagK)"

# FST used for generation, MINUS suffix:
generator_file=src/generator-dict-gt-norm

# How many lemmas maximally for each lexicon:
lemmacount=10

# Specify path to $GTCORE - we don't use Autotools for these scripts:
gtcore=$GTCORE


################## DO NOT CHANGE BELOW HERE!!! ##################
source $gtcore/scripts/generate-wordforms-for-cont_lexes.sh \
        "$gtcore" \
        "$morf_codes" \
        "$source_file" \
        "$generator_file" \
        "$lemmacount" \
        "$exception_lexicons"
