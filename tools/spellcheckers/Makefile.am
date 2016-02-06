## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# The current dir must be built first.
SUBDIRS = . fstbased listbased

#########################################
# BEGIN: Local processing
#
# Target template:
#
# generator-speller-gt-norm.hfst: generator-speller-gt-norm.tmp.hfst
#	build rules
#
# analyser-speller-gt-norm.xfst: analyser-speller-gt-norm.tmp.xfst
#	build rules

generator-speller-gt-norm.hfst: analyser-speller-gt-norm.tmp.hfst \
				$(top_builddir)/src/filters/remove-letter-dot-below.hfst   \
				$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.hfst   \
				$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.hfst   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.hfst            
	$(AM_V_HXFST)$(PRINTF) "read regex                                       \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.hfst\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.hfst\"   \
		.o. @\"$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.hfst\"   \
		.o. @\"$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.hfst\"   \
			;\n\
		save stack $@\n\
		quit\n" | $(HFST_XFST) -p $(VERBOSITY)

analyser-speller-gt-norm.hfst: analyser-speller-gt-norm.tmp.hfst \
				$(top_builddir)/src/filters/remove-letter-dot-below.hfst   \
				$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.hfst   \
				$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.hfst   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.hfst            
	$(AM_V_HXFST)$(PRINTF) "read regex                                       \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.hfst\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.hfst\"   \
		.o. @\"$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.hfst\"   \
		.o. @\"$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.hfst\"   \
			;\n\
		invert\n\
		save stack $@\n\
		quit\n" | $(HFST_XFST) -p $(VERBOSITY)

generator-speller-gt-norm.xfst: analyser-speller-gt-norm.tmp.xfst \
				$(top_builddir)/src/filters/remove-letter-dot-below.xfst   \
				$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.xfst   \
				$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.xfst   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.xfst            
	$(AM_V_XFST)$(PRINTF) "read regex                                        \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.xfst\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.xfst\"   \
		.o. @\"$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.xfst\"   \
		.o. @\"$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.xfst\"   \
			;\n\
		invert\n\
		save stack $@\n\
		quit\n" | $(XFST) $(VERBOSITY)

analyser-speller-gt-norm.xfst: analyser-speller-gt-norm.tmp.xfst \
				$(top_builddir)/src/filters/remove-letter-dot-below.xfst   \
				$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.xfst   \
				$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.xfst   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.xfst            
	$(AM_V_XFST)$(PRINTF) "read regex                                        \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.xfst\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.xfst\"   \
		.o. @\"$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.xfst\"   \
		.o. @\"$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.xfst\"   \
			;\n\
		save stack $@\n\
		quit\n" | $(XFST) $(VERBOSITY)

generator-speller-gt-norm.foma: analyser-speller-gt-norm.tmp.foma \
				$(top_builddir)/src/filters/remove-letter-dot-below.foma   \
				$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.foma   \
				$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.foma   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.foma            
	$(AM_V_XFST)$(PRINTF) "read regex                                        \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.foma\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.foma\"   \
		.o. @\"$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.foma\"   \
		.o. @\"$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.foma\"   \
			;\n\
		invert\n\
		save stack $@\n\
		quit\n" | $(FOMA) $(VERBOSITY)

analyser-speller-gt-norm.foma: analyser-speller-gt-norm.tmp.foma \
				$(top_builddir)/src/filters/remove-letter-dot-below.foma   \
				$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.foma   \
				$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.foma   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.foma            
	$(AM_V_XFST)$(PRINTF) "read regex                                        \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.foma\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.foma\"   \
		.o. @\"$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.foma\"   \
		.o. @\"$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.foma\"   \
			;\n\
		save stack $@\n\
		quit\n" | $(FOMA) $(VERBOSITY)

# END: Local processing
#########################################

include $(top_srcdir)/am-shared/tools-spellcheckers-dir-include.am
