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

generator-speller-gt-norm.%: analyser-speller-gt-norm.tmp.% \
				$(top_builddir)/src/filters/remove-letter-dot-below.%   \
				$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.%   \
				$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.%   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.%            
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex                                    \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.$*\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.$*\"   \
		.o. @\"$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.$*\"   \
		.o. @\"$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.$*\"   \
			;\n\
		 $(INVERT_XFST)$(INVERT_FOMA)\
		save stack $@\n\
		quit\n" | $(XFST_TOOL)

analyser-speller-gt-norm.%: analyser-speller-gt-norm.tmp.% \
				$(top_builddir)/src/filters/remove-letter-dot-below.%   \
				$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.%   \
				$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.%   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.%            
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex                                    \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.$*\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.$*\"   \
		.o. @\"$(top_builddir)/src/filters/replace-iterated-consonant-with-palatal-and-consonant.$*\"   \
		.o. @\"$(top_builddir)/src/filters/replace-vowel-iteration-with-length-for-norm.$*\"   \
			;\n\
		$(INVERT_HFST)\
		save stack $@\n\
		quit\n" | $(XFST_TOOL)

# END: Local processing
#########################################

include $(top_srcdir)/am-shared/tools-spellcheckers-dir-include.am
