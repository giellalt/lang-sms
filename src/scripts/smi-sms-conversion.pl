#!/usr/bin/perl -w
#
# smi-sms-conversion.pl
# Convert names in the SMI propernoun lexicon to sms.
# $Id: smi-sms-conversion.pl 91035 2014-03-24 22:56:01Z sjur $

use strict;
use utf8;
use feature 'unicode_strings';
BEGIN {
       $| = 1;
       binmode(STDIN, ':encoding(UTF-8)');
       binmode(STDOUT, ':encoding(UTF-8)');
}
use open qw( :encoding(UTF-8) :std );

while(<>) {
	# Continuation lexicon substitutions:
#	s/ C-FI-NEN/nen LONDON/g ;
#	s/SUND/BERN/g ;
#	s/HEIM/BERN/g ;
	s/(NIKOSIIJA|ACCRA|SIJTE|HAWAII)(\-malsur)/PROP_TRUUBA$2/g ;
	s/(NIKOSIIJA|ACCRA|SIJTE|HAWAII)(\-ani)/PROP_TRUUBA$2/g ;
	s/(NIKOSIIJA|ACCRA|SIJTE|HAWAII)(\-fem)/PROP_TRUUBA$2/g ;
	s/(NIKOSIIJA|ACCRA|SIJTE|HAWAII)(\-mal)/PROP_TRUUBA$2/g ;
	s/(NIKOSIIJA|ACCRA|SIJTE|HAWAII)(\-obj)/PROP_TRUUBA$2/g ;
	s/(NIKOSIIJA|ACCRA_MWE|SIJTE|HAWAII)(\-plc)/PROP_TRUUBA$2/g ;
	s/(NIKOSIIJA|ACCRA_MWE|SIJTE|HAWAII)(\-org)/PROP_TRUUBA$2/g ;
	s/(NIKOSIIJA|ACCRA|SIJTE|HAWAII)(\-org)/PROP_TRUUBA$2/g ;
	s/(NIKOSIIJA|ACCRA|SIJTE|HAWAII)(\-plc)/PROP_TRUUBA$2/g ;
	s/(NIKOSIIJA|ACCRA|SIJTE|HAWAII)(\-sur)/PROP_TRUUBA$2/g ;
	s/^([^+]*\+)/$1N+Prop+/g ;
#	s/BALAK/LONDON/g ;
#	s/SKANIK/SULLOT/g ;
#	s/RONDANE-LOAN/BERN/g ;
#	s/BETFAGE/BERN/g ;
#	s/DUORTNUS/BERN/g ;	
#	s/DUBAI/BERN/g ;
#	s/BETFAGE/BERN/g ;
	s/fkagK/K/g ;
# loanwords with compound border over identical vowels
	s/Hjarteelva/Hjarte-elva/g ;
	s/Indreeide/Indre-eide/g ;
	s/Lilleeng/Lille-eng/g ;
	s/Simleelva/Simle-elva/g ;
#	removing short names with CmpNP/None till there is a filter for them
    s/^.*CmpNP/!/ ; 
    s/^.*ProperNoun-smi-nocomp/!/ ; 


# names with Skolt Sami inflection
	s/^Bahrain\+/!Bahrain\+/g;
	s/^Benin\+/!Benin\+/g;
	s/^Bhutan\+/!Bhutan\+/g;
	s/^Egypt\+/!Egypt\+/g;
	s/^Evangelium\+/!Evangelium\+/g ;
	s/^Jamaica\+/!Jamaica\+/g;
	s/^Japan\+/!Japan\+/g;
	s/^Kamerun\+/!Kamerun\+/g;
	s/^Kazakstan\+/!Kazakstan\+/g;
	s/^Libanon\+/!Libanon\+/g;
	s/^Liechtenstein\+/!Liechtenstein\+/g;
	s/^Kirgisstan\+/!Kirgisstan\+/g;
	
# changing to WG inflection
	s/^Valle ACCRA/Valle MOKKE/g ;

# sme special symbols
#	s/\^//g ;
#	s/á /á5 /g ; # final á would otherwise be a in smn
	s/b9/b/g ;
	s/e7/e/g ;
	s/e9/e/g ;
	s/d9/d/g ;
	s/g8/g/g ;
	s/g9/g/g ;
	s/h7/h/g ;
	s/h8/h/g ;
	s/h9/h/g ;
	s/i7/i/g ;
	s/j9/j/g ;
	s/k9/k/g ;
	s/m8/m/g ;
	s/m9/m/g ;
	s/n8/n/g ;
	s/n9/n/g ;
	s/o7/o/g ;
	s/o9/o/g ;
	s/p9/p/g ;
	s/r9/r/g ;
	s/s9/s/g ;
	s/š9/š/g ;
	s/t9/t/g ;
	s/u6/u/g ;
	s/u7/u/g ;
	s/z9/z/g ;
	s/ž9/ž/g ;
	s/æđ/æ/g ;
	s/æ9/æ/g ;
	s/'7 /' /g ;

#	s/tt /tt5 /g ;


	# SMJ escape char insertion:
#	s/ss /ss9 /g ;
#	s/st /st9 /g ;

	# Substitutions due to orthographic differences between SMJ and SME:
#	s/čč/ttj/g ;
	# Andreevič -> Andreevitj:
#	s/č/tj/g ;

	my $line = $_;

	print $line;
}

