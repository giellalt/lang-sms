This file is mostly for communicating current todos and questions; proper documentation should be written in http://giellatekno.uit.no/doc/dicts/SkoltSaami2X.html

===

TODO MR
update documentation at http://giellatekno.uit.no/doc/dicts/SkoltSaami2X.html

===

OLD

QESTION
1.1
<lexicon/>
appears to contain multiword content corresponding to single word source:
<e meta="04">
      <lg>
         <l pos="v" source="ZMN">njikkšted</l>
         <stg>
            <st Contlex=""/>
         </stg>
      </lg>
      <mg>
         <lexicon xml:lang="deu">Schluckauf haben</lexicon>
         <tg xml:lang="fin">
            <t pos="v">hikotella</t>
         </tg>
  …
     </mg>
</e>
Shouldn’t this be:
<tg xml:lang=”deu">
            <t pos=”V">Schluckauf haben</t>
         </tg>

ANSWER/DONE MR
yes, in this case it is a mwe-translation into German and a "lexicon" is not needed here.

QUESTION JR
1.2
   <e meta="01">
      <lg>
         <l pos="v">aassâd</l>
         <stg>
            <st Contlex=""/>
         </stg>
      </lg>
      <mg>
         <semantics>
            <sem class="HOUSE">DWELLING</sem>
            <sem class="HUMAN">FAMILY</sem>
         </semantics>
         <lexicon xml:lang="eng">live in a place</lexicon>
         <lexicon xml:lang="rus">жить в каком-либо месте</lexicon>
         <tg xml:lang="eng">
            <t pos="v">live</t>
         </tg>
         <tg xml:lang="fin">
            <t pos="v">asua</t>
         </tg>
         <tg xml:lang="rus">
            <t pos="v">жить</t>
         </tg>
…
</mg>
</e>
Should these be reflected somehow within the ”tg” element?
         <tg xml:lang="eng">
            <t pos="v">live</t>
	<re>somewhere</re>
         </tg>

ANSWER MR
I think, perhaps, I have only "played" with the lexicon-field here. "to live" is enough of a translation, it already means "to live in a place or somewhere".

For now I would just leave the lexicon-content as it is (except such obvious corrections as in 1.1. above) and think more about a better integration during the continuing work with the database. We do not need the lexicon-data now and can simply ignore it.

However, what the lexicon-data could be usefull for in the future is to serve as a pattern for monolingual Skolt Saami lexicon, if Skolt Saami writers themselves are interested to create one.

QEUSTION
2. 
ANOTHER ELEMENT:
   <e meta="04">
      <lg>
         <l pos="v">põõssâd</l>
         <stg>
            <st Contlex=""/>
         </stg>
         <infl>
            <form gloss="3pl.prs">pâʹsse</form>
         </infl>

Should the gloss reflect our GT usage?
         <infl>
            <form gloss=”Ind.Prs.Pl3">pâʹsse</form>
         </infl>

The forms that are really good to get for verbs might include

            <form gloss=”Ind.Prs.ConNeg">silttâd</form>

ANSWER MR
The info in <infl> will become completely obsolete once we have worked more on the FST. I had the info there because it helped me learning more about Skolt Saami morphology. I would suggest deleting it for all lemmas which have already complete paradigms produced by the FST.

QUESTION JR
4.
I talked to Heli about the feed for ped. 
What shall we do when there are more than 1 <t/> elements present:
         <tg xml:lang="eng">
            <t pos="v">produce</t>
            <t pos="v">make</t>
         </tg>

(a) simply use ordering:
         <tg xml:lang="eng">
            <t pos="v">make</t>
            <t pos="v">produce</t>
         </tg>
(b) introduce the attribute and value  stat="pref"
         <tg xml:lang="eng">
            <t pos="v">produce</t>
            <t pos="v" stat="pref">make</t>
         </tg>

ANSWER MR
Ciprian needs to help here. If I recall it right, we did not want to use state="pref", but only state="dispref" (or something) if one those forms is indeed disprefered. But I am completely open to your (and Ciprian's and Heli's) suggestions how to do this better in the future.


========================================
cleanup of sms-sjd2X data before merging
========================================

1. was genau bedeutet ~ und was ist ihr Skopus?

