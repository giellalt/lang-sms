## Process this file with automake to produce Makefile.in

## Copyright (C) 2011 Samediggi

## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Set this to name of lexc file containing Multichar_Symbols and LEXICON Root
GT_LEXC_ROOT=root.lexc

# Set this to the names of all regular lexc source files:
GT_LEXC_SRCS_L1_L2=\
				root.lexc \
				stems/exceptions.lexc \
				stems/punctuation.lexc \
				stems/adjectives_newwords.lexc \
				stems/adpositions_newwords.lexc \
				stems/adverbs_newwords.lexc \
				stems/conjunctions_newwords.lexc \
				stems/nouns_newwords.lexc \
				stems/particles_newwords.lexc \
				stems/pronouns_newwords.lexc \
				stems/propernouns_newwords.lexc \
				stems/verbs_newwords.lexc \
				affixes/adjectives.lexc \
				affixes/adverbs.lexc \
				affixes/nouns.lexc \
				affixes/pronouns.lexc \
				affixes/propernouns.lexc \
				affixes/verbs.lexc \
				compounding.lexc \
				clitics.lexc

#
#
#				stems/adjectives.lexc \
#				stems/adpositions.lexc \
#				stems/adverbs.lexc \
#				stems/conjunctions.lexc \
#				stems/interjections.lexc \
#				stems/nouns.lexc \
#				stems/numerals.lexc \
#				stems/particles.lexc \
#				stems/pronouns.lexc \
# 				stems/sms-propernouns.lexc \
#				stems/subjunctions.lexc \
#				stems/verbs.lexc 

# If you are building an error-detecting L2 analyser, specify the lexc files
# that differ between the regular L1 and the L2 analysers below, in L1 and
# L2 respectively. L2 files must end in "*-L2.lexc". See SME for an example.
L1=

L2=

GT_LEXC_SRCS=\
			$(GT_LEXC_SRCS_L1_L2) \
			$(L1)

GT_LEXC_L2_SRCS=\
			$(GT_LEXC_SRCS_L1_L2) \
			$(L2)

# Set this to the names of all generated lexc files, if any
GENERATED_LEXC_SRCS=\
			 $(srcdir)/stems/A_sms2x.lexc     \
			 $(srcdir)/stems/N_sms2x.lexc     \
			 $(srcdir)/stems/Pron_sms2x.lexc     \
			 $(srcdir)/stems/V_sms2x.lexc     

# Set this to the names of all source xml files, if any
GT_XML_SRCS=\
			 stems/A_sms2x.xml     \
			 stems/N_sms2x.xml     \
			 stems/Pron_sms2x.xml     \
			 stems/V_sms2x.xml     

# Define any additional sources here (compiled on their own, or just included
# in the distro):
GT_LOCAL_SRCS=

### BEGIN: Local processing: ###


### END: Local processing: ###

include $(top_srcdir)/am-shared/src-morphology-dir-include.am

# vim: set ft=automake:
