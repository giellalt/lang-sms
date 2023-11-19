#!/usr/bin/perl -w
use utf8 ;

# Simple script to convert adhoc entries in *_newwords.lexc to *_sms2x.xml
# Usage:
# 1. Convert the *_newwords.lexc to a tabseparated list of
#    lemma POS stem contlex trans, probably as follows (exchange "verbs" with other POS)
#    grep ";" src/fst/stems/verbs_newwords.lexc|tr -s ' ' | tr '[+: ]' '\t' | tr -d '[;"]' > misc/xx_verbs.csv
# 2. cat misc/xx_verbs.csv | perl src/scripts/newwords-to-xml.pl > misc/xx_verbs.xml
# 3. Check the output and eventually change the script below
# 4. Add the entries from misc/xx_verbs.xml to src/fst/stems/V_sms2x.xml and
# 5. Remove the converted verbforms from verbs_newwords.lexc

print STDOUT "<r>\n";

while (<>) 
{
	chomp ;

	my ($lemma, $POS, $stem, $contlex, $trans) = split /\t/ ;
	print STDOUT "<e src=\"\">\n";
	print STDOUT "   <map sml_ids=\"\"/>\n";
	print STDOUT "   <lg>\n";
	print STDOUT "     <l pos=\"$POS\">$lemma</l>\n";
	print STDOUT "     <stg>\n";
	print STDOUT "       <st Contlex=\"$contlex\">$stem</st>\n";
	print STDOUT "     </stg>\n";
	print STDOUT "   </lg>\n";
	print STDOUT "     <sources>\n";
	print STDOUT "       <book/>\n";
	print STDOUT "     </sources>\n";
	print STDOUT "   <mg relId=\"0\">\n";
	print STDOUT "     <semantics>\n";
	print STDOUT "     </semantics>\n";
	print STDOUT "     <tg xml:lang=\"fin\">\n";
	print STDOUT "       <t pos=\"$POS\">$trans</t>\n";
	print STDOUT "     </tg>\n";
	print STDOUT "   </mg>\n";
	print STDOUT "</e>\n";

}

print STDOUT "</r>\n";