~ in <c name="Skolt"> bedeutet "Variant lemma"
Skopus ist das Lemma

 ==> DONE

~ in <c name="Skolt_Cyr"> bedeutet "Variant der kyrillischen Transliteration des Lemmas"
Jedes Lemma mit Varianten müsste eine ebensolche Anzahl von Varianten in der Transliteration haben

~ in allen anderen Feldern (z.B. <c name="GramInfo_Skolt">) bitte ignorieren. Diese Info wird nicht gebraucht. (Grammatikinfo bekommen wir später aus dem FST.)

===

2. 

| in <c name="Skolt"> trennt den unvollständigen Teil von Varianten eines Lemmas ab
in  <c name="Skolt_Cyr"> ist das dann auch wieder gespiegelt

z.B. <c name="Skolt">loonna|n,-d</c>
      <c name="Skolt_Cyr">ло̄ннa|н,-д</c>
 ==> DONE for <c name="Skolt"></c>
bedeutet

<c name="Skolt">loonnan</c>
      <c name="Skolt_Cyr">ло̄ннaн</c>
<c name="Skolt">loonnad</c>
      <c name="Skolt_Cyr">ло̄ннaд</c>

| in allen anderen Felder (z.B. <c name="Finnish">luona|ni,-si, luota|ni,-si</c>) bitte ignorieren. Diese Info wird nicht gebraucht. (Die finnische Übersetzung ist viel besser in Jacks Dateien).

===

3. , (Komma) kommt im Lemma-Feld außer bei 2.) nur noch einmal vor:

<c name="Skolt">lettar liter (AmE), litre (BrE)</c>
==>
<c name="Skolt">lettar</c>
<c name="English"/>liter (AmE), litre (BrE)</c>

Ich kann es in der Quelldatei korrigieren.

, (Komma) in allen anderen Felder kann ignoriert werden. Es gibt hier keine Regeln.
 ==> DONE
===

4. für ( oder ) (Klammern) in <c name="Skolt"> gibt es nur sehr wenige Instanzen. Am einfachsten wäre das manuell in der Quelldatei zu korrigieren.

Klammern in den anderen Feldern sind erstmal zu ignorieren.

 - übrig bleiben jetzt solche Sachen wie

<c name="Skolt">čââʹlmteʹm(es)</c>

wobei die nicht eingeklammerte Form wie folgt in die GramInfo verschoben werden soll (es handelt sich um die attributive Adjektivform)

<c name="Skolt">čââʹlmteʹm</c>
<c name="GramInfo_Skolt">čââʹlmteʹm(es)</c>
 ==> DONE

=====================
 - TODO:
  1. systematic check of synonyms and variants vs. lemma
     if sORv ends or starts with DASH and lemma not
     ==> filter and send to Jack for manual correction 

  2. systematic check of the inconsistent attr-marking:
     sometimes as "(#STRING)", sometimes as "STRING (attr.)"

=======
merging: later, when the overlapping has been done
=======

1. check overlap between sms-sjd2X and sms2X_src
   ==> DONE 

2. check the overlap between Michael's and Jack's data
   ==> DONE
   - there are 6514 entries in the free part
   - there are 8416 entries in the fin2ms part that can be merged with the free data set

3. split Jack's data into open and closed based on the overlap check
   ==> DONE

4. unified data: put together data set in different formats for the
   ease of merging work
   ==> DONE
 
5. merging: semi-manually 
  ==> TODO

ID legend for the current sms data:

(a) first data set used at Giellatekno: gt_POS_NUMBER
    <e id="gt_A_70">

(b) Michael's data in Filemakes format: fm_NUMBER
    <e id="fm_28">

(c) Jack's data from Satu Moshnikoff list: sml_NUMBER
    <e id="sml_34083">


===================================
Todo: manual check by Jack (still waiting for clarification)
 - please correct them or provide the information needed in this file
