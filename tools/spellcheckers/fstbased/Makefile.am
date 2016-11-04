## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# The current dir must be built after the filters, but before the rest.
SUBDIRS = filters . desktop mobile

### BEGIN: Local build rules: *.hfst: *.tmp.hfst ###

# Remove improper derivations by turning the DerN tags into flag
# diacritics blocking wrong order derivations.
#
# Remove ungrammatical compounds by turning tags into flags:
# 1. Insert tags for default compounding
# 2. Split multiple tags into separate paths
# 3. Convert tags to flags
# 4. Make flags two-sided
generator-fstspeller-gt-norm.hfst: \
		generator-fstspeller-gt-norm.tmp.hfst \
		filters/insert-default-compounding-tags.hfst \
		filters/insert-default_left_compounding-tags.hfst \
		filters/block-illegal_compound-strings.hfst  \
		filters/remove-illegal-derivation-strings-flagbased.hfst \
		filters/split-CmpN-tags.hfst \
		filters/convert_to_flags-CmpNP-tags.hfst \
		filters/split-CmpNP-tags.hfst
	$(AM_V_HXFST)$(PRINTF) "\
		read regex                                                        \
			@\"filters/block-illegal_compound-strings.hfst\"              \
		.o. @\"filters/split-CmpN-tags.hfst\"                             \
		.o. @\"filters/insert-default_left_compounding-tags.hfst\"        \
		.o. @\"filters/insert-default-compounding-tags.hfst\"             \
		.o. @\"filters/remove-illegal-derivation-strings-flagbased.hfst\" \
		.o. @\"filters/convert_to_flags-CmpNP-tags.hfst\"                 \
		.o. @\"filters/split-CmpNP-tags.hfst\"                            \
		.o. @\"$<\"                                                       \
		; \n\
		 twosided flag-diacritics\n\
		 save stack $@\n\
		 quit\n" | $(HFST_XFST) -p $(VERBOSITY)

#### END: Local build rules: *.hfst: *.tmp.hfst ####

include $(top_srcdir)/am-shared/tools-spellcheckers-fstbased-dir-include.am
