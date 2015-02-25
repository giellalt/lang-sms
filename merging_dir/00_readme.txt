This file is mostly for communicating current todos and questions; proper documentation should be written in http://giellatekno.uit.no/doc/dicts/SkoltSaami2X.html

===

TODO MR
update documentation at http://giellatekno.uit.no/doc/dicts/SkoltSaami2X.html

TODO MR 
check imprf-prf values in Russian translations

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
3.
AN INTERESTING ATTRIBUTE and VALUE combination
         <tg xml:lang="rus">
            <t pos="v" impf="сделать">делать</t>
         </tg>
Here I assume that attribute name ”impf” indicates ”Imperfect”, where the attribute content provides the ”PERFECT” verb ”сделать” correlating to the ”IMPERFECT” text content ”делать”.
Is this your intent? Wouldn’t it be more to the point to call the attribute ”perf”?

ANSWER MR
Yes, you are right, this is a mistake. it should be the other way round. I will correct it later. Bytheway, I have not worked with the Russian FST yet, but perhaps later we can get the aspect pairs from there automatically? In this case, we would have obsolete information here as well. But let us discuss this later.

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
Ciprian needs to help here. If I recall it right, we did not want to use state="pref", but only state="dispref" (or something). I am completely open to your (and Ciprian's, Heli's) suggestions how to do this better in the future.


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
   ==> TODO

ID legend for the current sms data:

(a) first data set used at Giellatekno: gt_POS_NUMBER
    <e id="gt_A_70">

(b) Michael's data in Filemakes format: fm_NUMBER
    <e id="fm_28">

(c) Jack's data from Satu Moshnikoff list: sml_NUMBER
    <e id="sml_34083">


===================================
Todo: manual check by Jack
 - please correct them or provide the information needed in this file
===================================
1. Why kind of separator is ';'?

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

3. What is the role of '- ' here?
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