===================================
1. Why kind of separator is ';'?
JR. The first reaction I got for this word pair separated by a semicolon, was that the ones on the right of the semicolon were clearly Finnish loan words.
1.1
<l_syn>čiõlǥeed; seʹlvted</l_syn>

   <e id="sml_1968">
      <p id="1">21761</p>
      <p id="2">selvittää</p>
      <p id="3"/>
      <p id="4"/>
      <p id="5">deegglõič</p>
      <p id="6" syn="čiõʹlǧǧeed, čiõlǥeed; seʹlvted, seʹlvveed ~ seʹlvvjed">čiõlggeed</p>
      <p id="7"/>
      <p id="8"/>
      <p id="9"/>
      <p id="10"/>
      <p id="11"/>
      <p id="12"/>
      <p id="13">verbi</p>
      <p id="14"/>
      <p id="15"/>
      <p id="16"/>
      <p id="17">800</p>
   </e>

1.2
JR. Derivations of the previous verbs
<l_syn>čiõlǥumuš; seʹlvtumuš</l_syn>

   <e id="sml_1979">
      <p id="1">21759</p>
      <p id="2">selvittäminen</p>
      <p id="3"/>
      <p id="4"/>
      <p id="5">šumugglõič</p>
      <p id="6" syn="čiõlǥumuš; seʹlvtumuš">čiõlggumuš</p>
      <p id="7"/>
      <p id="8">#NAME?</p>
      <p id="9">#NAME?</p>
      <p id="10"/>
      <p id="11"/>
      <p id="12"/>
      <p id="13"/>
      <p id="14"/>
      <p id="15"/>
      <p id="16"/>
      <p id="17">400</p>
   </e>

1.3

<l_syn>mâʹmmet; di mâʹmmet di mâʹmmet</l_syn>

   <e id="sml_27100">
      <p id="1">27993</p>
      <p id="2">verran: sen ja sen verran</p>
      <p id="3"/>
      <p id="4"/>
      <p id="5">temmʹât</p>
      <p id="6" syn="mâʹmmet; di mâʹmmet di mâʹmmet">tâʹmmet tâʹmmet</p>
      <p id="7"/>
      <p id="8"/>
      <p id="9"/>
      <p id="10"/>
      <p id="11"/>
      <p id="12"/>
      <p id="13"/>
      <p id="14"/>
      <p id="15"/>
      <p id="16"/>
      <p id="17">1000</p>
   </e>

2. What is the role of the question mark here?
2.1
JR. Here the question mark indicates that the word must still be confirmed.
<l_syn>kåʹllruõss ?</l_syn>

   <e id="sml_15295">
      <p id="1">20983</p>
      <p id="2">rätvänä</p>
      <p id="3"/>
      <p id="4">Potentilla erecta</p>
      <p id="5">ssʹäärmmrõusttsõljllen</p>
      <p id="6" b_info="(-rääʹzz, -rässa)" syn="kåʹllruõss ?">nelljlõsttsuõrmmrääʹss</p>
      <p id="7"/>
      <p id="8"/>
      <p id="9"/>
      <p id="10"/>
      <p id="11"/>
      <p id="12"/>
      <p id="13">kasvi</p>
      <p id="14"/>
      <p id="15"/>
      <p id="16"/>
      <p id="17">1.113</p>
   </e>

2.2
nõđđad ?
JR. Word form has to be checked
   <e id="sml_16386">
      <p id="1">27600</p>
      <p id="2">varttaa</p>
      <p id="3">kirves, puukko tms.</p>
      <p id="4"/>
      <p id="5">deeđđõn</p>
      <p id="6" var="nõđđad ?">nõđđeed</p>
      <p id="7"/>
      <p id="8"/>
      <p id="9"/>
      <p id="10"/>
      <p id="11"/>
      <p id="12"/>
      <p id="13">verbi</p>
      <p id="14"/>
      <p id="15"/>
      <p id="16"/>
      <p id="17">800</p>
   </e>

3. What is the role of '- ' here?
JR. This appear to be another issue for correction. čiõkkâm- combines with koontâr, but this does not explain the presence of a Finnish word.
<l_syn>čiõkkâm- hautautua</l_syn>

   <e id="sml_33898">
      <p id="1">2708</p>
      <p id="2">hautaustoimisto</p>
      <p id="3"/>
      <p id="4"/>
      <p id="5">râtnookmeeddʹuä</p>
      <p id="6"
         b_info="(-konttâr, -konttra)"
         syn="čiõkkâm- hautautua (esine)">äuʹddeemkoontâr</p>
      <p id="7"/>
      <p id="8"/>
      <p id="9"/>
      <p id="10"/>
      <p id="11"/>
      <p id="12">teâddjed</p>
      <p id="13"/>
      <p id="14"/>
      <p id="15"/>
      <p id="16"/>
      <p id="17">1.2</p>
   </e>

