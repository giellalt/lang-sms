#!/bin/bash

# A short shell script to test word form generation for all continuation
# lexicons except the ones listed in the exception list.

######### USER Variables - change these to your liking: #########
# Codes for the word forms to be generated - list as many or few as needed:
morf_codes="+V+Inf \
            +V+Der/mõš+N+Sg+Nom \
            +V+Der/mmuš+N+Sg+Nom \
            +V+Der/NomAg+N+Sg+Nom"
#            +V+Ind+Prs+Sg3 
#            +V+Ind+Prs+Pl3 
#            +V+Ind+Prt+Pl3 
#            +V+Ind+Prs+ConNeg 
#            +V+Pot+Sg3 
#            +V+Cond+Sg3 
#            +V+Imprt+Sg3 
#            +V+Imprt+ConNegII 
#            +V+Imprt+Pl3 
#            +V+Der/škueʹtted+V+Inf

# Lexicon source file for lexicons and lemmas:
source_file=src/morphology/stems/V_sms2x.lexc

# Lexicons that should NOT be used to extract lemmas (egrep expression):
exception_lexicons="(flagK)"

# FST used for generation, MINUS suffix:
generator_file=src/generator-dict-gt-norm

# How many lemmas maximally for each lexicon:
lemmacount=1000

# Specify path to the dir containing the script used for generation:
script_dir=$GTCORE/scripts

################## DO NOT CHANGE BELOW HERE!!! ##################
source $script_dir/generate-wordforms-for-cont_lexes.sh \
        "$giella_core" \
        "$morf_codes" \
        "$source_file" \
        "$generator_file" \
        "$lemmacount" \
        "$exception_lexicons"
