#!/bin/bash
#
# A simple shell script to automatically update files from the old to the new
# infra, until sme is moved completely.

# Variables:

OLDSRCDIR=$GTHOME/words/dicts/sms2X/src
NEWSRCDIR=$GTHOME/langs/sms/src/morphology/stems

# morphology/ dir files
echo "*** Copying morphology ***"

cp -f $OLDSRCDIR/a_sms2X.xml	         $NEWSRCDIR/adjectives.xml
cp -f $OLDSRCDIR/adp_sms2X.xml	         $NEWSRCDIR/adpositions.xml
cp -f $OLDSRCDIR/adv_sms2X.xml	         $NEWSRCDIR/adverbs.xml
cp -f $OLDSRCDIR/cc_sms2X.xml	         $NEWSRCDIR/conjunctions.xml
cp -f $OLDSRCDIR/cs_sms2X.xml	         $NEWSRCDIR/subjunctions.xml
cp -f $OLDSRCDIR/interj_sms2X.xml        $NEWSRCDIR/interjections.xml
cp -f $OLDSRCDIR/n_sms2X.xml	         $NEWSRCDIR/nouns.xml
cp -f $OLDSRCDIR/pro_sms2X.xml	         $NEWSRCDIR/pronouns.xml
cp -f $OLDSRCDIR/v_sms2X.xml	         $NEWSRCDIR/verbs.xml

echo "*** Now, the xml files from sms2X/src have been copied to stems/ ***"