4. What about this string 'juʹna - leʹbe'?
JR. This is syntactic. The bar indicates intermittent text.
   <e id="sml_11636">
      <p id="1">5012</p>
      <p id="2">joko - tai</p>
      <p id="3"/>
      <p id="4"/>
      <p id="5">ebʹel</p>
      <p id="6" syn="juʹna - leʹbe">leʹbe - avi</p>
      <p id="7"/>
      <p id="8"/>
      <p id="9"/>
      <p id="10"/>
      <p id="11"/>
      <p id="12"/>
      <p id="13"/>
      <p id="14"/>
      <p id="15"/>
      <p id="16"/>
      <p id="17">1000</p>
   </e>

========================
===PoS tagging in MWE===
Comment from __Jack__ (as svn log r108375):
There are two issues that have not been dealt with yet: 
 1. What would be an abbreviation for _long form_, i.e. Abbr is to Abbreviation what Xxx is to Long form. 

_Ciprian_:
 - abbr is not a pos 
 - there are many ways to code the relation between a normal (=long) form and its abbreviation(s)
 - I propose this one (which I partially changed in the data):

         <lg>
            <l pos="Conj::Adv::Adv" abbr="dno">da nuʹtt ooudâs</l>
         </lg> 
            <tg xml:lang="deu">
               <t pos="Conj::Adv::Adv" abbr="usw.">und so weiter</t>
            </tg>

         <lg>
            <l pos="N" abbr="mn">mn_LONG-FORM</l>
         </lg> 
            <tg xml:lang="fin">
               <t pos="N" abbr="ov">opintoviikko</t>
            </tg>

         <lg>
            <l pos="N" abbr="mâ">mâ_LONG-FORM</l>
         </lg>
            <tg xml:lang="fin">
               <t pos="N" abbr="ti">tiistai</t>
            </tg>

         <lg>
            <l pos="N" abbr="č">čiâss</l>
         </lg>

As you can see, I also show how to model in an appropriate way the pos value of multiword expressions.
Unfortunately, I didn't have time to change it for, say, sme lexical material in a systematic way,
but I would really appreciate if you would heed my advice on mwe modeling.

By the way, this abbr modeling makes Michael's 
         <mg>
            <lexicon xml:lang="sms">da nuʹtt ooudâs</lexicon>
		.................
         </mg>
for such entries superfluous.

MR: I would like to suggest one improvement in the PoS tagging of multiword expressions. Ciprians model accounts only for the single parts of speech in the multiword expression, but it does not tell what kind of syntactic constituent the whole expression represents:
<l pos="Adv::A">very good</l> (Ciprian)
vs.
<l pos="A(Adv::A)">very good</l> (Micha)
Actually, the tag "A" for the whole complex constituent I find even more important than the tags for the single simple constituents, because "A" is what the whole multiword expression stands for in syntactic structure. (In principle, once our FST/CG automata work better, we can let them analyze the single simple constituents automatically.)
CG: No, this is not 'more important', both have their importance on different levels.
The abstract form of the pos-values for MWE is then (I just 
wanted to use 'very good' as example but I realized that I wouldn't count
this string as MWE):
<l pos="SYNTACTIC-FUNCTION-AS-A-WHOLE(POS-1::POS-2::POS-3)">STRING_1 STRING_2 STRING_3</l>

for instance:
<l pos="Coord_Last(CC::Adv::Adv)" abbr="dno">da nuʹtt ooudâs</l>

Moreover, this is also a uniform solution for pseudo-pos values
"S", which are used by Michael to mark whole sentences such in
the sjd2X.xml file
<t type="idiom" pos="S">Горькое житьё, да надо дальше жить.</t>

The pattern for a sentence or a clause is
<l pos="SENT(POS_1::POS_2::POS_3::PUNCT)">Word_1 word_2 word_3.</l>

And it goes without saying that a subcategorization of the sentence as idiom
is not problem at all.

My argumentation aganst a simple 'mwe' or 'phrase' is that on an abstract
level every clause, every sentence, even paragraphs, or whole chapters
are multiword expressions. Hence, just putting this tag on a sequence of
words doesn't say too much.

