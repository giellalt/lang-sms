# This is a makefile that builds the Skolt Sami morphological parser
# *****************************************************************


# This is a preliminary file that builds a Skolt Sami parser based upon
# xfst and not twolc.

# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon sms.save

isms.fst: ../bin/isms.fst
../bin/isms.fst: ../bin/sms.fst
	@echo
	@echo "*** Building the inverse isms.fst ***"
	@echo
	@printf "load ../bin/sms.save \n\
	invert net \n\
	save stack ../bin/isms.fst \n\
	quit \n" > ../../tmp/isms-fst-script
	@xfst < ../../tmp/isms-fst-script
	@rm -f ../../tmp/isms-fst-script


# This goal is to build the final analyser. It depends on all the files.

sms.fst: ../bin/sms.fst
../bin/sms.fst: ../bin/sms.save ../bin/caseconv.fst ../bin/tok.fst 
	@echo
	@echo "*** Building sms.fst ***" ;
	@echo
	@printf "read regex [[@\"../bin/sms.save\"] .o. \
	[@\"../bin/caseconv.fst\"]] ; \n\
	save stack ../bin/sms.fst \n\
	quit \n" > ../../tmp/sms-fst-script
	@xfst < ../../tmp/sms-fst-script
	@rm -f ../../tmp/sms-fst-script


# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > ../../tmp/caseconv-script
	@xfst < ../../tmp/caseconv-script
	@rm -f ../../tmp/caseconv-script


# Another goal is to build a preprocessor.This goal depends on tok.txt

tok.fst: ../bin/tok.fst
../bin/tok.fst: tok.txt
	@echo
	@echo "*** Building the tokenizer tok.fst ***" ;
	@echo
	@printf "source tok.txt \n\
	save stack ../bin/tok.fst \n\
	quit \n" > ../../tmp/tok-script
	@xfst < ../../tmp/tok-script
	@rm -f ../../tmp/tok-script


sms.save: ../bin/sms.save
../bin/sms.save: ../bin/xfst-sms.bin ../bin/sms-lex.save
	@echo
	@echo "*** Building the parser sms.save ***"
	@echo
	@printf "read regex [[@\"../bin/sms-lex.save\"] .o. \
	[@\"../bin/xfst-sms.bin\"]] ; \n\
	save stack ../bin/sms.save \n\
	quit \n" > ../../tmp/sms-save-script
	@xfst < ../../tmp/sms-save-script
	@rm -f ../../tmp/sms-save-script

# The first goal is to build sms-lex.save
# This goal depends on a bunch of lexicon files

sms-lex.save: ../bin/sms-lex.save
../bin/sms-lex.save: sms-lex.txt noun-sms-lex.txt adj-sms-lex.txt \
	adv-sms-lex.txt verb-sms-lex.txt closed-sms-lex.txt punct-sms-lex.txt \
	pp-sms-lex.txt
	@echo
	@echo "*** Building sms-lex.save ***" ;
	@echo
	printf "compile-source sms-lex.txt noun-sms-lex.txt \
	adj-sms-lex.txt verb-sms-lex.txt closed-sms-lex.txt \
	adv-sms-lex.txt pp-sms-lex.txt punct-sms-lex.txt \n\
	save-source ../bin/sms-lex.save \n\
	quit \n" > ../../tmp/sms-lex-save-script
	@lexc < ../../tmp/sms-lex-save-script
	rm -f ../../tmp/sms-lex-save-script

# The second goal is to build xfst-sms.bin
# This goal depends on xfst-sms.txt

xfst-sms.bin: ../bin/xfst-sms.bin
../bin/xfst-sms.bin: xfst-sms.txt
	@echo
	@echo "*** Building xfst-sms.bin ***" ;
	@echo
	@printf "source xfst-sms.txt \n\
	save stack ../bin/xfst-sms.bin \n\
	quit \n" > ../../tmp/xfst-sms-script
	@xfst < ../../tmp/xfst-sms-script
	@rm -f ../../tmp/xfst-sms-script

clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save


