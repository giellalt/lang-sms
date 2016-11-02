## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# always build . last here, and tagsets have to be built after morphology
SUBDIRS = phonology morphology filters phonetics hyphenation orthography syntax transcriptions tagsets .

####### Automake targets: ########

# Define target variables first, before assigning to them:
GT_ANALYSERS=
GT_GENERATORS=

#### Local modifications in *fst processing: ####
####
#### Copy the fallback targets, and rename them to the desired targets. Then:
#### Replace the 'cp' command (Xerox) / Prepend the hfst-invert command (Hfst -
#### remember to move the $<) with whatever you need to complete
#### the processing to get the final target transducer.
#### Remember to add the dependencies as well.
#### Also make sure that HFST and Xerox processing are the same.
####
#### If you add new transducers to be built, you need to add them to the
#### relevant variable, e.g.:
####
#### if CAN_HFST
#### GT_GENERATORS+=generator-oahpa-gt-norm.hfst
#### endif
####
#### NB!!!! The HFST targets should get a hyphen after 'analyser'/'generator'
#### respectively, to make the local targets minimally different from and
#### slightly more specific than the fallback targets. This is to avoid warnings
#### about duplicate targets. That is, the local targets should looke like:
####
#### analyser-%.hfst: analyser-%.tmp.hfst
#### generator-%.hfst: generator-%.tmp.hfst

##################################################################
#### BEGIN: Add local processing instructions BELOW this line ####
##################################################################

########################################################
#### Add language-specific transducer targets here: ####

#### Xerox transducers:
if CAN_XFST
GT_ANALYSERS+=
GT_GENERATORS+=
endif # CAN_XFST

#### HFST transducers
if CAN_HFST
GT_ANALYSERS+=
GT_GENERATORS+=generator-dict-gt-norm.hfst
endif # CAN_HFST

#### FOMA transducers
if CAN_FOMA
GT_ANALYSERS+=
GT_GENERATORS+=
endif # CAN_FOMA

#################################################
#### Add language-specific build rules here: ####

# We need to add processing of language-specific tags in the analyser:
analyser-gt-desc.%: analyser-gt-desc.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/remove-norm-comp-tags.%             \
					filters/remove-modifier-letter-vertical-line.% \
					filters/remove-letter-dot-below.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"$<\"                                         \
			.o. @\"filters/remove-letter-dot-below.$*\" \
			.o. @\"filters/remove-modifier-letter-vertical-line.$*\"   \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# And also for the normative analyser (foma and hfst):
analyser-gt-norm.%: analyser-gt-norm.tmp.% \
					filters/remove-illegal-derivation-strings-flagbased.% \
					filters/insert-default-compounding-tags.% \
					filters/insert-default_left_compounding-tags.% \
					filters/block-illegal_compound-strings.%  \
					filters/split-CmpN-tags.% \
					filters/convert_to_flags-CmpNP-tags.% \
					filters/split-CmpNP-tags.% \
					filters/remove-modifier-letter-vertical-line.% \
					filters/remove-letter-dot-below.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/block-illegal_compound-strings.hfst\"       \
			.o. @\"filters/split-CmpN-tags.hfst\"                      \
			.o. @\"filters/insert-default_left_compounding-tags.hfst\" \
			.o. @\"filters/insert-default-compounding-tags.hfst\"      \
			.o. @\"filters/remove-illegal-derivation-strings-flagbased.$*\" \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$*\"            \
			.o. @\"filters/split-CmpNP-tags.$*\"                       \
			.o. @\"$<\"                                                \
			.o. @\"filters/remove-letter-dot-below.$*\"                \
			.o. @\"filters/remove-modifier-letter-vertical-line.$*\"   \
			;\n\
		 twosided flag-diacritics\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# The operation 'twosided flag-diacritics" crashes Xerox badly, so we do with
# a simpler, less restrictive normative fst when building with Xerox:
analyser-gt-norm.xfst: analyser-gt-norm.tmp.xfst \
					filters/remove-norm-comp-tags.xfst             \
					filters/remove-derivation-position-tags.xfst   \
					filters/remove-illegal-derivation-strings.xfst \
					filters/remove-modifier-letter-vertical-line.xfst \
					filters/remove-letter-dot-below.xfst
	$(AM_V_XFST)$(PRINTF) "read regex \
				@\"filters/remove-norm-comp-tags.xfst\"                \
			.o. @\"filters/remove-derivation-position-tags.xfst\"      \
			.o. @\"filters/remove-illegal-derivation-strings.xfst\"    \
			.o. @\"$<\"                                                \
			.o. @\"filters/remove-letter-dot-below.xfst\"              \
			.o. @\"filters/remove-modifier-letter-vertical-line.xfst\" \
			;\n\
		 save stack $@\n\
		 quit\n" | $(XFST) $(VERBOSITY)

# Special case for the disamb analyser, since it follows the same filename
# pattern as the raw fst:
analyser-disamb-gt-desc.%: analyser-disamb-gt-desc.tmp.% \
					filters/remove-modifier-letter-vertical-line.% \
					filters/remove-letter-dot-below.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"$<\"                                      \
			.o. @\"filters/remove-letter-dot-below.$*\" \
			.o. @\"filters/remove-modifier-letter-vertical-line.$*\"   \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# We need to add processing of language-specific tags in the generator:
define giella_generators
generator-gt-%.$(1): generator-gt-%.tmp.$(1) \
					 filters/remove-modifier-letter-vertical-line.$(1) \
					 filters/remove-letter-dot-below.$(1)
	$$(AM_V_XFST_TOOL)$$(PRINTF) "read regex \
				@\"$$<\"                                      \
			.o. @\"filters/remove-letter-dot-below.$(1)\" \
			.o. @\"filters/remove-modifier-letter-vertical-line.$(1)\"   \
			;\n\
		 $$(INVERT_XFST)$$(INVERT_FOMA)\
		 save stack $$@\n\
		 quit\n" | $$(XFST_TOOL)
endef
$(foreach fst,hfst xfst foma,$(eval $(call giella_generators,$(fst))))

# Do NOT apply the accent removal filters to the normative
# dictionary generator:
generator-dict-gt-norm.%: generator-dict-gt-norm.tmp.%
	$(AM_V_XFST_TOOL)$(PRINTF) "\
		 load stack $<\n\
		 $(INVERT_XFST)$(INVERT_FOMA)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)


##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

include $(top_srcdir)/am-shared/src-dir-include.am