As for Michael's "(In principle, once our FST/CG automata work better, we can let them analyze the single simple constituents automatically.)", this was and still is my plan for sme, yet unless Michael, I am aware of the problems of using this method, problems
that can be subsumed under the label "lack of contex results in wrong pos-labeling".

========================

 2. The second has to do with attribute names. For use in the NDS proper nouns have the following attributes pos=_N_ type=_Prop_. Michael has already used the the attribute name _type_ for specifications _place_, _person_ etc. What shall we do here? I suggest Michael_s type attribute be renamed some how. Are there any suggestions.

Well, everything can be a type label, so is pos: pos is a lemma type. In order to differentiate,
between the different types of type, you have either to have specific names for them (such as 'pos'
for lemma type) or to prefix/suffix them to make them unambiguous. Here is a non-exhaustive list
of the types of type (sic!) used in GT lexical data:

1. type as a subtype of pos
<l pos="A" type="NomAg">buohcci</l>
<l pos="N" type="G3">álgoálbmotášši</l>
<l pos="N" type="NomAg">iskkadeaddji</l>
<l nr="Sg" pos="Pron" type="Dem">dat</l>
<l pos="Pron" type="Indef" nr="Pl">
<l pos="Pron" type="Pers">mon</l>
<l pos="Pron" type="Recipr">
l pos="Pron" type="Refl">ieš</l>
<l pos="Pron" type="Rel">mii</l>
<l type="Actio" pos="V">leahkin</l>
<l type="PrfPrc" pos="V">leamaš</l>
<l mod="Cond" type="ConNeg" pos="V">livčče</l>
<l pos="V" type="PrsPrc" pg="no">badjelgeahčči</l>
<l nr="Sg" pos="Pron" type="Interr">makkár</l>
<l pos="N" type="Prop" sem_type="Fem">Aagot</l>
<l pos="N" type="Prop" nr="Pl" sem_type="Obj">Gállábártnit</l>
<l pos="N" type="Prop" nr="Pl" sem_type="Plc">Iččát</l>
<t pos="N" type="Prop" sem_type="Plc" reg="Troms">Reinøya</t>
<t pos="N" type="Prop" sem_type="Org">Høyre</t>
<t pos="N" type="Prop" sem_type="Plc" country="Finland">Enaresjøen</t>
<l pos="N" type="Coll">golmmas</l> (this is not quite correct with "Colloquial form" as value of type)
JR. "Collective" 'trio', three musketteers
<l pos="Num" type="ord">kymmenes</l>

2. subtype of translation (translation_type explanation, not really translation)
<t t_type="expl">kvinnenavn</t>
<t t_type="expl">framhevende i negative utsagn</t>
<t t_type="expl">den side som vender mot boaššu, det vil si den innerste delen av telt, gamme eller hus</t>
<t t_type="expl">continuative of âi’git</t>
<t gen="m" pos="N" t_type="Pers">St. Hans</t> (this is even wrong attribute-value pair)

Here, there are three types of type in a singel entry:
 type="Prop" ==> subtype of pos
 sem_type="Fem" ==> semantic type
 t_type="expl" ==> type of translation
   <e usage="vd">
      <lg>
          <l pos="N" type="Prop" sem_type="Fem">Aagot</l>
      </lg>
      <mg>
         <tg xml:lang="nob">
            <t t_type="expl">kvinnenavn</t>
         </tg>
      </mg>
   </e>

Question:
 - What does 't_type="sr"' mean? Is is a t_type at all?


JR: The nested elements stg/st have been introduced. The <st/> element text content consists of the stem form, which will be used in the transducer. The form of the stem will correlate to the requirements set forth in the affixes/POS.lexc LEXICON documentation indicated by the value of the st@Contlex="VALUE".
In order to arrive at a workable @Contlex value, a second attribute "inflexId" has been introduced in the <st/> element drawing on @pos and @class attribute values in the stg::sibling <l/> element, and the text content of the first <p id="17"/> element.

   <e_u id="sms_bag_1">
      <map stamp="gt_A_1:fm_2201:sml_27091:sml_27092:sml_27093"/>
      <e id="gt_A_1" meta="03">
         <lg>
            <l pos="Adv">tâʹlles</l>
            <stg>
               <st Contlex="ADV_" inflexId="::::1000">tâʹlles</st>
            </stg>
         </lg>
