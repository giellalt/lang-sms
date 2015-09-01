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

generator-speller-gt-norm.hfst: generator-speller-gt-norm.tmp.hfst \
				$(top_builddir)/src/filters/remove-letter-dot-below.hfst   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.hfst            
	$(AM_V_HXFST)$(PRINTF) "read regex                                       \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.hfst\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.hfst\"   \
			;\n\
		 save stack $@\n\
		 quit\n" | $(HFST_XFST) $(VERBOSITY)

analyser-speller-gt-norm.xfst: analyser-speller-gt-norm.tmp.xfst \
				$(top_builddir)/src/filters/remove-letter-dot-below.xfst   \
				$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.xfst            
	$(AM_V_XFST)$(PRINTF) "read regex                                        \
			@\"$<\"                                                          \
		.o. @\"$(top_builddir)/src/filters/remove-modifier-letter-vertical-line.xfst\" \
		.o. @\"$(top_builddir)/src/filters/remove-letter-dot-below.xfst\"   \
			;\n\
		 save stack $@\n\
		 quit\n" | $(XFST) $(VERBOSITY)



# END: Local processing
#########################################

include $(top_srcdir)/am-shared/tools-spellcheckers-dir-include.am
