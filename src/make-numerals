XFST = xfst


sms-num.fst: ../bin/sms-num.fst
../bin/sms-num.fst: sms-num.txt
	@echo
	@echo "*** Building $(notdir $@) ***" ;
	@echo
	$(XFST) -e "read lexc < $< " \
		-e "save stack   $@ " \
		-stop