.... 
   </e_u>

Since the <st/> element text content is a direct copy from the preceeding <l/> text content. pedagogic extra strong marking of geminates and e with underlying dot will standardized in the <l/> element content and their reproduction will be insured by the <st/> text content and @Contlex value combination. Let me do this. JR

=================
split the unified file:
1. split
 a. e_u-elements having at least one gt-entry
 b. e_u-elements with no gt-entry

2. split
 - gt-entries by the former pos values in order to ease the work
   with the bag entries

_split_by_pos_out>g '<l pos=' *|cut -d '"' -f1-2|t
 525 N_sms2x.xml:            <l pos="N
 212 V_sms2x.xml:            <l pos="V
  91 Adp_sms2x.xml:            <l pos="Adv
  32 Prop_sms2x.xml:            <l pos="N
  32 Adp_sms2x.xml:            <l pos="Adp
  28 Num_sms2x.xml:            <l pos="Num
  12 A_sms2x.xml:            <l pos="A
  11 Pro_sms2x.xml:            <l pos="Pron
  11 Cc_sms2x.xml:            <l pos="CC
   9 Pcle_sms2x.xml:            <l pos="Pcle
   9 Det_sms2x.xml:            <l pos="Det
   7 Cs_sms2x.xml:            <l pos="CS
   4 I_sms2x.xml:            <l pos="Interj
   3 A_sms2x.xml:            <l pos="Adv
   1 Cs_sms2x.xml:            <l pos="Pron

TODO:
 - check the pos values of the former gt_entries
 - DON'T change the value of the id!
 - a new splitting will be done automatically
 - harmonize the pos values with the GT-values used in FSTs as much as possible
 - start working on pos for the non-GT-entries

DONE: (Ciprian)
The following fields (if they are not empty) from the inc-file 
sms-sjd2X_inc/simplified_SkoltKildEnDeNoRu.xml
need to be merged as well. I will need this info later. If it is possible, they should be grouped like the following:

<inc-transl>
<c name="German"/>
<c name="Russian"/>
<c name="Norwegian"/>
<c name="Kildin"/>
<c name="Finnish"/>
<c name="English"/>
</inc-transl>

<inc-sampling>
<c name="LWT"/>
<c name="Swadesh100"/>
<c name="Swadesh200"/>
</inc-sampling>

<inc-audio>
<c name="ID_Audio"/>
<c name="Reader"/>
<c name="Recording"/>
<c name="included"/>
</inc-audio>

================================
Question for Ciprian: With the new naming of the xml file Prop_sms2x.xml => N_Prop_sms2x.xml we will have to alter the xsl transformation script which has been used in the AKU languages for generating stems/...lexc files. That is simple isn't it? (see main/gtcore//scripts/xsl/generate_lex-fileVM.xsl)
Answer for Jack: I guess not that difficult.
================================

===================================
Answers for Ciprian about <p id="6"> tag content:
(1)
<p id="6" syn="vuõss (attr.)" var="õõuʹdmõs">oouʹdmõs</p>
=> <variants>
....
<l_syn inflexion="(attr.)">vuõss</l_syn>
....</variants>
LIKEWISE:
<p id="6" syn="šorrsaž ~ šõrrsaž, šoora (pr:vi)" var="šõõraž">šooraž</p>
<p id="6" syn="mäiʹvv" var="riâppâs (riâppâz, riâppsa)">riâvâs</p>
pr:vi = predicative
attr = attribute
(riâppâz, riâppsa) <= (Pl.Nom, Sg.Ill)

(2)
<p id="6" nr="(mon.)" syn="tiõrvvʼvuõđ (mon.)">tiõrv</p>
            <variants>
               <l_syn nr="(mon.)">tiõrvvʼvuõđ</l_syn>
            </variants>
(3)
<p id="6" syn="ooudbeäʹl ~ õõudbeäʹl, ooudbeäʹlnn ~ õõudpeäʹlnn" var="õuʹddel">ouddâl</p>
In this instance syn content is interesting from a morphological point of view; two pairs of variants.
This might mean:
        <variants>
          <l_var>õuʹddel</l_var>
          <l_syn>ooudbeäʹl</l_syn>
          <l_syn>õõudbeäʹl</l_syn>
          <l_syn>ooudbeäʹlnn</l_syn>
          <l_syn>õõudpeäʹlnn</l_syn>
        </variants>
==>
        <variants>
          <l_var>õuʹddel</l_var>
          <l_syn var="õõudbeäʹl">ooudbeäʹl</l_syn>
          <l_syn var="ooudbeäʹl">õõudbeäʹl</l_syn>
          <l_syn var="õõudpeäʹlnn">ooudbeäʹlnn</l_syn>
          <l_syn var="ooudbeäʹlnn">õõudpeäʹlnn</l_syn>
	  </variants>

Jack
===================================



=======================================
Questions about lexicographic structure
=======================================

==="variants"===
      <lg>
        <l>krååʹma</l>
        <variants>
          <l_syn>-tää</l_syn>
          <l_syn>väjjaǥ</l_syn>
        </variants>
      </lg>

_-tää_ and _väjjaǥ_ are "variants" of the lemma _krååʹma_ only in the sense that  they have the same meaning. _krååʹma_ and _väjjaǥ_ are synonyms. _-tää_ is a case suffix expressing a similar meaning.

1) Do we need this information about synonyms, i.e. do we need a pointer between synonym lemmas? 

2) The inlectional suffix _-tää_ is not a lemma and cannot (and does not need to) be pointed to, I would say.

If we already have this information (because it was found in some printed dictionary we used as the source of our data) and want to keep it for whatever reason, I would rather create the fields "synonyme", "antonyme", "hyperonyme" or else under <mg/>. However, covering all kinds of semantic relations between lemmas systematically would require a separate project.
================

===inflectional morpheme as a lemma===
===AGREED===
We have several derivational and inflectional suffixes which we want to list as lemmas. They are labeled pos="Suf".
=======================================

===============================
Questions about the actual data
===============================

===QUESTION JR: AN INTERESTING ATTRIBUTE and VALUE combination===
===DONE===
         <tg xml:lang="rus">
            <t pos="v" impf="сделать">делать</t>
         </tg>
Here I assume that attribute name ”impf” indicates ”Imperfect”, where the attribute content provides the ”PERFECT” verb ”сделать” correlating to the ”IMPERFECT” text content ”делать”.
Is this your intent? Wouldn’t it be more to the point to call the attribute ”perf”?

ANSWER MR
Yes, you are right, this is a mistake. it should be the other way round. I will correct it later. Bytheway, I have not worked with the Russian FST yet, but perhaps later we can get the aspect pairs from there automatically? In this case, we would have obsolete information here as well. But let us discuss this later.

===================
CG: pos="Ger" issue

1. Ger is not actually a pos:
  pos="V" type="Ger"

2. If Ger means "Gerund" why not have it the same way as 
impf-attr, or even better, just have it modeled in the FST?

3. grep says that there are pos="Ger" in the adv-file, too.

unified_sms2x_src>g '"Ger"' *.xml
Adv_sms2x.xml:            <l pos="Ger">jeäʹleestes</l>
Adv_sms2x.xml:            <l pos="Ger">jueʹjjǩânai</l>
Adv_sms2x.xml:            <l pos="Ger">juâkkjeǩânai</l>
Adv_sms2x.xml:            <l pos="Ger">kuâsttjeǩânai</l>
Adv_sms2x.xml:            <l pos="Ger">riistǩâni</l>
Adv_sms2x.xml:            <l pos="Ger">suuddǩânai</l>
Adv_sms2x.xml:            <l pos="Ger">vueiʹnǩâni</l>
Adv_sms2x.xml:            <l pos="Ger">šõõddǩâni</l>
V_Ger_sms2x.xml:            <l pos="Ger">uuʹrčeel</l>
V_Ger_sms2x.xml:            <l pos="Ger">vääʹʒʒeel</l>
V_Ger_sms2x.xml:            <l pos="Ger">čuõigeeʹl</l>
V_Ger_sms2x.xml:            <l pos="Ger">ǩeeʹrdeel</l>

MR: if "Ger" originates from my old files it was meant only as preliminary tagging and Jaska should correct this

