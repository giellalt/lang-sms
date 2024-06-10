# Skolt Sami language model documentation

All doc-comment documentation in one large file.

---

# src-cg3-disambiguator.cg3.md 



# Skolt Sámi disambiguator
Note: This documentation file is still work-in-progress, and should not yet be used. Read the source file instead.

## Delimiters 

DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>"; 

Tags and sets #

We declare BOS, EOS and all the tags from the fst.

# Disambiguation 

## Cycle 0, rules without context

* __R_Num__ removes Num when Neg.

* __R_ACR__ removes ACR when CC.

### Possessive suffix
Probably exists only for Refl and for kinship terms
In Skolt Sami Possessive suffixes ARE USED Jaska 2020-11-08

* __PrfPrc_Not_PxSg1__ removes PxSg1 if PrfPrc

* **NotPlPx1** removes PxPl1 if -1 Gen 0 Ess

###  Pronouns and nouns

### Postpostions

* **GenWhenFollowedByGenPo**

### Short Pronouns
No rules.

### Proper nouns

## Cycle 1

### Numerals

* **r1082** Selects (Num Nom)

* **NumIfParag**
* **NumIfParag**
* **NumIfParag**

### Trivialia

* __prop_daate__ Prop if 0 Pers

* **DemIll** 

* **DemCom** 

* **DemAttr** 

* **AttrNotNom** 

* **unifDem** 

## Nouns

###  Nominative plural

###  Genitive

* **PGenN** selects Gen when (Pron Pers) to the left and N to the right *mu sámevuođa iđuid*

* **CoGen1** (quite strict) selects the first of coordinated genitives *riikkaid, čearuid ja boazoorohagaid ovttasbarggu*

## Verbs

* **IsItConNeg** 

* **PrtInNeg** 

* **PrsInNeg** 

### Imperative

There can be Interj, VOC, 

### Genitive modifier

* **genmod** 

### Subject

## M A P P I N G

### CC- and CS-Mapping
CASES

* **compcs** 

* **cnp** maps @CNP for gon, goh,... 

### PrfPrc

### Person

### Nomen

### Verb or Noun

### Dem
No rules

### CC and CS or Adv

### Adj or Adv

### grammatisk ord eller N eller A

### N or Adj

### N or V

### Ger or Der/NomAct

### Adj or Indef

### Num

### Rel or Interr

### Interj
no rule

### Po or Pr

* **PoGena** Po not Pr

### Adv or Po/Pr

### Com

### Accusative or illative

### Accusative or Genitive

### Indef or Adv

### special lemmas

no rules

### Verb person vs. Inf -- moved here in order to have the pronouns disambiguated first.

## Proper nouns

Rule set taken from sme

Substituting Prop tags 

### Prop or not

* **Prop** 
Capitalised nouns in the middle of a sentence are names - (not always).

* **PropSg** goes for Sg not Pl reading of Prop (Marit not Mari Pl)

### Removing proper nouns that are lookalikes

### Particular proper nouns

Todo: sms-ify.

# Mapping rules

## SAFE RULES

* **InfSubj**

## subject rules and spred rules

# Removing Err/Orth

Denne regelen fjerner Err/Orth når det er samme lemma, sjøl om morfologien er forskjellig.

* **errsub** removes err/orth forms

* * *

<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-sms/blob/main/src/cg3/disambiguator.cg3)</small>

---

# src-fst-morphology-affixes-acronyms.lexc.md 



# Inari Saami acronyms

## The lexica giving tags and suffixes to the acronyms

+N+ABBR+Sg+Gen:%>    # ;
+N+ABBR+Sg+Loc:%>    # ;
+N+ABBR+Ess:%>    # ;
+N+ABBR+Par:%>    # ;
+N+ABBR+Pl+Nom:%>    # ;
+N+Prop:%> ACCRADECL     ;
+N+Prop:%> BERN-UCASE    ;
+N+Prop:%> LONDON-UCASE  ;
+N+Prop:%> NYSTØ-OBL     ;

* **LEXICON acroconnector   ** Here comes a set of possible symbols to put between the abbreviation and its suffix

* **LEXICON acronull   **  for suffixless forms, redirecting to K_only for clitic forms

* **LEXICON acrooblique   **

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/acronyms.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/acronyms.lexc)</small>

---

# src-fst-morphology-affixes-adjectives.lexc.md 


# Skolt Saami adjective declension

These come directly from the xml to lexc xsltransformation lexica

* : ADJ-DER/COMP_ab ;  This has a Comp+Attr

CLASS 1 HIGH VOWEL, NO PALATALIZATION NOMINALS
* LEXICON A_PAPP  papp:papp

* LEXICON A_ALGG  põrtt:põrtt
friskk

* LEXICON A_AUTT  autt:a%^1VOWutt
friskk

* LEXICON A_MUORR  muõrr:muõrr

* LEXICON A_NUORR  nuõrr:nuõrr

* LEXICON A_SHIOGHGH  šiõǥǥ:šiõǥǥ
Need work on derivation since this only has positive form. 2018-10-13

* LEXICON	A_KOOKKA 	kookka length of/pituinen
no gradation, has preceding genitive 2018-10-13

* LEXICON A_KUOCC  kuõcc:kuõcc

* LEXICON A_CHUOSHKK  čuõškk:čuõškk
tuõlbb

* LEXICON A_MIYRKK  sǩiâŋkk:sǩiâŋkk
hiâlpp

* LEXICON A_PLAAN  plaan:plaan

* LEXICON A_SUYMMM  suâmm:suâmˈm

* LEXICON A_MODDAI  moddai:moddai
* : SG-NOM ; 
* : SG-ABE/ACC/GEN ; 
* :%^RmVow%^I2J%>a SG-ILL ; 
* :%^RmVow%^I2J%>e SG-LOC ; 
* :%^RmVow%^V2VV SG-COM_IN ; 
* :%^I2J%>e ESS/PAR ; 
* :%^Pen%^V2VV PL-NOM ; 
* :%^RmVow%^I2J PL-OBL ; 

CLASS 1 LOW VOWEL, NO PALATALIZATION NOMINALS

* Yaml: **A-vaeaezhzh**

CLASS 1 LOW VOWEL, PALATALIZATION, ILLATIVE IN U NOMINALS

CLASS 1 HIGH VOWEL, PALATALIZATION NOMINALS
* LEXICON A_NUQBB   nuʹbb:nubb
* Yaml: **A-nubb**

* LEXICON A_KUEQLL  kueʹll:kuâll

* LEXICON A_PUEQRR  pueʹrr:puâll

* LEXICON A_MUEQRJJ  mueʹrjj:mueʹrjj

CLASS 1 LOW VOWEL, PALATALIZATION NOMINALS

* LEXICON A_LOAQDD  väʹll:väll

* LEXICON A_UQCC  uʹcc:u%^1VOW%{ʹØ%}cc

* LEXICON A_SAAQMM  sääʹmm:sää%{ʹØ%}mm

* LEXICON A_CHAAQCC  čääʹcc:čää%{ʹØ%}cc

* LEXICON A_KAQLBB  käʹlbb:kälbb âʹlǧǧ:â%^1VOW%{ʹØ%}lgg

* LEXICON A_HAAQSKH  hääʹsǩ:hää%{ʹØ%}sk

no separate attribute form 2018-10-13
Russian loanword 

* LEXICON A_SEQTT  seʹtt:sẹ%^1VOW%{ʹØ%}tt
CHECKME

* LEXICON A_KHEQRJJ  ǩeʹrjj:ǩẹ%^1VOW%{ʹØ%}rjj

* LEXICON A_JAEUQRR  jäuʹrr:jä%^1VOWu%{ʹØ%}rr

* LEXICON A_PEIQVV  peiʹvv:pẹ%^1VOWi%{ʹØ%}vv

* LEXICON A_SUEAQKHKH  sueʹǩǩ:suäkk
cuẹʹǩǩ

* LEXICON A_KUEAQTT  kuẹʹtt:kuätt

* LEXICON A_HIEAQNN  hieʹnn:heänn

* LEXICON A_VUEQSS  pueʹšš:puâ%{ʹØ%}šš

* LEXICON A_JEAQNNN  jeäʹnn:jeänˈn, jeäʹǧǧ:jeägˈg

* LEXICON A_JEAQRMM  jeäʹrmm:jeärmm

* LEXICON A_CHUAQRVV  tuäʹŋǧǧ:tuäŋgg

CLASS denominals in -i
cf. Feist (2012: 198-199)
These will need their own expansions
HOW DOES JIÕʹNNI decline?
* LEXICON A_JIOQNNI  jiõʹnni:jiõnn FIXME 2016-04

* LEXICON A_PAERRAI  pärrai:pärr
* LEXICON A_SAELTTAI  sälttai:sältt

* LEXICON A_VELLAI  vellai:vẹ%^1VOWll

CLASS 

-õs ending

* +Pl+Nom:až ENDLEX ;  Check this 2015-02-22

* LEXICON A_VOONYS  võõnâs:võnn
* +Pl+Nom: ENDLEX ;  Check this 2015-02-22

* LEXICON A_OODHYS  oođâs:ođđ

* LEXICON A_KOODDYS  kõõddâs:kõdd
* +Pl+Nom:%>âz ENDLEX ;  Check this 2015-02-22

* LEXICON A_MOOCHCHYS  mooččâs:močč

* LEXICON A_JOOSKYS  jõõskâs:jõ%^1VOWskk

* LEXICON A_AARVYS  aarvâs:a%^1VOWrvv

* LEXICON A_PIIUTYS  piiutâs:pihtt

* LEXICON A_FIINYS  fiinâs:fijnn

* LEXICON A_IISYS  iisâs:ijss

* LEXICON A_RUODDYS  ruõddâs:ruõdˈd

* LEXICON A_TUOVYS  tuõvâs:tuõvv

* LEXICON A_VUOIVYS  vuõivâs:vuõivv

* LEXICON A_KUORMYS  kuõrmâs:kuõrmm

* LEXICON A_KOAOAVAS  kååvas:kåvv

* LEXICON A_KOAOADDAS  kååddas:kåådd

* LEXICON A_TOBDDSALLASH  tobddsallaš:tobddsallaš

* LEXICON A_JAELLASH  jällaš:jällaš

* LEXICON A_VAALMYSH  vaalmâš:va%^1VOWlmmâš

* LEXICON A_VEEIDAS  veeidas:veidd

* LEXICON A_PAEAELKAS  päälkas:pä%^1VOWlkkas

* LEXICON A_CEAEGGAS   ceäggas:ceägˈg

* LEXICON A_AANAR  späʹsseb:späʹsseb

* LEXICON A_CIYLKYLM  kuâstalv:kuâ%{ˈ1%}stalv

* LEXICON A_KUQCCER  kuʹccer:kuʹccer

* LEXICON A_KAAQMES   kääʹmes:kämm
* :es A-01_OAQVES ;    kääʹmes:kämmez

* LEXICON A_KAAQLLES   kääʹlles:kä%^1VOWll
* :es A-01_KAAQLLES ;    kääʹmes:kämmez

* LEXICON A_PUUQTTES   puuʹttes:pu%^1VOWtt
* : A-01_PUUQTTES ;    puuʹttes:pu%^1VOWttes

* LEXICON A_KOAQSHKHES  kååʹšǩes:kå%^1VOW%{ʹØ%}škk

* LEXICON A_JYYQLDES  jââʹldes:jâ%^1VOW%{ʹØ%}ldd

* LEXICON A_KHEEQLES   ǩeeʹles:ǩeâlˈl
* :es A-01_KHEEQLES ; 	ǩeeʹles:ǩeâlˈles

* LEXICON A_PUAQRES   puäʹres:puärˈr
* :es A-01_PUAQRES ;    puäʹres:puärˈres

* LEXICON A_VUAQMES   vuäʹres:vuärˈr
* :es A-01_PUAQRES ;    puäʹres:puärˈres

* LEXICON A_CHUEQDHES   čueʹđes:čuâtˈt
* :es A-01_CHUEQDHES ;    puäʹres:puärˈrez

* LEXICON A_PUEAQRDES   čueʹcǩes:čuäckkez
* :es A-01_PUEAQRDES ;   čueʹcǩes:čuäckkez

* :%^Pen%^PALE%^Pen%^PAL%^Pen%^KKK2ZERO SG-NOM ;  jeeʹel
* :%^Pen%^PALE%^Pen%^PAL%^Pen%^KKK2GG%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON A_TUEJJEEJA  tuejjeeja:tuejjẹẹja

* LEXICON A_PRSPRC-EEI  tuejjeei:tuejjee
* +Err/Orth+Attr:jas ENDLEX ;  c.f. sjm faʹlsǩeejas

WORK HERE 2015-10-14 deverbals
* LEXICON A_PRSPRC-NOGRADE-I  uuidi:uuidi

* LEXICON A_PRSPRC-VCC-I  cõggi:cõggi

* LEXICON A_PRSPRC-VQCC-I  elstõʹtti:elstõ%^1VOWʹtti

* LEXICON A_PRSPRC-VHYY-I  lahtti:la%^1VOWhtti

* LEXICON A_PRSPRC-VQHYY-I  puʹhtti:pu%^1VOWhtti
* LEXICON A_PRSPRC-VWCCC-I  kuõʹddi:kuõʹdˈdi

* LEXICON A_PRSPRC-VWQCCC-I  kuõʹddi:kuõʹdˈdi

* LEXICON A_PRSPRC-VWHYY-AI  veâhssai

* LEXICON A_PRSPRC-VVCC-I  jõõvvi:jõõvvi
* Yaml: **A-vaeaezhzh**

* LEXICON A_PRSPRC-VVQCC-I  jooʹtti+A:jooʹtti
* Yaml: **A-vaeaezhzh**
* LEXICON A_PRSPRC-VVQKK-I  kooʹcci+A:kooʹcci
* LEXICON A_PRSPRC-VVKK-I  lookki:lookki
* LEXICON A_KOBDDI  kobddi:kobddi SEE following A_TOBDDI diff

* LEXICON A_PRSPRC-VWKK-I  ǩiõssi:ǩiõssi

* LEXICON A_PRSPRC-VWQKK-I  ǩiõʹssi:ǩiõʹssi
* LEXICON A_PRSPRC-VWCC-I  vuõlli:vuõlli

* LEXICON A_PRSPRC-VWQCC-I  puõʹtti:puõʹtti
* LEXICON A_PRSPRC-VWXYY-I  kuõskki:kuõskki

* LEXICON A_PRSPRC-VWQXYY-I  hieʹrvvi+A:hieʹrvvi
* LEXICON A_PRSPRC-VCC-AI  kåččai:kåččai
* LEXICON A_PRSPRC-VVCC-AI  peellai:peellai
* LEXICON A_PRSPRC-VVKK-AI  pååssai:pååssai
* LEXICON A_PRSPRC-VXYY-AI  särnnai:särnnai
* LEXICON A_PRSPRC-VWCC-AI  vuejjai:vuejjai
* LEXICON A_PRSPRC-VWKK-AI  reäkkai:reäkkai
* LEXICON A_PRSPRC-VWCCC-AI  vuäggai:vuägˈgai
* LEXICON A_PRSPRC-VWXYY-AI  meälttai:meälttai

* LEXICON A_PRSPRC-VXYY-I  äjjnõʹstti:äjjnõʹstti

* LEXICON A_PRSPRC-VQXYY-I  äjjnõʹstti:äjjnõʹstti

* LEXICON A_LIEQDHDHDHI  lieʹđđi:lieʹđˈđi

* LEXICON A_PRSPRC-VWHCC-I  viõhssi:viõhssi

* LEXICON A_VUOIQNNI  vuõiʹnni:vuõiʹnn%{ʼØ%}i

* LEXICON A_JUURD  juurd:ju%^1VOWrdd

* LEXICON A_MAADD  maadd:ma%^1VOWdd

check this 2015-11-10

## 2. WORDS WITH MULTI-SYLLABLE NOMINATIVE SINGULARS (2009: 293)
## 2.3 Sg.Loc in -est. e-stems (Sg.Loc, Ess, Par).
## 2.3.2 Sg.Ill in -a
## 2.3.2.1 Has Gradation 
## 2.3.2.1.1 Second syllable vowel loss (Sg.Ill, Sg.Loc, Sg.Com; Ess, Par; Pl.Obl)
* Yaml: **A-chaalmtem**

## 2. WORDS WITH MULTI-SYLLABLE NOMINATIVE SINGULARS (2009: 293)
## 2.3 Sg.Loc in -est. e-stems (Sg.Loc, Ess, Par).
## 2.3.2 Sg.Ill in -a
## 2.3.2.1 Has Gradation 
## 2.3.2.1.1 Second syllable vowel loss (Sg.Ill, Sg.Loc, Sg.Com; Ess, Par; Pl.Obl)
* Yaml: **A-chaalmtem**

CLASS 11 ADJECTIVES
* LEXICON A_SHIYLGGYD  šiâlggâd:šiâlgg

* LEXICON A_LOSSYD  lossâd:loss

* LEXICON A_VISKKYD  viskkâd:viskk

* LEXICON A_MOASHSHAD  måššad:måšš

* LEXICON A_AQKHKHED  âʹǩǩed:âʹǩǩ

säʹmmlaž:säʹmml

ânnʼjõž:ânnʼj

muõrâž:muõr

* +Der+Der/toovvyd+V+IV:»tõõvv IV_LAUKKOOLLYD ;  privative = carative + translative

Class 12 Feist 163
* +Der+Der/Comp+A:»ba A-02_SG-ILL ;  Sammallahti (1991: 188)
* +Der+Der/Comp+A:»be A-02_SG-LOC ;  Sammallahti (1991: 188)
* +Der+Der/Comp+A:»b A-02_SG-COM_IN ;  Sammallahti (1991: 188)
* +Der+Der/Comp+A:»b A-02_PL-OBL ;  Sammallahti (1991: 188)

Sammallahti 2010: 151

N›A derivation in +Der+Der/N2A

1A (Feist 2011: 198-199)

1B (Feist 2011: 198-199)

1C (Feist 2011: 198-199)

determiner

determiner

determiner

determiner
determiner

* LEXICON A-ORD_NEELLJAD  neelljad:neellj
similar_to: A_MOASHSHAD

* LEXICON DET_DOHTAD  doohhtad:doohht

CLASS 1 HIGH VOWEL, NO PALATALIZATION NOMINALS
pa%{a0%}%{ʹ0%}%{p0%}p
V%{V0%}%{ʹ0%}%{C0%}C
Sg_Nom:
high-vowel=yes
monophthong=yes
long-vowel=yes
palatalization=no
consonantism=quant-gem
long-consonant=yes

1.1.1.1.1.1. Sg_Nom="short_vowel|geminate" Sg_Gen="long_vowel|geminate" 

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Strong grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-papp**
strong_geminate, short_vowel
* : A-02_SG-NOM ;			 papp
* :%>â A-02_ESS/PAR ; 	  		 pappân, pappâd
strong_geminate, short_vowel, palatalization
* :%^PAL%>e A-02_SG-ILL ;		 paʹppe

strong_geminate, long_vowel
* :%^V2VV A-02_SG-ABE/ACC/GEN-PL-NOM ;	 paapp
* :%^V2VV%>â A-02_SG-LOC ;		 paappâst
* :%^V2VV A-02_SG-COM_IN/PL-OBL ;	 paappi, paappid, paappid, paappin, paappivuiʹm, paappitaa

* +Der+Der/Dimin+A:%^V2VV A-02_MUORYZH-WITHOUT-PAL ;   paapp-
* +Der+Der/Dimin+A:%^V2VV%^PAL A-02_MUORYZH-WITH-PAL ;   paaʹpp-

e.g. 
e.g. +Use/NG+Sg+Loc+PxSg3

Sg_Nom: vow_mono:vow_short:vow_high:pal_no:cns_xyy
similar_to: N_TAALKYS, N_KOONTYR
1.1.1.1.1.1. Sg_Nom="short_vowel|long_cluster" Sg_Gen="long_vowel|short_cluster" 

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-portt**

* : A-02_SG-NOM ;	    				 põrtt
* :%^V2VV%^XYY2XY A-02_SG-ABE/ACC/GEN ;		 põõrt
* :%^V2VV%^XYY2XY A-02_PL-NOM ;		 põõrt
* :%^PAL%>e A-02_SG-ILL ;		      		 põʹrtte
* :%^V2VV%^XYY2XY%>â A-02_SG-LOC ;			 põõrtâst
* :%^V2VV%^XYY2XY A-02_SG-COM_IN ;			 põõrtin
* :%>â A-02_ESS/PAR ; 		  			 põrttân
* :%^V2VV%^XYY2XY A-02_PL-OBL ;			 põõrti

* +Der+Der/Dimin+A:%^V2VV%^XYY2XY A-02_MUORYZH-WITHOUT-PAL ;   põõrt-
* +Der+Der/Dimin+A:%^V2VV%^PAL%^XYY2XY A-02_MUORYZH-WITH-PAL ;   põõʹrt-

Sg_Nom: vow_mono:vow_short:vow_high:pal_no:cns_vyy
1.1.1.1.1.1. Sg_Nom="short_vowel|long_V-cluster" Sg_Gen="long_vowel|short_V-cluster"

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-autt**

* : A-02_SG-NOM ;	    				 autt
* :%^V2VV%^XYY2XY A-02_SG-ABE/ACC/GEN ;		 aaut
* :%^PAL%>e A-02_SG-ILL ;		      		 auʹtte
* :%^V2VV%^XYY2XY%>â A-02_SG-LOC ;			 aautâst
* :%^V2VV%^XYY2XY A-02_SG-COM_IN ;			 aautin
* :%>â A-02_ESS/PAR ; 		  			 auttân
* :%^V2VV%^XYY2XY A-02_PL-NOM ;		 aaut
* :%^V2VV%^XYY2XY A-02_PL-OBL ;			 aauti

* +Der+Der/Dimin+A:%^V2VV%^XYY2XY A-02_MUORYZH-WITHOUT-PAL ;   aaut-
* +Der+Der/Dimin+A:%^V2VV%^PAL%^XYY2XY A-02_MUORYZH-WITH-PAL ;   aauʹt-

Sg_Nom: vow_di:vow_high:pal_no:cns_xyy
1.1.1.1.1.1. Sg_Nom="diphthong|long_cluster" Sg_Gen="diphthong|short_cluster"

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-chuoskk**

* : A-02_SG-NOM ;	    			 (1) čuõskk
* :%^XYY2XY A-02_SG-ABE/ACC/GEN ;	 (2) čuõsk
* :%^PAL%>e A-02_SG-ILL ;			 (3) čuõʹsǩǩe
* :%^XYY2XY%>â A-02_SG-LOC ;			 (4) čuõskest
* :%^XYY2XY A-02_SG-COM_IN ;		 (5) čuõskin
* :%>â A-02_ESS/PAR ; 	    			 (6) čuõskkân
* :%^XYY2XY A-02_PL-NOM ;	 (2) čuõsk
* :%^XYY2XY A-02_PL-OBL ;		 (5) čuõskin

* +Der+Der/Dimin+A:%^XYY2XY A-02_MUORYZH-WITHOUT-PAL ;   čuõsk-
* +Der+Der/Dimin+A:%^PAL%^XYY2XY A-02_MUORYZH-WITH-PAL ;   čuõʹsǩ-

Sg_Nom: vow_di:vow_high:pal_no:cns_xyy
1.1.1.1.1.1. Sg_Nom="diphthong|long_cluster" Sg_Gen="diphthong|short_cluster" Sg_Ill="diphthong|vowel_e-coloration|long_cluster"

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-skjiankk**

* : A-02_SG-NOM ;	      	 (1) Sg.Nom: sǩiâŋkk
* :%^XYY2XY A-02_SG-ABE/ACC/GEN-PL-NOM ;   (2) Pl.Nom: sǩiâŋk
* :%^PALE%^PAL%>e A-02_SG-ILL ;	    (3) Sg.Ill: sǩieʹŋǩǩe
* :%^XYY2XY%>â A-02_SG-LOC ;   	    (4) Sg.Loc: sǩiâŋkâst
* :%^XYY2XY A-02_SG-COM_IN ;		    (5) Sg.Com: sǩiâŋkin
* :%>â A-02_ESS/PAR ; 	     		   	(6) Ess: sǩiâŋkkân
* :%^XYY2XY A-02_PL-OBL ;			(8) Pl.Acc: sǩiâŋkid

* +Der+Der/Dimin+A:%^XYY2XY A-02_MUORYZH-WITHOUT-PAL ;   sǩiâŋk-
* +Der+Der/Dimin+A:%^PALE%^PAL%^XYY2XY A-02_MUORYZH-WITH-PAL ;   sǩieʹŋǩ-

Sg_Nom: vow_mono:vow_short:vow_high:pal_no:cns_gem
1.1.1.1.1.2. Sg_Nom="short_vowel|geminate" Sg_Gen="long_vowel|single_consonant" 

See also: NMN_TOLL-PLC, which is the same, but minus PL forms and certain cases
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant and Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-kidd, N-soll, N-toll, N-vorr**
strong_geminate, short_vowel, no_palatalization, high_stem_vowel 
* : A-02_SG-NOM ;	    	   toll
* :%>â A-02_ESS/PAR ;    		   tollân
strong_geminate, short_vowel, palatalization, high_stem_vowel
* :%^PAL%>e A-02_SG-ILL ;   	   toʹlle
single_consonant, long_vowel, no_palatalization, high_stem_vowel
* :%^V2VV%^CC2C A-02_SG-ABE/ACC/GEN ;	 tool
* :%^V2VV%^CC2C A-02_PL-NOM ;	 tool
* :%^V2VV%^CC2C%>â A-02_SG-LOC ;                toolâst
* :%^V2VV%^CC2C A-02_SG-COM_IN ;                toolin
* :%^V2VV%^CC2C A-02_PL-OBL ;	                 tooli, toolid, toolid, toolin, toolivuiʹm, toolitaa

* +Der+Der/Dimin+A:%^V2VV%^CC2C A-02_MUORYZH-WITHOUT-PAL ;   tool-
single_consonant, long_vowel, palatalization, high_stem_vowel
* +Der+Der/Dimin+A:%^V2VV%^PAL%^CC2C A-02_MUORYZH-WITH-PAL ;   tooʹl-

* LEXICON A-01_LUOSS  luõss:luõss
Sg_Nom: vow_di:vow_high:pal_no:cns_gem_ss_type
1.1.1.1.1.4. Sg_Nom="diphthong|geminate" Sg_Gen="diphthong|voiced_geminate"

THIS IS NOT THE SAME AS N_MUORR
* Yaml: **N-luoss**
* : A-02_SG-NOM ;	     			
* :%^KK2GG A-02_SG-ABE/ACC/GEN-PL-NOM ;	 luõzz
* :%^PAL%^CC2CCC%>e A-02_SG-ILL ;	 	 luõʹsˈse
* :%^KK2GG%>â A-02_SG-LOC ;			 luõzzâst
* :%^KK2GG A-02_SG-COM_IN ;			
* :%>â A-02_ESS/PAR ; 	   			
* :%^KK2GG A-02_PL-OBL ;			 luõzzi

* +Der+Der/Dimin+A:%^KK2GG A-02_MUORYZH-WITHOUT-PAL ;   luõzz-
* +Der+Der/Dimin+A:%^PAL%^KK2GG A-02_MUORYZH-WITH-PAL ;   luõʹzz-

Sg_Nom: vow_di:vow_high:pal_no:cns_gem
1.1.1.1.1.1. Sg_Nom="diphthong|geminate" Sg_Gen="diphthong|single_consonant" 

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].2 Has Specifically Pedagogical Gradation
Sg.Ill: 
## 1.1.1.1[1].2.1 Has Orthographic Gradation
## 1.1.1.1[1].2.1[] (Diphthong + Consonant and Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-muorr**
* : A-02_SG-NOM ;	    			 muõrr
* :%^CC2C A-02_SG-ABE/ACC/GEN ;		 muõr
* :%^PAL%^CC2CCC%>e A-02_SG-ILL ;    		 muõʹrˈre
* :%^CC2C%>â A-02_SG-LOC ;	 		 muõrâst
* :%^CC2C A-02_SG-COM_IN ;			 muõrin
* :%>â A-02_ESS/PAR ; 	  			 muõrrân
* :%^CC2C A-02_PL-NOM ;		 muõr
* :%^CC2C A-02_PL-OBL ;			 muõri

* +Der+Der/Dimin+A:%^CC2C A-02_MUORYZH-WITHOUT-PAL ;   muõr-
* +Der+Der/Dimin+A:%^PAL%^CC2C A-02_MUORYZH-WITH-PAL ;   muõʹr-

## FORMS
similar_to: N_VUYHSS
* Yaml: **N-miwhtt**
* :%^XYY2VY A-02_SG-COM_IN ;			 miõutin
* :%^XYY2VY  A-02_SG-ABE/ACC/GEN-PL-NOM ;	 miõut
* :%^PAL%>e A-02_SG-ILL ;	   	 miõʹhtte
* : A-02_SG-NOM ;	       			 miõhtt
* :%^XYY2VY%>â A-02_SG-LOC ;			 miõutâst
* :â A-02_ESS/PAR ;    	   			 miõhttân
* :%^XYY2VY A-02_PL-OBL ;			 miõuti

* +Der+Der/Dimin+A: A-02_MUORYZH-WITHOUT-PAL ;   miõhtt-
* +Der+Der/Dimin+A:%^PAL A-02_MUORYZH-WITH-PAL ;   riiʹǩǩ-

Sg_Ill="palatalization|e-final"

## 2. WORDS WITH TWO-SYLLABLE NOMINATIVE SINGULARS (2009: 288)
## 2.1 Sg.Loc in -âst. â-stems (Sg.Loc, Ess, Par).
## 2.1.3 Sg.Ill in palatalization and -e
## 2.1.3.3 Lacks Gradation (in last syllable)
## 2.1.3.3.1 Monophthong
## 2.1.3.3.1.3 Consonant always short
## 2.1.3.3.1.3.4 Sg.Nom long vowel AND Short consonant
## 2.1.3.3.1.3.4.1.Sg.Gen Weak Grade
## 2.1.3.3.1.3.4.1.3 Sg.Ill Weak Grade
plaan:plaan
* Yaml: **N-plaan**
* +Der+Der/Dimin+A: A-02_MUORYZH-WITHOUT-PAL ;   paar-
* +Der+Der/Dimin+A:%^PAL A-02_MUORYZH-WITH-PAL ;   paaʹr-

CLASS 1 LOW VOWEL, MONOPHTHONG, NO PALATALIZATION NOMINALS
## a-stems

Sg_Nom: vow_mono:vow_short:vow_low:pal_no:cns_gem
1.1.1.2.1. stem_with_gradation: yes 
1.1.1.2.1.1. Sg_Nom="short_vowel|geminate" Sg_Gen="long_vowel|geminate" 

Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Strong grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
N_A-URaise3-32
* Yaml: **N-pess, N-pall**
strong_geminate, short_vowel, no_palatalization, high_stem_vowel
* :%^VOWRaise%>u A-02_SG-ILL ;		  (3) Sg.Ill: pissu
Sg_Ill

strong_geminate, short_vowel, no_palatalization, low_stem_vowel
* : A-STEM-PX-STRENGTHEN ;            (5) pess
Ess_Px..., Sg_Ill..., N»A

strong_geminate, short_vowel, no_palatalization, low_stem_vowel
* : A-02_A-STEM_SG-NOM ;	    		  (1) Sg.Nom: pess
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

strong_geminate, short_vowel, no_palatalization, low_stem_vowel, stem_vowel: a
* :%>a A-02_ESS/PAR ; 			  (6) Ess: pessan

strong_geminate, long_vowel, no_palatalization, low_stem_vowel
* :%^V2VV A-02_A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	  (2) Pl.Nom: peess
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

strong_geminate, long_vowel, no_palatalization, high_stem_vowel
* +Der+Der/Dimin+A:%^V2VV%^VOWRaise%> A-01_PIISSUZH ;   (9) Dim.N.Sg.Nom: piissuž
* +Der+Der/Dimin+A:%^V2VV%> A-01_PEESSAZH ;   (9) Dim.N.Sg.Nom: pẹẹssaž

Sg_Nom: vow_mono:vow_long:vow_low:pal_no:cns_gem
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
N_A-URaise3-32
* Yaml: **soomm**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : A-02_A-STEM_SG-NOM ;	    		 (1) Sg.Nom: šoomm
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^CC2C A-02_A-STEM_SG-ABE/ACC/GEN-PL-NOM ;		 (2) Pl.Nom: šoom
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VV2V%^VOWRaise%>u A-02_SG-ILL ; 		 (3) Sg.Ill: šummu
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* :%^VV2V A-STEM-PX-STRENGTHEN ;            (5) šomm
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a A-02_ESS/PAR ; 	     			 (6) Ess: šoomman

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+A:%^VOWRaise%^CC2C%> A-01_PIISSUZH ;	 (9) Dim.N.Sg.Nom: šuumuž
* +Der+Der/Dimin+A:%^CC2C%> A-01_PEESSAZH ;   (9) Dim.N.Sg.Nom: šoomaž

grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : A-02_A-STEM_SG-NOM ;	    			 (1) äldd
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^V2VV%^XYY2XY A-02_A-STEM_SG-ABE/ACC/GEN-PL-NOM ;  (2) ääld
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VOWRaise%>u A-02_SG-ILL ;		      	 (3) alddu
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;	    	   (5) äldd
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a A-02_ESS/PAR ;	   		    	 (6) älddan

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+A:%^V2VV%^VOWRaise%^XYY2XY A-01_PIISSUZH ;  (9) Dim.N.Sg.Nom: aalduž (2009: 312-313)
* +Der+Der/Dimin+A:%^V2VV%^XYY2XY%> A-01_PEESSAZH ;   (9) Dim.N.Sg.Nom: ääldaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)

* LEXICON A-02_A-STEM_SG-NOM  (1)
* LEXICON A-02_A-STEM_SG-ABE/ACC/GEN-PL-NOM   (2)

CLASS 1 LOW VOWEL, DIPHTHONG, NO PALATALIZATION NOMINALS

Sg_Nom: vow_di:vow_short:vow_low:pal_no:cns_gem_long
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.0 Lacks Palatalization
## 1.2.2.0.2 Has Specifically Pedagogical Gradation
## 1.2.2.0.2.0 Lack Orthographic Gradation
## 1.2.2.0.2.0[] (Diphthong + Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Strong grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-neavvv**
* : A-02_A-STEM_SG-NOM ;	    			  neävˈv
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

* :%^CCC2CC A-02_A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	  neävv
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

* :%^VOWRaise%>u A-02_SG-ILL ;			  niâvˈvu
Sg_Ill

* : A-STEM-PX-STRENGTHEN ;            (5) neävˈv
Ess_Px..., Sg_Ill..., N»A

* :%>a A-02_ESS/PAR ;   	       			 neävˈvan

* +Der+Der/Dimin+A:%^VOWRaise%^CCC2CC%> A-01_PIISSUZH ;   niâvvuž
* +Der+Der/Dimin+A:%^CCC2CC%> A-01_PEESSAZH ;   (9) Dim.N.Sg.Nom: neävvaž

similar_to: N_PLAAN
gradation: no
vowel_shift: no
Is for nouns with *-ast* Loc
a-stems (Sg.Loc, Ess, Par).
* Yaml: **N-pealdd**
* : A-02_A-STEM_SG-NOM ;	    		  kapteän
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

* : A-02_A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	  kapteän
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

* :%>a A-02_SG-ILL ;		  kapteän
Sg_Ill

* : A-STEM-PX-STRENGTHEN ;            (5) kapteän
Ess_Px..., Sg_Ill..., N»A

* :%>a A-02_ESS/PAR ;   	       		  kapteänan

* +Der+Der/Dimin+A:%^XYY2XY%> A-01_PEESSAZH ;   (9) Dim.N.Sg.Nom: kapteänaž

Sg_Nom: vow_mono:vow_long:vow_low:pal_no:cns_gem_dd_type
Is for nouns with *-ast* Loc, No gradation
N_A-U1-11
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (no vowel shift, all lowered)
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.2 Lacks Orthographic Gradation
## 1.2.2.2.1.2[] (Monophthong + Consonant)
Weak grade: Sg.Nom, Ess, Par
Weak grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **A-vaeaezhzh**
* : A-02_SG-NOM ;	    		 vääžž
* : A-02_SG-ABE/ACC/GEN-PL-NOM ;	 vääžž
* :%^VOWRaise%>u A-02_SG-ILL ;		 vaažžu
* +Use/NGminip+Use/NG:%>a A-02_SG-ILL ;  	      	 vääžža
* :%>a A-02_SG-LOC ;	   		 vääžžast
* :%>a A-02_SG-COM_IN ;		 vääžžain
* :%>a A-02_ESS/PAR ;     			 vääžžan
* :%>a A-02_PL-OBL ;			 vääžžai
* +Der+Der/Dimin+A:%^VOWRaise A-01_PIISSUZH ;	 vaažžuž
* +Der+Der/Dimin+A: A-01_PEESSAZH ;   (9) Dim.N.Sg.Nom: vääžžaž
* +Use/NGminip+Use/NG+Der+Der/Dimin+N: N_KUYLAZH ;   	 vääžžaž

CLASS 1 HIGH VOWEL TYPE, NO PALATALIZATION NOMINALS

CLASS 1 HIGH VOWEL, PALATALIZATION NOMINALS

Sg_Nom: vow_mono:vow_short:vow_high_u:pal_yes:cns_gem_dd_type
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-nubb**
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) nubb
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) nuʹbb-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) nuʹbb Ess+Px..

Bahuvriihi: årddnjuuʹnn
* Yaml: **N-njuunn**

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) njuunn-
* :%^VV2V%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) njuʹn-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) njuʹnn Ess+Px..

## FORMS
## (1) Sg.Nom: juʹvjj
## (2) Pl.Nom: juuʹj
## (3) Sg.Ill: joujja
## (4) Sg.Loc: juuʹjest
## (5) Sg.Com: juuʹjin
## (6) Ess: juʹvjjen
## (7) Par: juʹvjjed
## (8) Pl.Acc: juuʹjid
## (9) Der/Dimin.N.Sg.Nom: joujjaž
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-juvjj**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) juvjj-
* :%^VV2V%^PAL%^XYY2VY E-STEM-PX-ALLEGRO ;  (11) juʹj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) juʹvjj Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
## (1) Sg.Nom: kueʹll
## (2) Pl.Nom: kueʼl
## (3) Sg.Ill: kuâlˈla
## (4) Sg.Loc: kueʹlest
## (5) Sg.Com: kuõʹlin ~ kueʹlin
## (6) Ess: kueʹllen
## (7) Par: kueʹlled
## (8) Pl.Acc: kuõʹlid ~ kueʹlid
## (9) Der/Dimin.N.Sg.Nom: kuâlaž 
* Yaml: **N-kuell**
* There are several stem types 
* kueʹll:kuâll

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kuâll-
* :%^PALE%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) kueʹl-
* :%^PALE%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kueʹlˈl Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-muerjj**
* :%^PALE%^PAL%^XYY2XY DenominalAdjsCShort ; 
* :%^PALE%^PAL A-02_E-STEM_SG-NOM ;		  	 (1) Sg.Nom: mueʹrjj
* :%^PALE%^PAL%^XYY2XY A-02_E-STEM_SG-ABE/ACC/GEN ;	 (2) Pl.Nom: mueʹrj
* :%^PALE%^PAL%^XYY2XY A-02_PL-NOM ;	 (2) Pl.Nom: mueʹrj
* : A-02_E-STEM_SG-ILL ;  		     	 (3) Sg.Nom: muârjja
* :%^PALE%^PAL%^XYY2XY%>e A-02_SG-LOC ;		 (4) Sg.Loc: mueʹrjest
* :%^VOWRaise%^PAL%^XYY2XY A-02_SG-COM_IN ;  (5) Sg.Com: muõʹrjin
* +Use/NGminip+Use/NG:%^PALE%^PAL%^XYY2XY A-02_SG-COM_IN ;  (5) Sg.Com:  mueʹrjin
* :%^VOWRaise%^PAL%^XYY2XY A-02_E-STEM_PL-OBL ;  (5) Sg.Com: muõʹrjin
* +Use/NGminip+Use/NG:%^PALE%^PAL%^XYY2XY A-02_E-STEM_PL-OBL ;  (5) Sg.Com:  mueʹrjin
* :%^PALE%^PAL%>e A-02_ESS/PAR ; 	 		   (6) Pl.Nom: mueʹrjjen
* :%^XYY2XY A-02_E-STEM_N_KUYLAZH ;		   (9) Der/Dimin.N.Sg.Nom: muârjaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) muârjj-
* :%^VOWRaise%^PALE%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) mueʹrj-
* :%^PALE%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) mueʹrjj Ess+Px..

CLASS 1 LOW VOWEL, PALATALIZATION, ILLATIVE IN U NOMINALS

WORK NEEDED

CLASS 1 LOW VOWEL, PALATALIZATION, ILLATIVE IN A NOMINALS
## e-stems

similar_to: N_PAPP
vowel: monophthong
vowel_shift: yes
consonantism: geminate
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-vaell, N-kall**
strong_geminate, short_vowel, palatalization, low_stem_vowel
strong_geminate, short_vowel, depalatalization, low_stem_vowel
strong_geminate, long_vowel, palatalization, low_stem_vowel
strong_geminate, long_vowel, palatalization, high_stem_vowel
strong_geminate, long_vowel, depalatalization, low_stem_vowel
* : E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) väll-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) väʹl-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) väʹll Ess+Px..

similar_to: N_PAPP
vowel: monophthong
vowel_shift: ??
consonantism: geminate
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **A-ucc**
strong_geminate, short_vowel, palatalization, low_stem_vowel
strong_geminate, short_vowel, depalatalization, low_stem_vowel
strong_geminate, long_vowel, palatalization, low_stem_vowel
strong_geminate, long_vowel, palatalization, high_stem_vowel
strong_geminate, long_vowel, depalatalization, low_stem_vowel
* : E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) ucc-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) uʹc-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) uʹcc Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-saeaemm**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) säämm-
* :%^VV2V%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) säʹm-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) säʹmm Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **caacc**
* There are several stem types
* čääʹcc:čääʹcc
* :%^PAL A-02_E-STEM_SG-NOM ;                               (1) čääʹcc
* :%^PAL%^KK2GG A-02_E-STEM_SG-ABE/ACC/GEN ;         (2) čääʼʒʒ
* :%^PAL%^KK2GG A-02_PL-NOM ;         (2) čääʼʒʒ
* :%^VV2V A-02_E-STEM_SG-ILL ;               (3) čäcca
* :%^PAL%^KK2GG%>e A-02_SG-LOC ;                     (4) čääʼʒʒest
* :%^VOWRaise%^PAL%^KK2GG A-02_SG-COM_IN ;           (5) čaaʼʒʒin
* :%^VOWRaise%^PAL%^KK2GG A-02_E-STEM_PL-OBL ;           (5) čaaʼʒʒin
* :%^PAL%>e A-02_ESS/PAR ;                               (6) čääʼccen
* :%^KK2GG A-02_E-STEM_N_KUYLAZH ;     (9) čääʒʒaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) čääcc-
* :%^VV2V%^PAL%^KK2GAllegro E-STEM-PX-ALLEGRO ;  (11) čäʹʒ-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) čäʹcc Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-algg**
* :%^PAL A-02_E-STEM_SG-NOM ;		  			 (1) Sg.Nom: âʹlǧǧ
* :%^V2VV%^PAL%^XYY2XY A-02_E-STEM_SG-ABE/ACC/GEN ;	 (2) Pl.Nom: ââʹlj
* : A-02_E-STEM_SG-ILL ;	     			   	 (3) Sg.Ill: âlgga
* :%^V2VV%^PAL%^XYY2XY%>e A-02_SG-LOC ;		 (4) Sg.Loc: ââʹljest
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY A-02_SG-COM_IN ;  (5) Sg.Com: õõʹljin
* :%^PAL%>e A-02_ESS/PAR ;	       			 (6) Ess: âʹlǧǧen
* :%^V2VV%^XYY2XY A-02_E-STEM_N_KUYLAZH ;		 (9) Der/Dimin.N.Sg.Nom: ââlǥaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kälbb-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) käʹlb-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) käʹlbb Ess+Px..
* :%^V2VV%^PAL%^XYY2XY A-02_PL-NOM ;	 (2) Pl.Nom: ââʹlj
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY A-02_E-STEM_PL-OBL ;  (5) Sg.Com: õõʹljin

* Yaml: **N-haeaesk**
* :%^PAL A-02_E-STEM_SG-NOM ;		   (1) Sg.Nom: hääʹsǩ
* :%^PAL A-02_E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: hääʹsǩ
* :%^PAL A-02_PL-NOM ;  (2) Pl.Nom: hääʹsǩ
* : A-02_E-STEM_SG-ILL ;	      (3) Sg.Ill: hääska
* :%^PAL%>e A-02_SG-LOC ;   (4) Sg.Loc: hääʹsǩest
* :%^PAL A-02_SG-COM_IN ;      (5) Sg.Com: hääʹsǩin
* :%^PAL%>e A-02_ESS/PAR ; 	        (6) Ess: hääʹsǩen
* :%^PAL%> A-02_E-STEM_PL-OBL ;    (8) Pl.Acc: hääʹsǩid
* : A-02_E-STEM_N_KUYLAZH ;  (9) Der/Dimin.N.Sg.Nom: hääskaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) hääsk-
* :%^PAL E-STEM-PX-ALLEGRO ;  (11) hääʹsǩ-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) hääʹsǩ Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (NO vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-kerjj**
* :%^PAL A-02_SG-NOM ;		  	 (1) Sg.Nom: ǩeʹrjj
* :%^V2VV%^PAL%^XYY2XY A-02_SG-ABE/ACC/GEN-PL-NOM ;  (2) Pl.Nom: ǩeeʹrj
* : A-02_E-STEM_SG-ILL ;	     			    (3)  Sg.Ill: ǩerjja
* :%^V2VV%^PAL%^XYY2XY%>e A-02_SG-LOC ;	    (4) Sg.Loc: ǩeeʹrjest
* :%^V2VV%^PAL%^XYY2XY A-02_SG-COM_IN ;	    (5) Sg.Com: ǩeeʹrjin
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY A-02_SG-COM_IN ;  (5) Sg.Com: ǩiiʹrjin
* :%^PAL%>e A-02_ESS/PAR ;  (6) Ess: ǩeʹrjjen
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY%> A-02_PL-OBL ;  (8) Pl.Acc: ǩiiʹrjid
* +Use/NGminip+Use/NG:%^V2VV%^PAL%^XYY2XY%> A-02_PL-OBL ;  (8) Pl.Acc: ǩeeʹrjid
* :%^V2VV%^XYY2XY A-02_E-STEM_N_KUYLAZH ;   (9) Der/Dimin.N.Sg.Nom: ǩeerjaž

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (NO vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-jaurr**

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster variation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-peivv**
* :%^PAL A-02_E-STEM_SG-NOM ;	     (1) Sg.Nom: peiʹvv
* :%^V2VV%^PAL%^XYY2XY A-02_E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: peeiʼv
* :%^V2VV%^PAL%^XYY2XY A-02_PL-NOM ;  (2) Pl.Nom: peeiʼv
* : A-02_E-STEM_SG-ILL ;		       (3) Sg.Ill: pẹivva
* :%^V2VV%^PAL%^XYY2XY%>e A-02_SG-LOC ;	       (4) Sg.Loc: peeiʹvest
* :%^V2VV%^PAL%^XYY2XY A-02_SG-COM_IN ;	       (5) Sg.Com: peeiʹvin
* :%^PAL%>e A-02_ESS/PAR ; 		   (6) Ess: peiʹvven
* :%^V2VV%^PAL%^XYY2XY A-02_E-STEM_PL-OBL ;  (8) Pl.Acc: peeiʹvid
* :%^V2VV%^XYY2XY A-02_E-STEM_N_KUYLAZH ;  (9) Der/Dimin.N.Sg.Nom: pẹẹivaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) pẹivv-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) peiʹv-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) peiʹvv Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE  ẹ, ä
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-suekkj**

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) suäkk-
* :%^VOWRaise%^PALẸ%^Allegro%^PAL%^KK2GAllegro E-STEM-PX-ALLEGRO ;  (11) suẹˈʹj-
* :%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) suäʹǩˈǩ Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE  ẹ, ä
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-kuett**
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kuätt-
* :%^PAL%^CC2C E-STEM-PX-ALLEGRO ;  (11) kuẹʹđ-
* :%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kuäʹtˈt- Ess+Px..

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) hiänn-
* :%^PAL%^CC2C E-STEM-PX-ALLEGRO ;  (11) hiẹʹn-
* :%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) hiäʹnˈn- Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE  ẹ, ä
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: vuẹiʹvv
## (2) Pl.Nom: vuẹiʼv
## (3) Sg.Ill: vuäivva
## (4) Sg.Loc: vuẹiʹvest
## (5) Sg.Com: vueiʹvin
## (6) Ess: vuẹiʹvven
## (7) Par: vuẹiʹvved
## (8) Pl.Acc: vueiʹvid
## (9) Der/Dimin.N.Sg.Nom: vuäivaž
NumContLex="1.113"
* Yaml: **N-vueivv**
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) vuäivv-
* :%^VOWRaise%^PALẸ%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) vuẹiʹv-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) vuäiʹvv- Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE  ẹ, ä
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: čuäʹrvv
## (2) Pl.Nom: čuẹʼrv
## (3) Sg.Ill: čuärvva
## (4) Sg.Loc: čuẹʹrvest
## (5) Sg.Com: čueʹrvin
## (6) Ess: čuäʹrvven
## (7) Par: čuäʹrvved
## (8) Pl.Acc: čueʹrvid
## (9) Der/Dimin.N.Sg.Nom: čuärvaž
NumContLex="1.113"
* Yaml: **N-chuaervv**
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) čuärvv-
* :%^PALẸ%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) čuẹʹrv-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) čuäʹrvv Ess+Px..

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) vuâss-
* :%^PALE%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) vueʹss-
* :%^PALE%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) vueʹsˈs Ess+Px..

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: ELSE
Lowered: Sg.Ill
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-jeaggj**
* There are several stem types 
*  A-02_E-STEM_SG-ILL ;	      (3) jeägˈga
* :%^PAL A-02_E-STEM_SG-NOM ;        (1) jeäʹǧˈǧ
* :%^VOWRaise%^PALẸ%^PAL%^CCC2CC A-02_E-STEM_SG-ABE/ACC/GEN ;	  (2) jiẹʹǧǧ
* :%^VOWRaise%^PALẸ%^PAL%^CCC2CC A-02_PL-NOM ;	  (2) jiẹʹǧǧ
* :%^VOWRaise%^PALẸ%^PAL%^CCC2CC%>e A-02_SG-LOC ;   (4) jiẹʹǧǧest
* :%^VOWRaise%^PALE%^PAL%^CCC2CC A-02_SG-COM_IN ;   (5) jieʹǧǧin
* :%^VOWRaise%^PALE%^PAL%^CCC2CC A-02_E-STEM_PL-OBL ;   (5) jieʹǧǧin
* :%^PAL%>e A-02_ESS/PAR ; 	  (6) jeäʹǧˈǧen, (7) jeäʹǧˈǧed

* :%^CCC2CC A-02_E-STEM_N_KUYLAZH ; 	      			  (9) jeäggaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;				  (10) jeägˈg-
* :%^VOWRaise%^PALẸ%^Allegro%^PAL%^CCC2CAllegro E-STEM-PX-ALLEGRO ;  (11) jiẹˈʹǧ-
* :%^PAL E-STEM-PX-STRENGTHEN-WITH-PAL ;			    (12) jeäʹǧˈǧ
* +Use/NGminip+Use/NG:%^VOWRaise%^PALẸ%^PAL%^CCC2CC E-STEM-PX-ALLEGRO ;   (2)

* LEXICON A-02_E-STEM_SG-NOM  (1)

* LEXICON A-02_E-STEM_SG-ABE/ACC/GEN  (2)
e.g. +Sg+Acc+PxPl3
e.g. +Use/NG+Sg+Loc+PxSg1

* LEXICON A-02_E-STEM_SG-ILL  (3)

* LEXICON A-02_E-STEM_N_KUYLAZH  (9)

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
* Yaml: **N-jeaerggj, N-keadgg**
* There are several stem types 
* jeäʹrǧǧ:jeäʹrǧǧ
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) jeärgg-
* :%^PALẸ%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) jiẹʹrj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) jeäʹrmm Ess+Px..

WHAT IS THIS CLASS

* +Der+Der/Dimin+A:%^V2VV A-02_MUORYZH-WITHOUT-PAL ;   paar-
* +Der+Der/Dimin+A:%^V2VV%^PAL A-02_MUORYZH-WITH-PAL ;   paaʹr-

e.g.
e.g. +Use/NG+Sg+Loc+PxSg3
e.g. +Sg+Loc+PxSg1

## CLASS 2 NOMINALS with high stem vowel and i-stems

* LEXICON A-01_JUURD  juurd:jurdd
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
N_GEN2I-ILLAX3-LOCEX3-NOM1X1
* Yaml: **N-juurd**
* There are several stem types 
* juurd:juurd

* LEXICON A_KOSSI  kõssi:kõ%^1VOW%{ʹØ%}ss
* LEXICON A-01_KOSSI  kõssi:kõ%^1VOW%{ʹØ%}ss

* LEXICON A-01_MAADD  maadd:madd
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
* Yaml: **N-maadd**
* There are several stem types 
* maadd:maadd
strong_geminate, long_vowel, no-palatalization, high_stem_vowel
strong_geminate, short_vowel, no-palatalization, high_stem_vowel

CLASS 2 NOMINALS with low stem vowel and u-stems
## u-stems

CLASS 2 NOMINALS with high stem vowel and â-stems

CLASS 3 HIGH VOWEL, MONOPHTHONG, NO PALATALIZATION NOMINALS
## m-stems

* LEXICON A-01_SOOUS  sõõus:sõ%^1VOWhss

CLASS 3

## n-stems

CLASS 3

CLASS 4 BISYLLABIC, HIGH VOWEL, MONOPHTHONG, NO PALATALIZATION
IN PENULTIMATE Â:0

* LEXICON A-01_VOONYS   võõnâs:võnnâs
like TOLL

N_GEN2X3-NOM2X1
* Yaml: **N-voonas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON A-01_KOODDYS  kõõddâs:kõddâs
like N_PODD, N_PAPP, N_LUUBBYL
* Yaml: **N-kooddas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON A-01_TAALKYS  taalkâs:talkkâs
like PÕRTT
* Yaml: **N-taalkas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON A-01_PIIUTYS  piiutâs:pi%^1VOWhttâs
like N_VAHTT
stemtype n-stem piiutâs:piiutâs
* Yaml: **N-piiutas**
* :%^Pen%^V2VV%^Pen%^XYY2VY A-02_SG-NOM ;  piiutâs
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON A-01_FIINYS  fiinâs:fijnnâs
stemtype n-stem fiinâs:fiinâs

* Yaml: **A-fiinas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

CLASS 4 BISYLLABIC, HIGH VOWEL, DIPHTHONG, NO PALATALIZATION

*  LEXICON A-01_TUOVYS  tuõvâs:tuõvˈvâs
* Yaml: **N-tuovas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON A-01_VUOIVYS  vuõivâs:vuõivvâs

* Yaml: **N-vuoivas**
*  :%^Pen%^XYY2XY A-02_SG-NOM ;	        (1) Sg_Nom: vuõivâs
*  :%^VC A-02_SG-ABE/ACC/GEN-PL-NOM ;   (2) Pl_Nom: vuõivvâz
*  :%^RmVow%>a A-02_SG-ILL ;   (3) Sg_Ill: vuõivvsa
*  :%^RmVow%>e A-02_SG-LOC ;    (4) Sg_Loc: vuõivvsest
*  :%^RmVow A-02_SG-COM_IN/PL-OBL ;     (5) Sg_Com: vuõivvsin
*  :%^RmVow%>e A-02_ESS/PAR ; 	  (6) Ess: vuõivvsen
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON A-01_RUODDYS  ruõddâs:ruõdˈdâs
N_GEN2X3-NOM2X1
* Yaml: **N-tuoddar**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

CLASS 4 BISYLLABIC, LOW VOWEL, MONOPHTHONG, NO PALATALIZATION

* LEXICON A-01_KOAOADDAS  kååddas:kåddas
N_GEN2X3-NOM2X1
* Yaml: **N-kååddas**
* :%^RmVow VOONYS-STEM-PX ;  kådds-

* LEXICON A-01_KOALVAK  kåålvak:kåålvak
stemtype n-stem kåålvak:kåålvak
Palatalization loss in Sg.Ill
* Yaml: **N-paattakj**
* :%^RmVow%>a A-02_SG-ILL ;  +Sg+Ill: kåålvka
* :%^RmVow%^PALK%>e A-02_SG-LOC ;  +Sg+Loc: kåålvǩest
* :%^RmVow%^PALK VOONYS-STEM-PX ;  såbbr-

* LEXICON A-01_AACCIKH  pååttaǩ:pååttaǩ
stemtype n-stem pååttaǩ:pååttaǩ
Palatalization loss in Sg.Ill
* Yaml: **N-paattakj**
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

stemtype n-stem jânnam:jânnam
N_GEN2X3-NOM2X1
* Yaml: **N-jânnam**
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON A-01_KOAOAVAS  kååvas:kåvvas
* Yaml: **N-kaavas**
* :%^VC A-02_SG-ABE/ACC/GEN-PL-NOM ;  kåvvaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON A-01_PAEAELKAS  päälkas:pälkkas
* Yaml: **N-paalkas**
* :%^VC A-02_SG-ABE/ACC/GEN-PL-NOM ;  pälkkaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON A-01_CEAEGGAS  ceäggas:ceägˈgas
* Yaml: **N-ceaeggas**
* :%^VC A-02_SG-ABE/ACC/GEN-PL-NOM ;  ceägˈgaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

CLASS 4 BISYLLABIC, LOW VOWEL, DIPHTHONG, NO PALATALIZATION
IN PENULTIMATE A:0

## 2. WORDS WITH TWO-SYLLABLE NOMINATIVE SINGULARS (2009: 252)
## 2.3 Sg.Loc in -est. e-stems (Sg.Loc, Ess, Par).
## 2.3.2 Sg.Ill in -a
## 2.3.2.2 LACKS Gradation
## 2.3.2.2.1 Penultimate stem vowel loss: (Sg.Ill, Sg.Loc, Sg.Com; Ess, Par; Pl.Gen, Pl.Acc, Pl.Ill, Pl.Loc, Pl.Com, Pl.Abe)
## 2.3.2.2.1.1 The Sg.Com vowel i appears before final n  
* Yaml: **N-juaghghas**
* :%^VC  A-02_SG-ABE/ACC/GEN-PL-NOM ;  juâkˈkaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

CLASS 4 BISYLLABIC, LOW VOWEL, MONOPHTHONG, PALATALIZATION

* LEXICON A_MUYLAS  muâlas:muâlˈlas
* LEXICON A-01_MUYLAS  muâlas:muâlˈlas

* Yaml: **N-muylas**
* :%^VC SG-ABE/ACC/GEN ;  muâlˈlaz
* :%^VC PL-NOM ;  muâlˈlaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* Yaml: **kerres**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

CLASS 4 BISYLLABIC, LOW VOWEL, DIPHTHONG, PALATALIZATION
IN PENULTIMATE E:0

* LEXICON A-01_KAAQLLES  kääʹlles:källes
* Yaml: **N-kaeaelles**
* :%^RmVow VOONYS-STEM-PX ;  källs-

* LEXICON A-01_OAQVES  ååʹves:åvves
* Yaml: **N-aaves**
* :%^RmVow VOONYS-STEM-PX ;  åvvs-

* LEXICON A-01_KAAQRBES  kääʹrbes:kärbbes
* Yaml: **N-kaeaerbes**
* :%^RmVow VOONYS-STEM-PX ;  kärbbs-

* LEXICON A-01_PUAQRES  puäʹres:puärˈres
* Yaml: **N-puaeres**
* :%^RmVow VOONYS-STEM-PX ;  puärˈrs-

* LEXICON A-01_PUUQTTES  puuʹttes:pu%^1VOWtt
* Yaml: **A-puuqttes**
* :%^VOWLower%>s VOONYS-STEM-PX ;  potts-

## -stems

* LEXICON A-01_CHUEQDHES  čueʹđes:čuâttes
* Yaml: **N-chuedhes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON A-01_KHEEQLES  ǩeeʹles:ǩeâlˈles
* Yaml: **N-chuedhes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON A-01_PUEAQRDES  pueʹrdes:puä%{ʹØ%}rddes
* Yaml: **N-chuaeckes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* Yaml: **N-sett**
* There are several stem types 

## e-a-stems

čâustõk+N+Sg+Gen:čâustõõǥǥ
* +Der+Der/Dimin+A:%{XC%}%^V2VV%^K2GG A-02_MUORYZH-WITHOUT-PAL ;   kuuzz-
* +Der+Der/Dimin+A:%{XC%}%^V2VV%^PAL%^K2GG A-02_MUORYZH-WITH-PAL ;   kuuʹzz-

* Yaml: **N-radio**
*  A-02_SG-NOM ;	     (TSA-1) +Sg+Nom:
*  A-02_SG-ABE/ACC/GEN ;    (=TSA-2)
* :%^1VOW%^V2VVʹje A-02_SG-ILL ;	     (TSA-3) +Sg+Ill:
* +Use/NGminip+Use/NG: A-02_SG-ILL ;    (TSA-3) +Sg+Ill:
*  A-02_SG-LOC ;	     ()
*  A-02_SG-COM_IN ;	     (=TSA-4)
*  A-02_ESS/PAR ; 	     ()
*  A-02_PL-NOM ;	     (TSA-2) +Pl+Nom:
*  A-02_PL-OBL ;	     (TSA-4) +Pl+Gen: 

* LEXICON A-01_NALLSHEM  čââʹlmteʹm:čââʹlmtẹ%^1VOW%{ʹØ%}m
292-295
* Yaml: **A-chaalmtem**
Ǩiõllkaʹlddi. 2017-04-04
* *čââʹlmtẹ%^1VOW%{ʹØ%}m*
* *čââʹlmtẹ00m*

## Stem types from the grammar

*These are still not fixed.*

* LEXICON A-01_PRSPRC-EEI  tuõđšteei:tueʹjjee
tuõđšteei:tueʹjjee
* Yaml: **N-tuodhshteei**

Class 5 according to Feist 152
## k-stems

stemtype 
* Yaml: **N-chaustok**

Class 6 according to Feist 153-154
PRESENT A-02_PARTICIPLES

* LEXICON A-01_PRSPRC-NOGRADE-I  uuidi:uuidi
* Yaml: **N-joovvi**
* There are several stem types
* cõggi:cõggi
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VCC-I  cõggi:cõggi
* Yaml: **N-joovvi**
* There are several stem types
* cõggi:cõggi
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VQCC-I 
* Yaml: **N-joovvi**
* There are several stem types
* cõggi:cõggi
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VVCC-I  jõõvvi:jõõvvi
* Yaml: **N-joovvi**
* There are several stem types
* jõõvvi:jõõvvi
NumContLex="1.2"
* : A-02_SG-NOM ;	       		 (1) jõõvvi
* : A-02_SG-ABE/ACC/GEN ;		 (2) jõõvvi
* :%^I2J%>a A-02_SG-ILL ;		 jõõvvja
* :%^I2J%>e A-02_SG-LOC ;		 jõõvvjest
* :%^I2J A-02_SG-COM_IN ;		 jõõvvjin
* :%^I2J%>e A-02_ESS/PAR ;  		 jõõvvjen
* :%^CC2C A-02_PL-NOM ;		 jõõvi
* :%^I2J A-02_PL-OBL ;	 jõõvvji
* +Use/NGminip+Use/NG:%^CC2C%^I2J A-02_PL-OBL ;		 jõõvji
* +Use/NGminip+Use/NG: A-02_PL-NOM ;		 jõõvvi

* LEXICON A-01_PRSPRC-VVQCC-I  jooʹtti:jooʹtti
* Yaml: **N-joovvi**
* There are several stem types
* jõõvvi:jõõvvi
NumContLex="1.2"
* : A-02_SG-NOM ;	       		 (1) jõõvvi
* : A-02_SG-ABE/ACC/GEN ;		 (2) jõõvvi
* :%^I2J%>a A-02_SG-ILL ;		 jõõvvja
* :%^I2J%>e A-02_SG-LOC ;		 jõõvvjest
* :%^I2J A-02_SG-COM_IN ;		 jõõvvjin
* :%^I2J%>e A-02_ESS/PAR ;  		 jõõvvjen
* :%^CC2C A-02_PL-NOM ;		 jõõvi
* :%^I2J A-02_PL-OBL ;	 jõõvvji
* +Use/NGminip+Use/NG:%^CC2C%^I2J A-02_PL-OBL ;		 jõõvji
* +Use/NGminip+Use/NG: A-02_PL-NOM ;		 jõõvvi

* LEXICON A-01_PRSPRC-VVKK-I  lookki:lookki
* Yaml: **lookk**
* There are several stem types
* lookki:lookki
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VVQKK-I  
* Yaml: **lookk**
* There are several stem types
* lookki:lookki
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VWKK-I  ǩiõssi:ǩiõssi
* Yaml: **N-joovvi**
* There are several stem types
* sirddi:sirddi
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VWQKK-I 
* Yaml: **N-joovvi**
* There are several stem types
* sirddi:sirddi
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VWCC-I  vuõlli:vuõlli
* Yaml: **N-vuolli**
* There are several stem types
* vuõlli:vuõlli
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VWQCC-I  
* Yaml: **N-vuolli**
* There are several stem types
* vuõlli:vuõlli
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VWCCC-I  kuõʒʒi:kuõʒˈʒi
* Yaml: **N-vuolli**
* There are several stem types
* vuõlli:vuõlli
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VWQCCC-I  kuõddi:kuõʹdˈdi
* Yaml: **N-vuolli**
* There are several stem types
* vuõlli:vuõlli
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VWXYY-I  suõskki:suõskki
* Yaml: **suoskki**

* LEXICON A-01_PRSPRC-VWQXYY-I  
* Yaml: **suoskki**

* LEXICON A-01_PRSPRC-VCC-AI  kåččai:kåččai
* Yaml: **kachchai**
* There are several stem types
NumContLex="
* : A-02_SG-NOM ; 
* : A-02_SG-ABE/ACC/GEN ; 
* :%^RmVow%^I2J%>a A-02_SG-ILL ; 
* :%^RmVow%^I2J%>e A-02_SG-LOC ; 
* :%^RmVow%^V2VV A-02_SG-COM_IN ; 
* :%^I2J%>e A-02_ESS/PAR ; 
* :%^Pen%^V2VV A-02_PL-NOM ; 
* :%^RmVow%^I2J A-02_PL-OBL ; 
* +Use/NGminip+Use/NG: A-02_PL-NOM ; 
* +Use/NGminip+Use/NG:%^Pen%^V2VV%^RmVow%^I2J A-02_PL-OBL ; 

* LEXICON A-01_PRSPRC-VVCC-AI  peellai:peellai
* Yaml: **paassai**
* There are several stem types
NumContLex="
* : A-02_SG-NOM ;  Sg.Nom.Indef: peellai 
* : A-02_SG-ABE/ACC/GEN ; 
* :%^RmVow%^I2J%>a A-02_SG-ILL ;  Sg.Ill.Indef: peellja
* :%^RmVow%^I2J%>e A-02_SG-LOC ; 
* :%^RmVow%^V2VV A-02_SG-COM_IN ; 
* :%^I2J%>e A-02_ESS/PAR ; 
* :%^Pen%^CC2C A-02_PL-NOM ;  Pl.Nom.Indef: peelai
* :%^RmVow%^I2J A-02_PL-OBL ; 
* +Use/NGminip+Use/NG: A-02_PL-NOM ; 
* +Use/NGminip+Use/NG:%^Pen%^CC2C%^RmVow%^I2J A-02_PL-OBL ; 

* LEXICON A-01_PRSPRC-VVKK-AI  pååssai:pååssai
* Yaml: **paassai**
* There are several stem types
NumContLex="
* : A-02_SG-NOM ;  Sg.Nom.Indef: pååssai 
* : A-02_SG-ABE/ACC/GEN ; 
* :%^RmVow%^I2J%>a A-02_SG-ILL ;  Sg.Ill.Indef: pååssja
* :%^RmVow%^I2J%>e A-02_SG-LOC ; 
* :%^RmVow%^I2J A-02_SG-COM_IN ; 
* :%^I2J%>e A-02_ESS/PAR ; 
* :%^Pen%^KK2GG A-02_PL-NOM ;  Pl.Nom.Indef: pååzzai
* :%^RmVow%^I2J A-02_PL-OBL ; 
* +Use/NGminip+Use/NG: A-02_PL-NOM ; 
* +Use/NGminip+Use/NG:%^Pen%^KK2GG%^RmVow%^I2J A-02_PL-OBL ; 

* LEXICON A-01_PRSPRC-VXYY-AI  särnnai:särnnai
* Yaml: **sarnnai**
* There are several stem types
* särnnai:särnnai
NumContLex="

* LEXICON A-01_PRSPRC-VWCC-AI  vuejjai:vuejjai
* Yaml: **N-vuejjai**
* There are several stem types
* vuejjai:vuejjai
NumContLex="

* LEXICON A-01_PRSPRC-VWKK-AI  reäkkai:reäkkai
* Yaml: **N-reakkai**
* There are several stem types
* reäkkai:reäkkai
NumContLex="

* LEXICON A-01_PRSPRC-VWCCC-AI  vuäggai:vuägˈgai
* Yaml: **N-reakkai**
* There are several stem types
* vuägˈgai:vuägˈgai
NumContLex="

* LEXICON A-01_PRSPRC-VWXYY-AI  meälttai:meälttai
* Yaml: **sarnnai**
* There are several stem types
* meälttai:meälttai
NumContLex="

* LEXICON A-01_ZHEEVAI  žeevai:žẹẹvai
* Yaml: **zheevai**
NumContLex="

participles in -I from verbs in ʹ-ed

* LEXICON A-01_PRSPRC-VXYY-I  äjjnõʹstti:äjjnõʹstti
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VQXYY-I  äjjnõʹstti:äjjnõʹstti
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VHYY-I  lahtti:la%^1VOWhtti
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VQHYY-I  aʹhtti:a%^1VOW%{ʹØ%}h%{ʹØ%}tti
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VWHYY-AI  veâhssai:veâhssai
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"

* Yaml: **N-suvddi**
* There are several stem types
NumContLex="1.2"

* LEXICON A-01_LIEQDHDHDHI  lieʹđđi:lieʹđˈđi
* Yaml: **N-liedhdhdhi**
NumContLex="1.2"

* Yaml: **lookk**
* There are several stem types
* vueʹstti:vueʹstti
NumContLex="1.2"

* LEXICON A-01_PRSPRC-VWHCC-I  viõhssi:viõhssi

* LEXICON A-01_VUOIQNNI  vuõiʹnni:vuõiʹnni
* Yaml: **lookk**
* There are several stem types
* vuõiʹnni:vuõiʹnni
NumContLex="1.2"

Class 7 according to Feist 154-155
## i-stems
* LEXICON A-01_HOQPPI  hõʹppi:hõʹppi
* Yaml: **hoppi**
* There are several stem types
* hõʹppi:hõʹppi

* LEXICON A-01_KAAMMI  kaammi:kaamm
* Yaml: **piannai**
* There are several stem types
kaammi
käʹmme
kaammjen
käʹmmi

Class 8 according to Feist 155-157

Class 9 according to Feist 158

* Yaml: **A-saemmlazh**
ânnʼjõž:ânnʼj

* Yaml: **A-saemmlazh**
säʹmmlaž:säʹmmlaž

Diminutive derivations

(2009: 306)
* muõrâž:muõr
* Yaml: **N-muorazh**

* LEXICON A-02_MUORYZH-WITHOUT-PAL  paapp-
* :âž A-02_SG-NOM ;		 paappâž
* :že A-02_SG-ILL ;	 paappže
* :že A-02_ESS/PAR ;	 	 paappžen

* LEXICON A-02_MUORYZH-WITH-PAL    paaʹpp-
* :%>e A-02_SG-ABE/ACC/GEN ;	 paaʹppe
* :%>e A-02_SG-LOC ;	 paaʹppest
* :%>e A-02_SG-COM_IN ;	     paaʹppein
* +Use/NGminip+Use/NG: A-02_SG-COM_IN ;	     paaʹppin
* :%>e A-02_PL-NOM ;	 paaʹppe
* :%>e A-02_PL-OBL ;	     paaʹppei Merja differentiates from regular pl
* +Use/NGminip+Use/NG: A-02_PL-OBL ;	     paaʹppi

* Yaml: **N-muorazh**

* : HatY-STEM-PX-WEAKEN_LARGO ;  säʹmmlõõžž- Sg_Loc_PxSg1
* :%^PAL HatY-STEM-PX-WEAKEN_LARGO ;  säʹmmlõõʹžž- Sg_Loc_PxSg1

* LEXICON A-01_PEESSAZH  piissuž:pẹẹss

* LEXICON A_PIISSUZH  piissuž:piiss

(2009: 310)
* piissuž:piiss
* Yaml: **N-piissuzh**

* kuâlaž:kuâl
* Yaml: **N-kualazh**
kuâla, kuâlže
* : LOAOADDAZH-STEM-PX-ALLEGRO ;  This should go to each stem type ERROR

Class 11 according to Feist 162

Class 12 Feist 163

### Noun phrase heads
### Pl

### Number and case tags

Used with words like juurd: jurddǥatta

Sg_Nom: vow_di:vow_short:vow_low:pal_no:cns_gem
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
uâ:uõ, eä:iâ
## FORMS
N_A-URaise3-32
* Yaml: **N-vuarr**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;            (5) vuârr
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+A:%^CC2C%> A-01_PEESSAZH ;   (9) Dim.N.Sg.Nom: vuâraž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)

## Adjectives -- to be moved

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/adjectives.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/adjectives.lexc)</small>

---

# src-fst-morphology-affixes-adverbs.lexc.md 


# Skolt Saami adverbs

* LEXICON ADV_OARRA  årra:årr
* LEXICON ADV_PIRRSES  pirrses:pirr

* LEXICON ADV_LUUZZYS  luuzzâs:luuzz

* LEXICON ADV_LUUQNNES  luuʹnnes:luunn

* LEXICON ADV_YQLNN  âʹlnn:â%^1VOWlnn

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/adverbs.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/adverbs.lexc)</small>

---

# src-fst-morphology-affixes-nouns.lexc.md 


# Skolt Saami noun morphology 

This file documents the Skolt Saami noun morphology, lexicon by lexicon.

## Unclassified words

* LEXICON N_  FOR (STILL) UNCLASSIFIED INCOMING NOUNS.

IRREGULAR NOUN nijdd
* LEXICON N_NIJDD  nijdd:ni

* LEXICON	NMN_NIJDD	 nijdd:ni
* Yaml: **N-nijdd**
* :jdd SG-NOM ;			 nijdd
* :jdd%>â ESS/PAR ; 	  		 nijddân, nijddâd
strong_geminate, short_vowel, palatalization
* :%{ʹØ%}jdd%^PAL%>e SG-ILL ;		 niʹjdde
strong_geminate, long_vowel
* :õđ SG-ABE/ACC/GEN-PL-NOM ;	 niõđ
* :õđ%>â SG-LOC ;		 niõđâst
* :õđ SG-COM_IN/PL-OBL ;	 niõđ, niõđid, niõđid, niõđin, niõđivuiʹm, niõđitaa

* +Der+Der/Dimin+N:õđ N_MUORYZH-WITHOUT-PAL ;   niõđ-
* +Der+Der/Dimin+N:õ%{ʹØ%}đ%^PAL N_MUORYZH-WITH-PAL ;   niõʹđ-

* +Err/GenreLeudd:õđâ SG-ABE/ACC/GEN-PL-NOM ;      niõđ Leudd 2018-09-20
* +Err/GenreLeudd:õđâ SG-COM_N ;  Leudd 2018-09-20

* nijdd # examples:*
* *nijdd:* `nijdd+N+Sg+Nom`
* *niõđ:* `nijdd+N+Sg+Gen`
* *niõđ:* `nijdd+N+Sg+Acc`
* *niʹjdde:* `nijdd+N+Sg+Ill`
* *niõđâst:* `nijdd+N+Sg+Loc`
* *niõđstad:* `nijdd+N+Sg+Loc+PxSg1`
* *niõđin:* `nijdd+N+Sg+Com`
* *nijddân:* `nijdd+N+Ess`
* *nijddâd:* `nijdd+N+Par`
* *niõđtaa:* `nijdd+N+Sg+Abe`
* *niõđ:* `nijdd+N+Pl+Nom`
* *niõđi:* `nijdd+N+Pl+Gen`
* *niõđid:* `nijdd+N+Pl+Acc`
* *niõđid:* `nijdd+N+Pl+Ill`
* *niõđin:* `nijdd+N+Pl+Loc`
* *niõđivuiʹm:* `nijdd+N+Pl+Com`
* *niõđitaa:* `nijdd+N+Pl+Abe`
* *niõđâž:* `nijdd+N+Der+Der/Dimin+N+Sg+Nom`
* *niõʹđe:* `nijdd+N+Der+Der/Dimin+N+Sg+Gen`

CLASS 1 HIGH VOWEL, NO PALATALIZATION NOMINALS
* LEXICON N_PAPP  papp:papp
similar_to: N_PESS
N_1Y-VCC
pa%{a0%}%{ʹ0%}%{p0%}p
V%{V0%}%{ʹ0%}%{C0%}C
Sg_Nom:
high-vowel=yes
monophthong=yes
long-vowel=yes
palatalization=no
consonantism=quant-gem
long-consonant=yes

1.1.1.1.1.1. Sg_Nom="short_vowel|geminate" Sg_Gen="long_vowel|geminate" 

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Strong grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-papp**
strong_geminate, short_vowel
* : SG-NOM ;			 papp
* :%>â ESS/PAR ; 	  		 pappân, pappâd

strong_geminate, short_vowel, palatalization
* :%^PAL%>e SG-ILL ;		 paʹppe
* :%^PAL N2A_LUOQSSI ;		 N»A: paʹppi

strong_geminate, long_vowel
* :%^V2VV SG-ABE/ACC/GEN-PL-NOM ;	 paapp
* :%^V2VV%>â SG-LOC ;		 paappâst
* :%^V2VV SG-COM_IN/PL-OBL ;	 paappi, paappid, paappid, paappin, paappivuiʹm, paappitaa

* +Der+Der/Dimin+N:%^V2VV N_KUUZZYZH-WITHOUT-PAL ;   paapp-
* +Der+Der/Dimin+N:%^V2VV%^PAL N_KUUZZYZH-WITH-PAL ;   paaʹpp-
papp+N+Der+Der/Dimin+N+Sg+Loc+PxSg3
paʹpstes

e.g. 
e.g. +Use/NG+Sg+Loc+PxSg3
e.g. +Sg+Loc+PxSg3 pp:p papstes

* +Cmp/SgNom: R ;           papp
* :%^V2VV PL-NOM ;  paapp
* :%^V2VV PL-OBL ;       paappi, paappid, paappid, paappin, paappivuiʹm, paappitaa
* :%>â ESS/PAR ;                   pappân, pappâd

* papp #  examples:*
* *papp:* `papp+N+Sg+Nom`
* *paapp:* `papp+N+Sg+Gen`
* *paapp:* `papp+N+Sg+Acc`
* *paʹppe:* `papp+N+Sg+Ill`
* *paappâst:* `papp+N+Sg+Loc`
* *papstan:* `papp+N+Sg+Loc+PxSg1`
* *paappstan:* `papp+N+Sg+Loc+PxSg1`
* *paappin:* `papp+N+Sg+Com`
* *pappân:* `papp+N+Ess`
* *pappâd:* `papp+N+Par`
* *paapptaa:* `papp+N+Sg+Abe`
* *paapp:* `papp+N+Pl+Nom`
* *paappi:* `papp+N+Pl+Gen`
* *paappid:* `papp+N+Pl+Acc`
* *paappid:* `papp+N+Pl+Ill`
* *paappin:* `papp+N+Pl+Loc`
* *paappivuiʹm:* `papp+N+Pl+Com`
* *paappitaa:* `papp+N+Pl+Abe`
* *paappâž:* `papp+N+Der+Der/Dimin+N+Sg+Nom`
* *paaʹppe:* `papp+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_ALGG  põrtt:põ%^1VOW%{ʹØ%}rtt
N_1Y-VXYY
Sg_Nom: vow_mono:vow_short:vow_high:pal_no:cns_xyy
similar_to: N_TAALKYS, N_KOONTYR
1.1.1.1.1.1. Sg_Nom="short_vowel|long_cluster" Sg_Gen="long_vowel|short_cluster" 

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-algg**

* : SG-NOM ;	    				 põrtt

* :%^V2VV%^XYY2XY SG-ABE/ACC/GEN ;		 põõrt
* :%^V2VV%^XYY2XY PL-NOM ;		 põõrt
* :%^PAL%>e SG-ILL ;		      		 põʹrtte
* :%^PAL N2A_LUOQSSI ;		      	 põʹrtti
* :%^V2VV%^XYY2XY%>â SG-LOC ;			 põõrtâst
* :%^V2VV%^XYY2XY SG-COM_IN ;			 põõrtin
* :%>â ESS/PAR ; 		  			 põrttân
* :%^V2VV%^XYY2XY PL-OBL ;			 põõrti

* +Der+Der/Dimin+N:%^V2VV%^XYY2XY N_KUUZZYZH-WITHOUT-PAL ;   põõrt-
* +Der+Der/Dimin+N:%^V2VV%^PAL%^XYY2XY N_KUUZZYZH-WITH-PAL ;   põõʹrt-

* LEXICON N_ALGG-PL  põõrt:põrtt
* +Cmp/SgNom: R ;                            põrtt
* :%^V2VV%^XYY2XY PL-NOM ;                 põõrt
* :%>â ESS/PAR ;                                   põrttân
* :%^V2VV%^XYY2XY PL-OBL ;                         põõrti

* algg #  examples:*
* *algg:* `algg+N+Sg+Nom`
* *aalǥ:* `algg+N+Sg+Gen`
* *aalǥ:* `algg+N+Sg+Acc`
* *aʹlǧǧe:* `algg+N+Sg+Ill`
* *aalǥâst:* `algg+N+Sg+Loc`
* *alǥstan:* `algg+N+Sg+Loc+PxSg1`
* *aalǥstan:* `algg+N+Sg+Loc+PxSg1`
* *aalǥin:* `algg+N+Sg+Com`
* *alggân:* `algg+N+Ess`
* *alggâd:* `algg+N+Par`
* *alǥtaa:* `algg+N+Sg+Abe`
* *aalǥ:* `algg+N+Pl+Nom`
* *aalǥi:* `algg+N+Pl+Gen`
* *aalǥid:* `algg+N+Pl+Acc`
* *aalǥid:* `algg+N+Pl+Ill`
* *aalǥin:* `algg+N+Pl+Loc`
* *aalǥivuiʹm:* `algg+N+Pl+Com`
* *aalǥitaa:* `algg+N+Pl+Abe`
* *aalǥâž:* `algg+N+Der+Der/Dimin+N+Sg+Nom`
* *aaʹlje:* `algg+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_AUTT  autt:a%^1VOWu%{ʹØ%}tt
N_1Y-VUCC
Sg_Nom: vow_mono:vow_short:vow_high:pal_no:cns_vyy
1.1.1.1.1.1. Sg_Nom="short_vowel|long_V-cluster" Sg_Gen="long_vowel|short_V-cluster"

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-autt**

* : SG-NOM ;	    				 autt
* :%^V2VV%^XYY2XY SG-ABE/ACC/GEN ;		 aaut
* :%^PAL%>e SG-ILL ;		      		 auʹtte
* :%^PAL N2A_LUOQSSI ;			 auʹtte
* :%^V2VV%^XYY2XY%>â SG-LOC ;			 aautâst
* :%^V2VV%^XYY2XY SG-COM_IN ;			 aautin
* :%>â ESS/PAR ; 		  			 auttân
* :%^V2VV%^XYY2XY PL-NOM ;		 aaut
* :%^V2VV%^XYY2XY PL-OBL ;			 aauti

* +Der+Der/Dimin+N:%^V2VV%^XYY2XY N_KUUZZYZH-WITHOUT-PAL ;   aaut-
* +Der+Der/Dimin+N:%^V2VV%^PAL%^XYY2XY N_KUUZZYZH-WITH-PAL ;   aauʹt-

* LEXICON N_AUTT-PL  aaut:autt
* +Cmp/SgNom: R ;                            autt
* :%>â ESS/PAR ;                                   auttân
* :%^V2VV%^XYY2XY PL-NOM ;                 aaut
* :%^V2VV%^XYY2XY PL-OBL ;                         aauti

* autt # examples:*
* *autt:* `autt+N+Sg+Nom`
* *aaut:* `autt+N+Sg+Gen`
* *aaut:* `autt+N+Sg+Acc`
* *auʹtte:* `autt+N+Sg+Ill`
* *aautâst:* `autt+N+Sg+Loc`
* *autstan:* `autt+N+Sg+Loc+PxSg1`
* *aautin:* `autt+N+Sg+Com`
* *auttân:* `autt+N+Ess`
* *auttâd:* `autt+N+Par`
* *auttaa:* `autt+N+Sg+Abe`
* *aaut:* `autt+N+Pl+Nom`
* *aauti:* `autt+N+Pl+Gen`
* *aautid:* `autt+N+Pl+Acc`
* *aautid:* `autt+N+Pl+Ill`
* *aautin:* `autt+N+Pl+Loc`
* *aautivuiʹm:* `autt+N+Pl+Com`
* *aautitaa:* `autt+N+Pl+Abe`
* *aautâž:* `autt+N+Der+Der/Dimin+N+Sg+Nom`
* *aauʹte:* `autt+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_VAHTT  vahtt:va%^1VOW%{ʹØ%}h%{ʹØ%}tt
N_1Y-VHCC cf. SIJDD
Sg_Nom: vow_mono:vow_short:vow_high:pal_no:cns_hyy
1.1.1.1.1.1. Sg_Nom="short_vowel|h-cluster" Sg_Gen="long_vowel|short_u-cluster" 
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-vahtt**

* : SG-NOM ;	    			 vahtt
* :%^V2VV%^XYY2VY SG-ABE/ACC/GEN-PL-NOM ;  vaaut
* :%^PAL%>e SG-ILL ;		      	 vaʹhtte
* :%^PAL N2A_LUOQSSI ;		 vaʹhtti
* :%^V2VV%^XYY2VY%>â SG-LOC ;		 vaautâst
* :%^V2VV%^XYY2VY SG-COM_IN ;		 vaautin
* :%>â ESS/PAR ; 		  		 vahttân
* :%^V2VV%^XYY2VY PL-OBL ;		 vaauti

* +Der+Der/Dimin+N:%^V2VV%^XYY2VY N_KUUZZYZH-WITHOUT-PAL ;   vaaut-
* +Der+Der/Dimin+N:%^V2VV%^PAL%^XYY2VY N_KUUZZYZH-WITH-PAL ;   vaauʹt-

* vahtt # examples:*
* *vahtt:* `vahtt+N+Sg+Nom`
* *vaaut:* `vahtt+N+Sg+Gen`
* *vaaut:* `vahtt+N+Sg+Acc`
* *vaʹhtte:* `vahtt+N+Sg+Ill`
* *vaautâst:* `vahtt+N+Sg+Loc`
* *vautstan:* `vahtt+N+Sg+Loc+PxSg1`
* *vaautin:* `vahtt+N+Sg+Com`
* *vahttân:* `vahtt+N+Ess`
* *vahttâd:* `vahtt+N+Par`
* *vaautʼtaa:* `vahtt+N+Sg+Abe`
* *vaaut:* `vahtt+N+Pl+Nom`
* *vaauti:* `vahtt+N+Pl+Gen`
* *vaautid:* `vahtt+N+Pl+Acc`
* *vaautid:* `vahtt+N+Pl+Ill`
* *vaautin:* `vahtt+N+Pl+Loc`
* *vaautivuiʹm:* `vahtt+N+Pl+Com`
* *vaautitaa:* `vahtt+N+Pl+Abe`
* *vaautâž:* `vahtt+N+Der+Der/Dimin+N+Sg+Nom`
* *vaauʹte:* `vahtt+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_KUSS  kuss:ku%^1VOW%{ʹØ%}ss
N_1Y-VKK-HVVGG
Sg_Nom: vow_mono:vow_short:vow_high:pal_no:cns_gem_ss_type
1.1.1.1.1.1. Sg_Nom="short_vowel|geminate" Sg_Gen="long_vowel|voiced_geminate" 

See also: NMN_KUSS-PLC, which is the same, but minus PL forms and certain cases
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant and Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
similar_to: 
## FORMS
* Yaml: **N-kuss**

* : SG-NOM ;	    		 kuss
* :%>â ESS/PAR ;     		 	 kussân
* :%^PAL%>e SG-ILL ;    		 kuʹsse
* :%^PAL N2A_LUOQSSI ;    		 kuʹssi
* :%^V2VV%^KK2GG SG-ABE/ACC/GEN-PL-NOM ;		 kuuzz
* :%^V2VV%^KK2GG%>â SG-LOC ;	 kuuzzâ
* :%^V2VV%^KK2GG SG-COM_IN ;	 kuuzzin
* :%^V2VV%^KK2GG PL-OBL ;		 kuuzzi, kuuzzid, kuuzzid, kuuzzin, kuuzzivuiʹm, kuuzzitaa
* +Der+Der/Dimin+N:%^V2VV%^KK2GG N_KUUZZYZH-WITHOUT-PAL ;   kuuzz-
* +Der+Der/Dimin+N:%^V2VV%^PAL%^KK2GG N_KUUZZYZH-WITH-PAL ;   kuuʹzz-

* kuss # examples:*
* *kuss:* `kuss+N+Sg+Nom`
* *kuuzz:* `kuss+N+Sg+Gen`
* *kuuzz:* `kuss+N+Sg+Acc`
* *kuʹsse:* `kuss+N+Sg+Ill`
* *kuuzzâst:* `kuss+N+Sg+Loc`
* *kuzstan:* `kuss+N+Sg+Loc+PxSg1`
* *kuuzzin:* `kuss+N+Sg+Com`
* *kussân:* `kuss+N+Ess`
* *kussâd:* `kuss+N+Par`
* *kuuzztaa:* `kuss+N+Sg+Abe`
* *kuuzz:* `kuss+N+Pl+Nom`
* *kuuzzi:* `kuss+N+Pl+Gen`
* *kuuzzid:* `kuss+N+Pl+Acc`
* *kuuzzid:* `kuss+N+Pl+Ill`
* *kuuzzin:* `kuss+N+Pl+Loc`
* *kuuzzivuiʹm:* `kuss+N+Pl+Com`
* *kuuzzitaa:* `kuss+N+Pl+Abe`
* *kuuzzâž:* `kuss+N+Der+Der/Dimin+N+Sg+Nom`
* *kuuʹzze:* `kuss+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_RUOCCC  ruõcc:ruõ%{ʹØ%}cˈc
N_1Y-VWCCC-CC
* LEXICON NMN_RUOCCC  ruõcc:ruõcˈc
Sg_Nom: vow_di:vow_high:pal_no:cns_gem_long
1.1.1.1.1.1. Sg_Nom="diphthong|long_geminate" Sg_Gen="diphthong|geminate" 

THIS IS NOT THE SAME AS N_MUORR
* Yaml: **N-ruossh**
* : SG-NOM ;	     			
* :%^CCC2CC SG-ABE/ACC/GEN-PL-NOM ;	 ruõcc
* :%^PAL%>e SG-ILL ;	       		 ruõʹcˈce
* :%^PAL N2A_LUOQSSI ;	   	 ruõʹcˈci
* :%^CCC2CC%>â SG-LOC ;			 ruõccâst
* :%^CCC2CC SG-COM_IN ;			
* :%>â ESS/PAR ; 	   			
* :%^CCC2CC PL-OBL ;			 ruõcci

* +Der+Der/Dimin+N:%^CCC2CC N_KUUZZYZH-WITHOUT-PAL ;   ruõcc-
* +Der+Der/Dimin+N:%^PAL%^CCC2CC N_KUUZZYZH-WITH-PAL ;   ruõʹcc-

* ruõcc # examples:*
* *ruõcˈc:* `ruõcc+N+Sg+Nom`
* *ruõcc:* `ruõcc+N+Sg+Gen`
* *ruõcc:* `ruõcc+N+Sg+Acc`
* *ruõʹcˈce:* `ruõcc+N+Sg+Ill`
* *ruõccâst:* `ruõcc+N+Sg+Loc`
* *ruõˈcstan:* `ruõcc+N+Sg+Loc+PxSg1`
* *ruõccstan:* `ruõcc+N+Sg+Loc+PxSg1`
* *ruõccin:* `ruõcc+N+Sg+Com`
* *ruõcˈcân:* `ruõcc+N+Ess`
* *ruõcˈcâd:* `ruõcc+N+Par`
* *ruõcctaa:* `ruõcc+N+Sg+Abe`
* *ruõcc:* `ruõcc+N+Pl+Nom`
* *ruõcci:* `ruõcc+N+Pl+Gen`
* *ruõccid:* `ruõcc+N+Pl+Acc`
* *ruõccid:* `ruõcc+N+Pl+Ill`
* *ruõccin:* `ruõcc+N+Pl+Loc`
* *ruõccivuiʹm:* `ruõcc+N+Pl+Com`
* *ruõccitaa:* `ruõcc+N+Pl+Abe`
* *ruõccâž:* `ruõcc+N+Der+Der/Dimin+N+Sg+Nom`
* *ruõʹcce:* `ruõcc+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_CHUOSHKK  čuõškk:čuõ%{ʹØ%}škk
N_1Y-VWXYY
Sg_Nom: vow_di:vow_high:pal_no:cns_xyy
1.1.1.1.1.1. Sg_Nom="diphthong|long_cluster" Sg_Gen="diphthong|short_cluster"

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-chuoskk**

* : SG-NOM ;	    			 (1) čuõskk
* :%^XYY2XY SG-ABE/ACC/GEN ;	 (2) čuõsk
* :%^PAL%>e SG-ILL ;			 (3) čuõʹsǩǩe
* :%^PAL N2A_LUOQSSI ;		  čuõʹsǩǩi
* :%^XYY2XY%>â SG-LOC ;			 (4) čuõskest
* :%^XYY2XY SG-COM_IN ;		 (5) čuõskin
* :%>â ESS/PAR ; 	    			 (6) čuõskkân
* :%^XYY2XY PL-NOM ;	 (2) čuõsk
* :%^XYY2XY PL-OBL ;		 (5) čuõskin

* +Der+Der/Dimin+N:%^XYY2XY N_MUORYZH-WITHOUT-PAL ;   čuõsk-
* +Der+Der/Dimin+N:%^PAL%^XYY2XY N_MUORYZH-WITH-PAL ;   čuõʹsǩ-

* LEXICON N_CHUOSHKK-PL  čuõšk:čuõškk
* +Cmp/SgNom: R ;                    (1) čuõskk
* :%>â ESS/PAR ;                           (6) čuõskkân
* :%^XYY2XY PL-NOM ;       (2) čuõsk
* :%^XYY2XY PL-OBL ;               (5) čuõskin

* čuõškk # examples:*
* *čuõškk:* `čuõškk+N+Sg+Nom`
* *čuõšk:* `čuõškk+N+Sg+Gen`
* *čuõšk:* `čuõškk+N+Sg+Acc`
* *čuõʹšǩǩe:* `čuõškk+N+Sg+Ill`
* *čuõškâst:* `čuõškk+N+Sg+Loc`
* *čuõˈškstan:* `čuõškk+N+Sg+Loc+PxSg1`
* *čuõškstan:* `čuõškk+N+Sg+Loc+PxSg1`
* *čuõškin:* `čuõškk+N+Sg+Com`
* *čuõškkân:* `čuõškk+N+Ess`
* *čuõškkâd:* `čuõškk+N+Par`
* *čuõšktaa:* `čuõškk+N+Sg+Abe`
* *čuõšk:* `čuõškk+N+Pl+Nom`
* *čuõški:* `čuõškk+N+Pl+Gen`
* *čuõškid:* `čuõškk+N+Pl+Acc`
* *čuõškid:* `čuõškk+N+Pl+Ill`
* *čuõškin:* `čuõškk+N+Pl+Loc`
* *čuõškivuiʹm:* `čuõškk+N+Pl+Com`
* *čuõškitaa:* `čuõškk+N+Pl+Abe`
* *čuõškâž:* `čuõškk+N+Der+Der/Dimin+N+Sg+Nom`
* *čuõʹšǩe:* `čuõškk+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_RUOIDD  ruõidd:ruõi%{ʹØ%}dd
N_1Y-VWUCC
Sg_Nom: vow_di:vow_high:pal_no:cns_vxx
1.1.1.1.1.1. Sg_Nom="diphthong|long_V-cluster" Sg_Gen="diphthong|short_V-cluster"

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-chuoskk**

* : SG-NOM ;	    			 (1) ruõidd
* :%^XYY2XY SG-ABE/ACC/GEN-PL-NOM ;	 (2) ruõid
* :%^PAL%>e SG-ILL ;			 (3) ruõiʹdde
* :%^PAL N2A_LUOQSSI ;		  ruõiʹddi
* :%^XYY2XY%>â SG-LOC ;			 (4) ruõidest
* :%^XYY2XY SG-COM_IN/PL-OBL ;		 (5) ruõidin
* :%>â ESS/PAR ; 	    			 (6) ruõiddân

* +Der+Der/Dimin+N:%^XYY2XY N_MUORYZH-WITHOUT-PAL ;   ruõid-
* +Der+Der/Dimin+N:%^PAL%^XYY2XY N_MUORYZH-WITH-PAL ;   ruõiʹd-

* ruõidd # examples:*
* *ruõidd:* `ruõidd+N+Sg+Nom`
* *ruõid:* `ruõidd+N+Sg+Gen`
* *ruõid:* `ruõidd+N+Sg+Acc`
* *ruõiʹdde:* `ruõidd+N+Sg+Ill`
* *ruõidâst:* `ruõidd+N+Sg+Loc`
* *ruõˈidstan:* `ruõidd+N+Sg+Loc+PxSg1`
* *ruõidstan:* `ruõidd+N+Sg+Loc+PxSg1`
* *ruõidin:* `ruõidd+N+Sg+Com`
* *ruõiddân:* `ruõidd+N+Ess`
* *ruõiddâd:* `ruõidd+N+Par`
* *ruõidtaa:* `ruõidd+N+Sg+Abe`
* *ruõid:* `ruõidd+N+Pl+Nom`
* *ruõidi:* `ruõidd+N+Pl+Gen`
* *ruõidid:* `ruõidd+N+Pl+Acc`
* *ruõidid:* `ruõidd+N+Pl+Ill`
* *ruõidin:* `ruõidd+N+Pl+Loc`
* *ruõidivuiʹm:* `ruõidd+N+Pl+Com`
* *ruõiditaa:* `ruõidd+N+Pl+Abe`
* *ruõidâž:* `ruõidd+N+Der+Der/Dimin+N+Sg+Nom`
* *ruõiʹde:* `ruõidd+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_PUOAVV  puåvv:puå%{ʹØ%}vv
N_1Y-VWCC
Sg_Nom: vow_di:vow_high:pal_no:cns_gem
1.1.1.1.1.1. Sg_Nom="diphthong|geminate" Sg_Gen="diphthong|single_consonant" Sg_Ill="diphthong|vowel_e-coloration|long_geminate"

is for words with *-âst* Loc but *-ense* Ill 3rd grade
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
Has Allophonic palatalization
## 1.1.1.1[1].2 Has Specifically Pedagogical Gradation
## 1.1.1.1[1].2.1 Has Orthographic Gradation
## 1.1.1.1[1].2.1[] (Diphthong + Consonant and Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (9) Der/Dimin.N.Sg.Nom: puåvâž
puåvv:puåvv
* Yaml: **N-kiapp, N-puavv**

* : SG-NOM ;	    			 (1) Sg.Nom: puåvv
* :%^CC2C SG-ABE/ACC/GEN-PL-NOM ;		 (2) Pl.Nom: puåv
* :%^PALE%^PAL%^CC2CCC%>e SG-ILL ;	 (3) Sg.Ill: pueʹvˈve
* :%^PALE%^PAL%^CC2CCC N2A_LUOQSSI ;   N»A: pueʹvˈvi
* :%^CC2C%>â SG-LOC ;	       		 (4) Sg.Loc: puåvâst
* :%^CC2C SG-COM_IN ;			 (5) Sg.Com: puåvin
* :%>â ESS/PAR ; 	  			 (6) Ess: puåvvân
* :%^CC2C PL-OBL ;			 (8) Pl.Gen: puåvi

* +Der+Der/Dimin+N:%^CC2C N_MUORYZH-WITHOUT-PAL ;   puåv-
* +Der+Der/Dimin+N:%^PALE%^PAL%^CC2C N_MUORYZH-WITH-PAL ;   pueʹv-

* LEXICON N_PUOAVV-PL  puåvv:puå%{ʹØ%}vv
* +Cmp/SgNom: R ;	    			 (1) Sg.Nom: puåvv
* :%^CC2C PL-NOM ;		 (2) Pl.Nom: puåv
* :%>â ESS/PAR ; 	  			 (6) Ess: puåvvân
* :%^CC2C PL-OBL ;			 (8) Pl.Gen: puåvi

* puåvv #  examples:*
* *puåvv:* `puåvv+N+Sg+Nom`
* *puåv:* `puåvv+N+Sg+Gen`
* *puåv:* `puåvv+N+Sg+Acc`
* *pueʹvˈve:* `puåvv+N+Sg+Ill`
* *puåvâst:* `puåvv+N+Sg+Loc`
* *puåˈvstan:* `puåvv+N+Sg+Loc+PxSg1`
* *puåvstan:* `puåvv+N+Sg+Loc+PxSg1`
* *puåvin:* `puåvv+N+Sg+Com`
* *puåvvân:* `puåvv+N+Ess`
* *puåvvâd:* `puåvv+N+Par`
* *puåvtaa:* `puåvv+N+Sg+Abe`
* *puåv:* `puåvv+N+Pl+Nom`
* *puåvi:* `puåvv+N+Pl+Gen`
* *puåvid:* `puåvv+N+Pl+Acc`
* *puåvid:* `puåvv+N+Pl+Ill`
* *puåvin:* `puåvv+N+Pl+Loc`
* *puåvivuiʹm:* `puåvv+N+Pl+Com`
* *puåvitaa:* `puåvv+N+Pl+Abe`
* *puåvâž:* `puåvv+N+Der+Der/Dimin+N+Sg+Nom`
* *pueʹve:* `puåvv+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_LIYKK  liâkk:liâ%{ʹØ%}kk
N_1Y-VWCC
* Yaml: **N-kiapp, N-puavv**

* : SG-NOM ;	    			 (1) Sg.Nom: liâkk
* :%^KK2GG SG-ABE/ACC/GEN-PL-NOM ;		 (2) Pl.Nom: liâǥǥ
* :%^PALE%^PAL%^CC2CCC%>e SG-ILL ;	 (3) Sg.Ill: lieʹǩˈǩe
* :%^PALE%^PAL%^CC2CCC N2A_LUOQSSI ;   N»A: lieʹǩˈǩi
* :%^KK2GG%>â SG-LOC ;	       		 (4) Sg.Loc: liâǥǥâst
* :%^KK2GG SG-COM_IN ;			 (5) Sg.Com: liâǥǥin
* :%>â ESS/PAR ; 	  			 (6) Ess: liâkkân
* :%^KK2GG PL-OBL ;			 (8) Pl.Gen: liâǥǥi

* +Der+Der/Dimin+N:%^KK2GG N_MUORYZH-WITHOUT-PAL ;   liâǥǥ-
* +Der+Der/Dimin+N:%^PALE%^PAL%^KK2GG N_MUORYZH-WITH-PAL ;   lieʹjj-

* liâkk #  examples:*
* *liâkk:* `liâkk+N+Sg+Nom`
* *liâǥǥ:* `liâkk+N+Sg+Gen`
* *liâǥǥ:* `liâkk+N+Sg+Acc`
* *lieʹǩˈǩe:* `liâkk+N+Sg+Ill`
* *liâǥǥâst:* `liâkk+N+Sg+Loc`
* *liâˈǥstan:* `liâkk+N+Sg+Loc+PxSg1`
* *liâǥǥstan:* `liâkk+N+Sg+Loc+PxSg1`
* *liâǥǥin:* `liâkk+N+Sg+Com`
* *liâkkân:* `liâkk+N+Ess`
* *liâkkâd:* `liâkk+N+Par`
* *liâǥǥtaa:* `liâkk+N+Sg+Abe`
* *liâǥǥ:* `liâkk+N+Pl+Nom`
* *liâǥǥi:* `liâkk+N+Pl+Gen`
* *liâǥǥid:* `liâkk+N+Pl+Acc`
* *liâǥǥid:* `liâkk+N+Pl+Ill`
* *liâǥǥin:* `liâkk+N+Pl+Loc`
* *liâǥǥivuiʹm:* `liâkk+N+Pl+Com`
* *liâǥǥitaa:* `liâkk+N+Pl+Abe`
* *liâǥǥâž:* `liâkk+N+Der+Der/Dimin+N+Sg+Nom`
* *lieʹjje:* `liâkk+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_SIYKKK  siâkˈk:siâ%{ʹØ%}kˈk
N_1Y-VWCCC
Sg_Nom: vow_di:vow_high:pal_no:cns_gem_long
1.1.1.1.1.1. Sg_Nom="diphthong|long_geminate" Sg_Gen="diphthong|geminate" Sg_Ill="diphthong|vowel_e-coloration|long_geminate"

is for words with *-âst* Loc but *-ense* Ill 3rd grade
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
Has Allophonic palatalization
## 1.1.1.1[1].2 Has Specifically Pedagogical Gradation
## 1.1.1.1[1].2.1 Has Orthographic Gradation
## 1.1.1.1[1].2.1[] (Diphthong + Consonant and Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (9) Der/Dimin.N.Sg.Nom: siâkkâž
siâkˈk:siâkˈk
* Yaml: **N-siakk**

* : SG-NOM ;	    			   siâkˈk
* :%^CCC2CC SG-ABE/ACC/GEN-PL-NOM ;	   siâkk
* :%^PALE%^PAL%>e SG-ILL ;		   sieʹǩˈǩe
* :%^PALE%^PAL N2A_LUOQSSI ;	   sieʹǩˈǩi
* :%^CCC2CC%>â SG-LOC ;		 	   (4) Sg.Loc: siâkkâst
* :%^CCC2CC SG-COM_IN ;			   (5) Sg.Com: siâkkin
* :%>â ESS/PAR ; 	     (6) Ess: siâkˈkân
* :%^CCC2CC PL-OBL ;   (8) Pl.Acc: siâkkid

* +Der+Der/Dimin+N:%^CCC2CC N_KUUZZYZH-WITHOUT-PAL ;   siâkk-
* +Der+Der/Dimin+N:%^PALE%^PAL%^CCC2CC N_KUUZZYZH-WITH-PAL ;   sieʹǩǩ-

* siâkk # examples:*
* *siâkˈk:* `siâkk+N+Sg+Nom`
* *siâkk:* `siâkk+N+Sg+Gen`
* *siâkk:* `siâkk+N+Sg+Acc`
* *sieʹǩˈǩe:* `siâkk+N+Sg+Ill`
* *siâkkâst:* `siâkk+N+Sg+Loc`
* *siâˈkstan:* `siâkk+N+Sg+Loc+PxSg1`
* *siâkkstan:* `siâkk+N+Sg+Loc+PxSg1`
* *siâkkin:* `siâkk+N+Sg+Com`
* *siâkˈkân:* `siâkk+N+Ess`
* *siâkˈkâd:* `siâkk+N+Par`
* *siâkktaa:* `siâkk+N+Sg+Abe`
* *siâkk:* `siâkk+N+Pl+Nom`
* *siâkki:* `siâkk+N+Pl+Gen`
* *siâkkid:* `siâkk+N+Pl+Acc`
* *siâkkid:* `siâkk+N+Pl+Ill`
* *siâkkin:* `siâkk+N+Pl+Loc`
* *siâkkivuiʹm:* `siâkk+N+Pl+Com`
* *siâkkitaa:* `siâkk+N+Pl+Abe`
* *siâkkâž:* `siâkk+N+Der+Der/Dimin+N+Sg+Nom`
* *sieʹǩǩe:* `siâkk+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_SMIYHHH  siâkˈk:siâ%{ʹØ%}kˈk
N_1Y-VWCCC
* Yaml: **N-siakk**

* : SG-NOM ;	    			   smiâhˈh
* : SG-ABE/ACC/GEN-PL-NOM ;	   smiâhˈh
* :%^PALE%^PAL%>e SG-ILL ;		   smieʹhˈhe
* :%^PALE%^PAL N2A_LUOQSSI ;	   smieʹhˈhi
* :%>â SG-LOC ;		 	   (4) Sg.Loc: smiâhˈhâst
* : SG-COM_IN ;			   (5) Sg.Com: smiâhˈhin
* :%>â ESS/PAR ; 	     (6) Ess: smiâhˈhân
* : PL-OBL ;   (8) Pl.Acc: smiâhˈhid

* +Der+Der/Dimin+N: N_KUUZZYZH-WITHOUT-PAL ;   smiâhˈh-
* +Der+Der/Dimin+N:%^PALE%^PAL N_KUUZZYZH-WITH-PAL ;   smieʹhˈh-

* LEXICON N_MIYRKK  sǩiâŋkk:sǩiâ%{ʹØ%}ŋkk
N_1Y-VWXYY
Sg_Nom: vow_di:vow_high:pal_no:cns_xyy
1.1.1.1.1.1. Sg_Nom="diphthong|long_cluster" Sg_Gen="diphthong|short_cluster" Sg_Ill="diphthong|vowel_e-coloration|long_cluster"

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-skjiankk**

* : SG-NOM ;	      	 (1) Sg.Nom: sǩiâŋkk
* :%^XYY2XY SG-ABE/ACC/GEN-PL-NOM ;   (2) Pl.Nom: sǩiâŋk
* :%^PALE%^PAL%>e SG-ILL ;	    (3) Sg.Ill: sǩieʹŋǩǩe
* :%^PALE%^PAL N2A_LUOQSSI ;    N»A: sǩieʹŋǩǩi
* :%^XYY2XY%>â SG-LOC ;   	    (4) Sg.Loc: sǩiâŋkâst
* :%^XYY2XY SG-COM_IN ;		    (5) Sg.Com: sǩiâŋkin
* :%>â ESS/PAR ; 	     		   	(6) Ess: sǩiâŋkkân
* :%^XYY2XY PL-OBL ;			(8) Pl.Acc: sǩiâŋkid

* +Der+Der/Dimin+N:%^XYY2XY N_MUORYZH-WITHOUT-PAL ;   sǩiâŋk-
* +Der+Der/Dimin+N:%^PALE%^PAL%^XYY2XY N_MUORYZH-WITH-PAL ;   sǩieʹŋǩ-

* miârkk # examples:*
* *miârkk:* `miârkk+N+Sg+Nom`
* *miârk:* `miârkk+N+Sg+Gen`
* *miârk:* `miârkk+N+Sg+Acc`
* *mieʹrǩǩe:* `miârkk+N+Sg+Ill`
* *miârkâst:* `miârkk+N+Sg+Loc`
* *miâˈrkstan:* `miârkk+N+Sg+Loc+PxSg1`
* *miârkstan:* `miârkk+N+Sg+Loc+PxSg1`
* *miârkin:* `miârkk+N+Sg+Com`
* *miârkkân:* `miârkk+N+Ess`
* *miârkkâd:* `miârkk+N+Par`
* *miârktaa:* `miârkk+N+Sg+Abe`
* *miârk:* `miârkk+N+Pl+Nom`
* *miârki:* `miârkk+N+Pl+Gen`
* *miârkid:* `miârkk+N+Pl+Acc`
* *miârkid:* `miârkk+N+Pl+Ill`
* *miârkin:* `miârkk+N+Pl+Loc`
* *miârkivuiʹm:* `miârkk+N+Pl+Com`
* *miârkitaa:* `miârkk+N+Pl+Abe`
* *miârkâž:* `miârkk+N+Der+Der/Dimin+N+Sg+Nom`
* *mieʹrǩe:* `miârkk+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_TOLL  toll:to%^1VOW%{ʹØ%}ll
N_1Y-VCC-VVC
similar_to: N_AENHNH, N_STAEQLLJ, N_KOONJYL
Sg_Nom: vow_mono:vow_short:vow_high:pal_no:cns_gem
1.1.1.1.1.2. Sg_Nom="short_vowel|geminate" Sg_Gen="long_vowel|single_consonant" 

See also: NMN_TOLL-PLC, which is the same, but minus PL forms and certain cases
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant and Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-kidd, N-soll, N-toll, N-vorr**
strong_geminate, short_vowel, no_palatalization, high_stem_vowel 
* : SG-NOM ;	    	   toll
* :%>â ESS/PAR ;    		   tollân
strong_geminate, short_vowel, palatalization, high_stem_vowel
* :%^PAL%>e SG-ILL ;   	   toʹlle
* :%^PAL N2A_LUOQSSI ;   	   toʹlli
single_consonant, long_vowel, no_palatalization, high_stem_vowel
* :%^V2VV%^CC2C SG-ABE/ACC/GEN ;	 tool
* :%^V2VV%^CC2C PL-NOM ;	 tool
* :%^V2VV%^CC2C%>â SG-LOC ;                toolâst
* :%^V2VV%^CC2C SG-COM_IN ;                toolin
* :%^V2VV%^CC2C PL-OBL ;	                 tooli, toolid, toolid, toolin, toolivuiʹm, toolitaa

* +Der+Der/Dimin+N:%^V2VV%^CC2C N_KUUZZYZH-WITHOUT-PAL ;   tool-
single_consonant, long_vowel, palatalization, high_stem_vowel
* +Der+Der/Dimin+N:%^V2VV%^PAL%^CC2C N_KUUZZYZH-WITH-PAL ;   tooʹl-

* +Cmp/SgNom: R ;  toll
* :%>â ESS/PAR ;          tollân
* :%^V2VV%^CC2C PL-NOM ;  tool
* :%^V2VV%^CC2C PL-OBL ;  tooli, toolid, toolid, toolin, toolivuiʹm, toolitaa

* toll #  examples:*
* *toll:* `toll+N+Sg+Nom`
* *tool:* `toll+N+Sg+Gen`
* *tool:* `toll+N+Sg+Acc`
* *toʹlle:* `toll+N+Sg+Ill`
* *toolâst:* `toll+N+Sg+Loc`
* *tolstad:* `toll+N+Sg+Loc+PxSg1`
* *toolstad:* `toll+N+Sg+Loc+PxSg1`
* *toolin:* `toll+N+Sg+Com`
* *tollân:* `toll+N+Ess`
* *tollâd:* `toll+N+Par`
* *tooltaa:* `toll+N+Sg+Abe`
* *tool:* `toll+N+Pl+Nom`
* *tooli:* `toll+N+Pl+Gen`
* *toolid:* `toll+N+Pl+Acc`
* *toolid:* `toll+N+Pl+Ill`
* *toolin:* `toll+N+Pl+Loc`
* *toolivuiʹm:* `toll+N+Pl+Com`
* *toolitaa:* `toll+N+Pl+Abe`
* *toolâž:* `toll+N+Der+Der/Dimin+N+Sg+Nom`
* *tooʹle:* `toll+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_SIJDD  sijdd:si%{ʹØ%}j%{ʹØ%}dd
N_1Y-VJCC cf. _VAHTT
Sg_Nom: vow_mono:vow_short:vow_high_i_type:pal_no:cns_jyy
1.1.1.1.1.3. Sg_Nom="short_vowel|strong_j-cluster" Sg_Gen="long_vowel|single_consonant" 

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-sijdd**

* : SG-NOM ;	    			 sijdd
* :%^XYY2VY SG-ABE/ACC/GEN ;	 siid
* :%^PAL%>e SG-ILL ;		      	 siʹjdde
* :%^PAL N2A_LUOQSSI ;		 siʹjddi
* :%^XYY2VY%>â SG-LOC ;			 siidâst
* :%^XYY2VY SG-COM_IN ;		 siidin
* :%^XYY2VY PL-NOM ;	 siid
* :%^XYY2VY PL-OBL ;		 siidin
* :%>â ESS/PAR ; 		  		 sijddân

* +Der+Der/Dimin+N:%^V2VV%^XYY2VY N_KUUZZYZH-WITHOUT-PAL ;   siid-
* +Der+Der/Dimin+N:%^V2VV%^PAL%^XYY2VY N_KUUZZYZH-WITH-PAL ;   siiʹd-

* :%^Allegro%^XYY2VY SG-LOC-PX_ALLEGRO ;  CHECKME

* LEXICON N_SIJDD-PL  siid:sijdd
* :%^XYY2VY PL-NOM ;	 siid
* :%^XYY2VY PL-OBL ;     siidi
* :%>â ESS/PAR ;         sijddâd

* sijdd # examples:*
* *sijdd:* `sijdd+N+Sg+Nom`
* *siid:* `sijdd+N+Sg+Gen`
* *siid:* `sijdd+N+Sg+Acc`
* *siʹjdde:* `sijdd+N+Sg+Ill`
* *siidâst:* `sijdd+N+Sg+Loc`
* *siidstad:* `sijdd+N+Sg+Loc+PxSg2`
* *sidstad:* `sijdd+N+Sg+Loc+PxSg2`
* *siidin:* `sijdd+N+Sg+Com`
* *sijddân:* `sijdd+N+Ess`
* *sijddâd:* `sijdd+N+Par`
* *siidtaa:* `sijdd+N+Sg+Abe`
* *siid:* `sijdd+N+Pl+Nom`
* *siidi:* `sijdd+N+Pl+Gen`
* *siidid:* `sijdd+N+Pl+Acc`
* *siidid:* `sijdd+N+Pl+Ill`
* *siidin:* `sijdd+N+Pl+Loc`
* *siidivuiʹm:* `sijdd+N+Pl+Com`
* *siiditaa:* `sijdd+N+Pl+Abe`
* *siidâž:* `sijdd+N+Der+Der/Dimin+N+Sg+Nom`
* *siiʹde:* `sijdd+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_SAAKK  saakk:saa%{ʹØ%}kk
N_1Y-VVKK
similar_to: N_PAARR, N_SHLAAJJ
Sg_Nom: vow_mono:vow_long:vow_high:pal_no:cns_gem_ss_type
1.1.1.1.1.4. Sg_Nom="long_vowel|geminate" Sg_Gen="long_vowel|voiced_geminate" 

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel -e 
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant and Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-saakk**
is for nouns with -âst Loc. N_Y-EPal2-21
N_GENX1-ILLEPalX3-LOCÂ-NOM1X2
* :%^KK2GG SG-COM_IN ;			 saaǥǥin
* :%^KK2GG SG-ABE/ACC/GEN-PL-NOM ;	 saaǥǥ
* :%^VV2V%^PAL%>e SG-ILL ;	   	 šaʹǩǩe
* :%^VV2V%^PAL N2A_LUOQSSI ;       saʹǩǩi
* : SG-NOM ;	       			 saakk
* :%^KK2GG%>â SG-LOC ;			 saaǥǥâst
* :â ESS/PAR ;    	   			 saakkân
* :%^KK2GG PL-OBL ;			 saaǥǥi

* +Der+Der/Dimin+N:%^KK2GG N_KUUZZYZH-WITHOUT-PAL ;   saaǥǥ-
* +Der+Der/Dimin+N:%^PAL%^KK2GG N_KUUZZYZH-WITH-PAL ;   saaʹjj-

* saakk # examples:*
* *saakk:* `saakk+N+Sg+Nom`
* *saaǥǥ:* `saakk+N+Sg+Gen`
* *saaǥǥ:* `saakk+N+Sg+Acc`
* *saʹǩǩe:* `saakk+N+Sg+Ill`
* *saaǥǥâst:* `saakk+N+Sg+Loc`
* *saǥstan:* `saakk+N+Sg+Loc+PxSg1`
* *saaǥǥin:* `saakk+N+Sg+Com`
* *saakkân:* `saakk+N+Ess`
* *saakkâd:* `saakk+N+Par`
* *saaǥǥtaa:* `saakk+N+Sg+Abe`
* *saaǥǥ:* `saakk+N+Pl+Nom`
* *saaǥǥi:* `saakk+N+Pl+Gen`
* *saaǥǥid:* `saakk+N+Pl+Acc`
* *saaǥǥid:* `saakk+N+Pl+Ill`
* *saaǥǥin:* `saakk+N+Pl+Loc`
* *saaǥǥivuiʹm:* `saakk+N+Pl+Com`
* *saaǥǥitaa:* `saakk+N+Pl+Abe`
* *saaǥǥâž:* `saakk+N+Der+Der/Dimin+N+Sg+Nom`
* *saaʹjje:* `saakk+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_LUOSS  luõss:luõ%{ʹØ%}ss
N_1Y-VWKK
* LEXICON NMN_LUOSS  luõss:luõss
Sg_Nom: vow_di:vow_high:pal_no:cns_gem_ss_type
1.1.1.1.1.4. Sg_Nom="diphthong|geminate" Sg_Gen="diphthong|voiced_geminate"

THIS IS NOT THE SAME AS N_MUORR
* Yaml: **N-luoss**
* : SG-NOM ;	     			
* :%^KK2GG SG-ABE/ACC/GEN-PL-NOM ;	 luõzz
* :%^PAL%^CC2CCC%>e SG-ILL ;	 	 luõʹsˈse
* :%^PAL%^CC2CCC N2A_LUOQSSI ;	 luõʹsˈsi
* :%^KK2GG%>â SG-LOC ;			 luõzzâst
* :%^KK2GG SG-COM_IN ;			
* :%>â ESS/PAR ; 	   			
* :%^KK2GG PL-OBL ;			 luõzzi

* +Der+Der/Dimin+N:%^KK2GG N_KUUZZYZH-WITHOUT-PAL ;   luõzz-
* +Der+Der/Dimin+N:%^PAL%^KK2GG N_KUUZZYZH-WITH-PAL ;   luõʹzz-

* +Cmp/SgNom: R ;	     			
* :%^KK2GG PL-NOM ;	 luõzz
* :%>â ESS/PAR ; 	   			
* :%^KK2GG PL-OBL ;			 luõzzi

* luõss # examples:*
* *luõss:* `luõss+N+Sg+Nom`
* *luõzz:* `luõss+N+Sg+Gen`
* *luõzz:* `luõss+N+Sg+Acc`
* *luõʹsˈse:* `luõss+N+Sg+Ill`
* *luõzzâst:* `luõss+N+Sg+Loc`
* *luõˈzstan:* `luõss+N+Sg+Loc+PxSg1`
* *luõzzin:* `luõss+N+Sg+Com`
* *luõssân:* `luõss+N+Ess`
* *luõssâd:* `luõss+N+Par`
* *luõzztaa:* `luõss+N+Sg+Abe`
* *luõzz:* `luõss+N+Pl+Nom`
* *luõzzi:* `luõss+N+Pl+Gen`
* *luõzzid:* `luõss+N+Pl+Acc`
* *luõzzid:* `luõss+N+Pl+Ill`
* *luõzzin:* `luõss+N+Pl+Loc`
* *luõzzivuiʹm:* `luõss+N+Pl+Com`
* *luõzzitaa:* `luõss+N+Pl+Abe`
* *luõzzâž:* `luõss+N+Der+Der/Dimin+N+Sg+Nom`
* *luõʹzze:* `luõss+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_PAARR  paarr:paa%{ʹØ%}rr
N_1Y-VVCC
Sg_Nom: vow_mono:vow_long:vow_high:pal_no:cns_gem
1.1.1.1.1.5. Sg_Nom="long_vowel|geminate" Sg_Gen="long_vowel|single_consonant" 

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel -e 
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant and Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-paarr, N-saakk**
is for nouns with -âst Loc. N_Y-EPal2-21
N_GENX1-ILLEPalX3-LOCÂ-NOM1X2
* :%^CC2C SG-COM_IN ;		 paarin
* :%^CC2C SG-ABE/ACC/GEN-PL-NOM ;	 paar
* :%^VV2V%^PAL%>e SG-ILL ;      	 paʹrre
* :%^VV2V%^PAL N2A_LUOQSSI ;       N»A: paʹrri
* : SG-NOM ;	       		 paarr
* :%^CC2C%>â SG-LOC ; 		 paarâst
* :â ESS/PAR ;   	  		 paarrân
* :%^CC2C PL-OBL ;		 paari

* +Der+Der/Dimin+N:%^CC2C N_KUUZZYZH-WITHOUT-PAL ;   paar-
* +Der+Der/Dimin+N:%^PAL%^CC2C N_KUUZZYZH-WITH-PAL ;   paaʹr-

* :%^VV2V%^CC2CAllegro SG-LOC-PX_ALLEGRO ;  par-

* LEXICON N_PAARR-PL  paarr:paa%{ʹØ%}rr
* :%^CC2C PL-NOM ;	 paar
* :â ESS/PAR ;   	  		 paarrân
* :%^CC2C PL-OBL ;		 paari

* paarr # examples:*
* *paarr:* `paarr+N+Sg+Nom`
* *paar:* `paarr+N+Sg+Gen`
* *paar:* `paarr+N+Sg+Acc`
* *paʹrre:* `paarr+N+Sg+Ill`
* *paarâst:* `paarr+N+Sg+Loc`
* *parstan:* `paarr+N+Sg+Loc+PxSg1`
* *paarin:* `paarr+N+Sg+Com`
* *paarrân:* `paarr+N+Ess`
* *paarrâd:* `paarr+N+Par`
* *paartaa:* `paarr+N+Sg+Abe`
* *paar:* `paarr+N+Pl+Nom`
* *paari:* `paarr+N+Pl+Gen`
* *paarid:* `paarr+N+Pl+Acc`
* *paarid:* `paarr+N+Pl+Ill`
* *paarin:* `paarr+N+Pl+Loc`
* *paarivuiʹm:* `paarr+N+Pl+Com`
* *paaritaa:* `paarr+N+Pl+Abe`
* *paarâž:* `paarr+N+Der+Der/Dimin+N+Sg+Nom`
* *paaʹre:* `paarr+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_SHLAAJJ  šlaajj:šlaa%{ʹØ%}jj
N_1Y-VVCC
Sg_Nom: vow_mono:vow_long:vow_high:pal_no:cns_gem_jj_type
1.1.1.1.1.5. Sg_Nom="long_vowel|geminate" Sg_Gen="long_vowel|single_consonant"

## FORMS
* Yaml: **N-shlaajj**

* :%^J2I%^CC2C SG-ABE/ACC/GEN-PL-NOM ;	 šlaai

* šlaajj # examples:*
* *šlaajj:* `šlaajj+N+Sg+Nom`
* *šlaaj:* `šlaajj+N+Sg+Gen`
* *šlaai:* `šlaajj+N+Sg+Gen+Err/Orth`
* *šlaaj:* `šlaajj+N+Sg+Acc`
* *šlaai:* `šlaajj+N+Sg+Acc+Err/Orth`
* *šlaʹjje:* `šlaajj+N+Sg+Ill`
* *šlaajâst:* `šlaajj+N+Sg+Loc`
* *šlajstan:* `šlaajj+N+Sg+Loc+PxSg1`
* *šlaistan:* `šlaajj+N+Sg+Loc+PxSg1+Err/Orth`
* *šlaajin:* `šlaajj+N+Sg+Com`
* *šlaajjân:* `šlaajj+N+Ess`
* *šlaajjâd:* `šlaajj+N+Par`
* *šlaajtaa:* `šlaajj+N+Sg+Abe`
* *šlaaitaa:* `šlaajj+N+Sg+Abe+Err/Orth`
* *šlaaj:* `šlaajj+N+Pl+Nom`
* *šlaai:* `šlaajj+N+Pl+Nom+Err/Orth`
* *šlaaji:* `šlaajj+N+Pl+Gen`
* *šlaajid:* `šlaajj+N+Pl+Acc`
* *šlaajid:* `šlaajj+N+Pl+Ill`
* *šlaajin:* `šlaajj+N+Pl+Loc`
* *šlaajivuiʹm:* `šlaajj+N+Pl+Com`
* *šlaajitaa:* `šlaajj+N+Pl+Abe`
* *šlaajâž:* `šlaajj+N+Der+Der/Dimin+N+Sg+Nom`
* *šlaaʹje:* `šlaajj+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_MUORR  muõrr:muõ%{ʹØ%}rr
N_1Y-VWCC
Sg_Nom: vow_di:vow_high:pal_no:cns_gem
1.1.1.1.1.1. Sg_Nom="diphthong|geminate" Sg_Gen="diphthong|single_consonant" 

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].2 Has Specifically Pedagogical Gradation
Sg.Ill: 
## 1.1.1.1[1].2.1 Has Orthographic Gradation
## 1.1.1.1[1].2.1[] (Diphthong + Consonant and Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-muorr**
* : SG-NOM ;	    			 muõrr
* :%^CC2C SG-ABE/ACC/GEN ;		 muõr
* :%^PAL%^CC2CCC%>e SG-ILL ;    		 muõʹrˈre
* :%^PAL%^CC2CCC N2A_LUOQSSI ;     N»A: muõʹrˈri
* :%^CC2C%>â SG-LOC ;	 		 muõrâst
* :%^CC2C SG-COM_IN ;			 muõrin
* :%>â ESS/PAR ; 	  			 muõrrân
* :%^CC2C PL-NOM ;		 muõr
* :%^CC2C PL-OBL ;			 muõri

* +Der+Der/Dimin+N:%^CC2C N_MUORYZH-WITHOUT-PAL ;   muõr-
* +Der+Der/Dimin+N:%^PAL%^CC2C N_MUORYZH-WITH-PAL ;   muõʹr-

ǩiõtt+N+Sg+Loc+PxSg1 **hand,arm/käsi**
* *ǩiõ0tt%^Allegro%^PAL%^CC2CAllegro%>stan*
* *ǩiõˈđ0000%>stan*
* *ǩiõtt%^Allegro%^CC2CAllegro%>stan*
* *ǩiõđ000%>stan*
ǩiõtt+N+Sg+Ill+PxSg1: **hand/käsi**
* *ǩiõ0t0t%^PAL%^CC2CCC%>san*
* *ǩiõʹtˈt000%>san*
* :%^CC2CCC HatY-STEM-PX-STRENGTHEN-ELSE ;  muõrˈr-

* LEXICON N_MUORR-PL  muõrr:muõrr
* :%>â ESS/PAR ;                           muõrrân
* :%^CC2C PL-NOM ;                 muõr
* :%^CC2C PL-OBL ;                         muõri

* muõrr # examples:*
* *muõrr:* `muõrr+N+Sg+Nom`
* *muõr:* `muõrr+N+Sg+Gen`
* *muõr:* `muõrr+N+Sg+Acc`
* *muõʹrˈre:* `muõrr+N+Sg+Ill`
* *muõrâst:* `muõrr+N+Sg+Loc`
* *muõˈrstan:* `muõrr+N+Sg+Loc+PxSg1`
* *muõrin:* `muõrr+N+Sg+Com`
* *muõrrân:* `muõrr+N+Ess`
* *muõrrâd:* `muõrr+N+Par`
* *muõrtaa:* `muõrr+N+Sg+Abe`
* *muõr:* `muõrr+N+Pl+Nom`
* *muõri:* `muõrr+N+Pl+Gen`
* *muõrid:* `muõrr+N+Pl+Acc`
* *muõrid:* `muõrr+N+Pl+Ill`
* *muõrin:* `muõrr+N+Pl+Loc`
* *muõrivuiʹm:* `muõrr+N+Pl+Com`
* *muõritaa:* `muõrr+N+Pl+Abe`
* *muõrâž:* `muõrr+N+Der+Der/Dimin+N+Sg+Nom`
* *muõʹre:* `muõrr+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_KHIOJJ  ǩiõjj:ǩiõ%{ʹØ%}jj
N_1Y-VWCC
Sg_Nom: vow_di:vow_high:pal_no:cns_gem_jj_type
1.1.1.1.1.1. Sg_Nom="diphthong|geminate" Sg_Gen="diphthong|single_consonant"

similar_to: N_TUYJJ
## FORMS
* Yaml: **N-kjiojj**
* +Use/NGminip+Use/NG:%^J2I%^CC2C SG-ABE/ACC/GEN-PL-NOM ;	 (2) Pl.Nom: ǩiõi

* kuõjj # examples:*
* *kuõjj:* `kuõjj+N+Sg+Nom`
* *kuõj:* `kuõjj+N+Sg+Gen`
* *kuõi:* `kuõjj+N+Use/NGminip+Use/NG+Sg+Gen`
* *kuõj:* `kuõjj+N+Sg+Acc`
* *kuõi:* `kuõjj+N+Use/NGminip+Use/NG+Sg+Acc`
* *kuõʹjˈje:* `kuõjj+N+Sg+Ill`
* *kuõjâst:* `kuõjj+N+Sg+Loc`
* *kuõˈjstan:* `kuõjj+N+Sg+Loc+PxSg1`
* *kuõˈistan:* `kuõjj+N+Use/NGminip+Use/NG+Sg+Loc+PxSg1`
* *kuõjin:* `kuõjj+N+Sg+Com`
* *kuõjjân:* `kuõjj+N+Ess`
* *kuõjjâd:* `kuõjj+N+Par`
* *kuõjtaa:* `kuõjj+N+Sg+Abe`
* *kuõj:* `kuõjj+N+Pl+Nom`
* *kuõi:* `kuõjj+N+Use/NGminip+Use/NG+Pl+Nom`
* *kuõji:* `kuõjj+N+Pl+Gen`
* *kuõjid:* `kuõjj+N+Pl+Acc`
* *kuõjid:* `kuõjj+N+Pl+Ill`
* *kuõjin:* `kuõjj+N+Pl+Loc`
* *kuõjivuiʹm:* `kuõjj+N+Pl+Com`
* *kuõjitaa:* `kuõjj+N+Pl+Abe`
* *kuõjâž:* `kuõjj+N+Der+Der/Dimin+N+Sg+Nom`
* *kuõʹje:* `kuõjj+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_MIOHTT  miõhtt:miõ%{ʹØ%}h%{ʹØ%}tt
N_1Y-VWHYY
## FORMS
similar_to: N_VUYHSS
* Yaml: **N-miwhtt**

* :%^XYY2VY SG-COM_IN ;			 miõutin
* :%^XYY2VY  SG-ABE/ACC/GEN-PL-NOM ;	 miõut
* :%^PAL%>e SG-ILL ;	   	 miõʹhtte
* :%^PAL N2A_LUOQSSI ;       miõʹhtti
* : SG-NOM ;	       			 miõhtt
* :%^XYY2VY%>â SG-LOC ;			 miõutâst
* :â ESS/PAR ;    	   			 miõhttân
* :%^XYY2VY PL-OBL ;			 miõuti

* +Der+Der/Dimin+N: N_MUORYZH-WITHOUT-PAL ;   miõhtt-
* +Der+Der/Dimin+N:%^PAL N_MUORYZH-WITH-PAL ;   riiʹǩǩ-

* miõhtt # examples:*
* *miõhtt:* `miõhtt+N+Sg+Nom`
* *miõut:* `miõhtt+N+Sg+Gen`
* *miõut:* `miõhtt+N+Sg+Acc`
* *miõʹhtte:* `miõhtt+N+Sg+Ill`
* *miõutâst:* `miõhtt+N+Sg+Loc`
* *miõuˈtstan:* `miõhtt+N+Sg+Loc+PxSg1`
* *miõutin:* `miõhtt+N+Sg+Com`
* *miõhttân:* `miõhtt+N+Ess`
* *miõhttâd:* `miõhtt+N+Par`
* *miõuttaa:* `miõhtt+N+Sg+Abe`
* *miõut:* `miõhtt+N+Pl+Nom`
* *miõuti:* `miõhtt+N+Pl+Gen`
* *miõutid:* `miõhtt+N+Pl+Acc`
* *miõutid:* `miõhtt+N+Pl+Ill`
* *miõutin:* `miõhtt+N+Pl+Loc`
* *miõutivuiʹm:* `miõhtt+N+Pl+Com`
* *miõutitaa:* `miõhtt+N+Pl+Abe`
* *miõutâž:* `miõhtt+N+Der+Der/Dimin+N+Sg+Nom`
* *miõuʹte:* `miõhtt+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_RIIKK  riikk:rii%{ʹØ%}kk
N_1Y-VVKK
## FORMS
1.1.1.1.1.1. Sg_Nom="long_vowel|geminate" Sg_Gen="long_vowel|geminate" Sg_Ill="short_vowel|geminate" 

* Yaml: **N-riikk**
is for nouns with -âst Loc. N_Y-EPal2-21
N_GENX1-ILLEPalX3-LOCÂ-NOM1X2
* : SG-COM_IN ;			 riikkin
* :  SG-ABE/ACC/GEN-PL-NOM ;	 riikk
* :%^VV2V%^PAL%>e SG-ILL ;	   	 riʹǩǩe
* :%^VV2V%^PAL N2A_LUOQSSI ;       riʹǩǩi CHECKME
* : SG-NOM ;	       			 riikk
* :%>â SG-LOC ;			 riikkâst
* :â ESS/PAR ;    	   			 riikkân
* : PL-OBL ;			 riikki

* +Der+Der/Dimin+N: N_MUORYZH-WITHOUT-PAL ;   riikk-
* +Der+Der/Dimin+N:%^PAL N_MUORYZH-WITH-PAL ;   riiʹǩǩ-

* :%^VV2V%^CC2CAllegro SG-LOC-PX_ALLEGRO ;  rik-

* LEXICON N_AQSTTRIK  aʹsttrik:aʹsttri%^1VOW%{ʹØ%}k
## FORMS
1.1.1.1.1.1. Sg_Nom="long_vowel|geminate" Sg_Gen="long_vowel|geminate" Sg_Ill="short_vowel|geminate" 

* Yaml: **N-aqsttrik**
is for nouns with -âst Loc. N_Y-EPal2-21
N_GENX1-ILLEPalX3-LOCÂ-NOM1X2
* :%^V2VV%^C2CC SG-COM_IN ;			 aʹsttriikkin
* :%^V2VV%^C2CC  SG-ABE/ACC/GEN-PL-NOM ;	 aʹsttriikk
* :%^PAL%^C2CC%>e SG-ILL ;	   	 aʹsttriʹǩǩe
* :%^PAL%^C2CC N2A_LUOQSSI ;       aʹsttriʹǩǩi CHECKME
* : SG-NOM ;	       			 aʹsttrik
* :%^V2VV%^C2CC%>â SG-LOC ;			 riikkâst
* :%^V2VV%^C2CC%>â ESS/PAR ;    	   			 riikkân
* :%^V2VV%^C2CC PL-OBL ;			 riikki

* +Der+Der/Dimin+N:%^V2VV%^C2CC N_MUORYZH-WITHOUT-PAL ;   riikk-
* +Der+Der/Dimin+N:%^V2VV%^PAL%^C2CC N_MUORYZH-WITH-PAL ;   riiʹǩǩ-

* LEXICON N_PLAAN  plaan:plaa%{ʹØ%}n
N_1Y-VVC
Sg_Ill="palatalization|e-final"
similar-to: SYSTEEQM 
## 2. WORDS WITH TWO-SYLLABLE NOMINATIVE SINGULARS (2009: 288)
## 2.1 Sg.Loc in -âst. â-stems (Sg.Loc, Ess, Par).
## 2.1.3 Sg.Ill in palatalization and -e
## 2.1.3.3 Lacks Gradation (in last syllable)
## 2.1.3.3.1 Monophthong
## 2.1.3.3.1.3 Consonant always short
## 2.1.3.3.1.3.4 Sg.Nom long vowel AND Short consonant
## 2.1.3.3.1.3.4.1.Sg.Gen Weak Grade
## 2.1.3.3.1.3.4.1.3 Sg.Ill Weak Grade
plaan:plaan
* Yaml: **N-plaan**
* :%^PAL N2A_LUOQSSI ;      N»A: plaaʹni
* +Der+Der/Dimin+N: N_MUORYZH-WITHOUT-PAL ;   paar-
* +Der+Der/Dimin+N:%^PAL N_MUORYZH-WITH-PAL ;   paaʹr-

* LEXICON N_LOMAAKK  lomaakk:lomaa%{ʹØ%}kk
N_1Y-VVKK
Sg_Ill="palatalization|e-final"

lomaakk:lomaakk
* Yaml: **N-lomaakk**
* :%^PAL N2A_LUOQSSI ;      N»A: lomaaʹǩǩi CHECKME
* +Der+Der/Dimin+N: N_MUORYZH-WITHOUT-PAL ;   lomaakk-
* +Der+Der/Dimin+N:%^PAL N_MUORYZH-WITH-PAL ;   lomaaʹǩǩ-

CLASS 1 LOW VOWEL, MONOPHTHONG, NO PALATALIZATION NOMINALS
## a-stems

* LEXICON N_PESS  pess:pẹss
similar_to: N_PAPP
N_1A-VCC
Sg_Nom: vow_mono:vow_short:vow_low:pal_no:cns_gem
1.1.1.2.1. stem_with_gradation: yes 
1.1.1.2.1.1. Sg_Nom="short_vowel|geminate" Sg_Gen="long_vowel|geminate" 

Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Strong grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
N_A-URaise3-32
* Yaml: **N-pess, N-pall**
strong_geminate, short_vowel, no_palatalization, high_stem_vowel
* :%^VOWRaise%>u SG-ILL ;		  (3) Sg.Ill: pissu
Sg_Ill

strong_geminate, short_vowel, no_palatalization, low_stem_vowel
* : A-STEM-PX-STRENGTHEN ;            (5) pess
Ess_Px..., Sg_Ill..., N»A

strong_geminate, short_vowel, no_palatalization, low_stem_vowel
* : A-STEM_SG-NOM ;	    		  (1) Sg.Nom: pess
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1
* *pẹ%^1VOWss*
* *pe0ss*
strong_geminate, short_vowel, no_palatalization, low_stem_vowel, stem_vowel: a
* :%>a ESS/PAR ; 			  (6) Ess: pessan

strong_geminate, long_vowel, no_palatalization, low_stem_vowel
* :%^V2VV A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	  (2) Pl.Nom: peess
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

strong_geminate, long_vowel, no_palatalization, high_stem_vowel
* +Der+Der/Dimin+N:%^V2VV%^VOWRaise%> N_PIISSUZH ;   (9) Dim.N.Sg.Nom: piissuž
* +Der+Der/Dimin+N:%^V2VV%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: pẹẹssaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^CC2CAllegro SG-LOC-PX_ALLEGRO ;      pes»
Sg_Loc_Px..

## FORMS
strong_geminate, short_vowel, no_palatalization, low_stem_vowel
* +Cmp/SgNom: R ;		  pess
* :%>a ESS/PAR ; 			  (6) Ess: pessan
* :%^V2VV PL-NOM ;	  (2) Pl.Nom: peess

* LEXICON N_SHOOMM  šoomm:šoomm
N_1A-VVCC
Sg_Nom: vow_mono:vow_long:vow_low:pal_no:cns_gem
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
N_A-URaise3-32
* Yaml: **soomm**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM_SG-NOM ;	    		 (1) Sg.Nom: šoomm
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^CC2C A-STEM_SG-ABE/ACC/GEN-PL-NOM ;		 (2) Pl.Nom: šoom
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VV2V%^VOWRaise%>u SG-ILL ; 		 (3) Sg.Ill: šummu
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* :%^VV2V A-STEM-PX-STRENGTHEN ;            (5) šomm
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ; 	     			 (6) Ess: šoomman

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^VOWRaise%^CC2C%> N_PIISSUZH ;	 (9) Dim.N.Sg.Nom: šuumuž
* +Der+Der/Dimin+N:%^CC2C%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: šoomaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^VV2V%^CC2CAllegro SG-LOC-PX_ALLEGRO ;  (10) šom»
Sg_Loc_Px..

* :%>a ESS/PAR ;                           (6) Ess: šoomman
* :%^CC2C A-STEM_PL-NOM ;           (2) Pl.Nom: šoom

* LEXICON N_LYYJJ  lââjj:lââjj
N_1A-VVCC
Sg_Nom: vow_mono:vow_long:vow_low:pal_no:cns_gem_jj
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
similar_to N_SHLAAJJ
## FORMS
N_A-URaise3-32
* Yaml: **N-laajj**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM_SG-NOM ;	    		 (1) Sg.Nom: lââjj
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^CC2C A-STEM_SG-ABE/ACC/GEN-PL-NOM ;		 (2) Pl.Nom: lââj
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VV2V%^VOWRaise%>u SG-ILL ; 		 (3) Sg.Ill: lõjju
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* :%^VV2V A-STEM-PX-STRENGTHEN ;            (5) lâjj
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ; 	     			 (6) Ess: lââjjan

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^VOWRaise%^CC2C%> N_PIISSUZH ;	 (9) Dim.N.Sg.Nom: lõõjuž
* +Der+Der/Dimin+N:%^CC2C%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: lââjaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^VV2V%^CC2CAllegro SG-LOC-PX_ALLEGRO ;  (10) lâj»
Sg_Loc_Px..

* LEXICON N_RAEAEKK  rääkk:rääkk
N_1A-VVKK
Sg_Nom: vow_mono:vow_long:vow_low:pal_no:cns_gem_ss_type
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
N_A-URaise3-32
* Yaml: **N-raakk**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM_SG-NOM ;	     (1) Sg.Nom: rääkk
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^KK2GG A-STEM_SG-ABE/ACC/GEN-PL-NOM ;  (2) Pl.Nom: rääǥǥ
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VV2V%^VOWRaise%>u SG-ILL ;   (3) Sg.Ill: rakku
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* :%^VV2V A-STEM-PX-STRENGTHEN ;            (5) räkk
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ;  (6) Ess: rääkkan

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^KK2GG%^VOWRaise%> N_PIISSUZH ;  (9) Dim.N.Sg.Nom: raaǥǥuž
* +Der+Der/Dimin+N:%^KK2GG%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: rääǥǥaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^VV2V%^KK2GAllegro SG-LOC-PX_ALLEGRO ;  (10) räǥ»
Sg_Loc_Px..

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^KK2GG PL-NOM ;  (2) Pl.Nom: rääǥǥ

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ;  (6) Ess: rääkkan

* LEXICON N_AELDD  äldd:äldd
N_1A-VXYY
Sg_Nom: vow_mono:vow_short:vow_low:pal_no:cns_xyy
N_LÄINN has been integrated here
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel -u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-aeldd**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM_SG-NOM ;	    			 (1) äldd
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^V2VV%^XYY2XY A-STEM_SG-ABE/ACC/GEN-PL-NOM ;  (2) ääld
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VOWRaise%>u SG-ILL ;		      	 (3) alddu
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;	    	   (5) äldd
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ;	   		    	 (6) älddan

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^V2VV%^VOWRaise%^XYY2XY N_PIISSUZH ;  (9) Dim.N.Sg.Nom: aalduž (2009: 312-313)
* +Der+Der/Dimin+N:%^V2VV%^XYY2XY%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: ääldaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^XYY2XY SG-LOC-PX_ALLEGRO ;	   (10) äld
Sg_Loc_Px..

* :%>a ESS/PAR ;                           (6) älddan
* :%^V2VV%^XYY2XY A-STEM_PL-NOM ;  (2) ääld

* äldd # examples:*
* *äldd:* `äldd+N+Sg+Nom`
* *ääld:* `äldd+N+Sg+Gen`
* *ääld:* `äldd+N+Sg+Acc`
* *alddu:* `äldd+N+Sg+Ill`
* *ääldast:* `äldd+N+Sg+Loc`
* *äldstan:* `äldd+N+Allegro+Sg+Loc+PxSg1`
* *ääldstan:* `äldd+N+Largo+Sg+Loc+PxSg1`
* *ääldain:* `äldd+N+Sg+Com`
* *älddan:* `äldd+N+Ess`
* *älddad:* `äldd+N+Par`
* *ääldtaa:* `äldd+N+Sg+Abe`
* *ääld:* `äldd+N+Pl+Nom`
* *ääldai:* `äldd+N+Pl+Gen`
* *ääldaid:* `äldd+N+Pl+Acc`
* *ääldaid:* `äldd+N+Pl+Ill`
* *ääldain:* `äldd+N+Pl+Loc`
* *ääldaivuiʹm:* `äldd+N+Pl+Com`
* *ääldaitaa:* `äldd+N+Pl+Abe`
* *aalduž:* `äldd+N+Der+Der/Dimin+N+Sg+Nom`

* LEXICON A-STEM_SG-NOM  (1)
* LEXICON A-STEM_SG-ABE/ACC/GEN-PL-NOM   (2)

* LEXICON A-STEM_PL-NOM   (2)

* LEXICON N_PEIGG  peigg:pẹigg
N_1A-VUCC
Sg_Nom: vow_mono:vow_short:vow_low:pal_no:cns_vxx
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (9) Dim.N.Sg.Nom: laainuž (2009: 310)
N_A-URaise3-32
* Yaml: **N-laeinn**
* : A-STEM_SG-NOM ;	    			  (1) peigg
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

* :%^V2VV%^XYY2XY A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	  (2) peeiǥ
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

* :%^VOWRaise%^VYY2XYY%>u SG-ILL ;	      	  (3) Sg.Ill: pijggu !!WHAT IS THIS?
Sg_Ill

* : A-STEM-PX-STRENGTHEN ;            (5) peigg
Ess_Px..., Sg_Ill..., N»A

* :%>a ESS/PAR ; 	   		    	  (6) Ess: peigg  

* +Der+Der/Dimin+N:%^VOWRaise%^XYY2XY%> N_PIISSUZH ;  (9) Dim.N.Sg.Nom: piiǥuž
* +Der+Der/Dimin+N:%^V2VV%^XYY2XY%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: pẹẹiǥaž

* :%^XYY2XY SG-LOC-PX_ALLEGRO ;  (10) peiǥ»
Sg_Loc_Px..

* LEXICON N_KOAHTT  kåhtt:kåhtt
N_1A-VHCC
Sg_Nom: vow_mono:vow_short:vow_low:pal_no:cns_hyy
similar_to: N_TAQHTT
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMSx
## (1) Sg.Nom: kåhtt
## (2) Pl.Nom: kååut
## (3) Sg.Ill: kohttu
## (4) Sg.Loc: kååutast
## (5) Sg.Com: kååutain
## (6) Ess: kåhttan
## (7) Par: kåhttad
## (8) Pl.Acc: kååutaid
## (9) Dim.N.Sg.Nom: kooutuž (2009: 310)
N_A-URaise3-32
* Yaml: **N-taehtt**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM_SG-NOM ;  (1) Sg.Nom: kåhtt
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^V2VV%^XYY2VY A-STEM_SG-ABE/ACC/GEN-PL-NOM ;  (2) Pl.Nom: kååut
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VOWRaise%>u SG-ILL ;  (3) Sg.Ill: kohttu
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;            (5) kåhtt
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ;  (6) Ess: kåhttan

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^V2VV%^VOWRaise%^XYY2VY%> N_PIISSUZH ;  (9) Dim.N.Sg.Nom: kooutuž
* +Der+Der/Dimin+N:%^V2VV%^XYY2VY%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: kååutaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^XYY2VY SG-LOC-PX_ALLEGRO ;  (10) kåut»
Sg_Loc_Px..

CLASS 1 LOW VOWEL, DIPHTHONG, NO PALATALIZATION NOMINALS

* LEXICON N_TEYLKK  teâlkk:teâlkk
N_1A-VWXYY
Sg_Nom: vow_di:vow_short:vow_low:pal_no:cns_xyy

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: meârkk
## (2) Pl.Nom: meârk
## (3) Sg.Ill: mieʹrǩǩe
## (4) Sg.Loc: meârkâst
## (5) Sg.Com: meârkin
## (6) Ess: meârkkân
## (7) Par: meârkkâd
## (8) Pl.Acc: meârkid 
## (9) Der/Dimin.N.Sg.Nom: meârkâž
meârkk:meârkk
* Yaml: **N-meârkk**

grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* :  A-STEM_SG-NOM ;  (1) Sg.Nom: meârkk
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^XYY2XY A-STEM_SG-ABE/ACC/GEN-PL-NOM ;  (2) Pl.Nom: meârk
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VOWRaise%>u SG-ILL ;  (3) Sg.Ill: miõrkku
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;            (5) meârkk
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^VOWRaise%^XYY2XY N_PIISSUZH ;  (9) Dim.N.Sg.Nom: miõrkuž
* +Der+Der/Dimin+N:%^XYY2XY%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: meârkaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^XYY2XY SG-LOC-PX_ALLEGRO ;  (10) meârk»
Sg_Loc_Px..

* LEXICON N_VUYHSS  vuâhss:vuâhss
N_1A-VWHCC

## FORMS
* Yaml: **N-vuahss**

grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* :  A-STEM_SG-NOM ;  (1) Sg.Nom: vuâhss
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^XYY2VY A-STEM_SG-ABE/ACC/GEN-PL-NOM ;  (2) Pl.Nom: vuâus
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VOWRaise%>u SG-ILL ;  (3) Sg.Ill: vuõhssu
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;            (5) vuâhss
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^VOWRaise%^XYY2VY N_PIISSUZH ;  (9) Dim.N.Sg.Nom: vuõusuž
* +Der+Der/Dimin+N:%^XYY2VY%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: vuâusaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^XYY2VY SG-LOC-PX_ALLEGRO ;  (10) vuâus»
Sg_Loc_Px..

* LEXICON N_VUYRR  vuârr:vuârr
N_1A-VWCC
Sg_Nom: vow_di:vow_short:vow_low:pal_no:cns_gem
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
uâ:uõ, eä:iâ
## FORMS
N_A-URaise3-32
* Yaml: **N-vuarr**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;            (5) vuârr
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^CC2C%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: vuâraž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^XYY2VY SG-LOC-PX_ALLEGRO ;  (10) vuâr»
Sg_Loc_Px..

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a

* LEXICON N_TUYJJ  tuâjj:tuâjj
N_1A-VWCC
Sg_Nom: vow_di:vow_short:vow_low:pal_no:cns_gem_jj_type
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.0 Lacks Palatalization
## 1.2.2.0.2 Has Specifically Pedagogical Gradation
## 1.2.2.0.2.0 Has Orthographic Gradation
## 1.2.2.0.2.0[] (Diphthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
similar_to: N_KHIOJJ
## FORMS
N_A-URaise3-32
* Yaml: **N-tuajj**
* +Use/NGminip+Use/NG:%^PALẸ SG-NOM ;  tuẹjj
* +Use/NGminip+Use/NG:%^PALẸ%^CC2C SG-GEN ;		 (2) tuẹj
* +Use/NGminip+Use/NG:%^J2I%^CC2C SG-GEN ;		 (2) tuâi

* LEXICON N_TUEJJ  tuejj:tuâjj
N_1A-VWCC
this is based on the stem tuâjj, which means all twol work is in place.
there has been an â>e
N_A-URaise3-32
* Yaml: **N-tuejj**
* :%^PALẸ A-STEM_SG-NOM ;  tuẹjj
* :%^PALẸ%^CC2C A-STEM_SG-ABE/ACC/GEN-PL-NOM ;		 (2) tuẹj
* +Der+Der/Dimin+N:%^PALẸ%^CC2C%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: tuejaž
* :%^PALẸ%^CC2C SG-LOC-PX_ALLEGRO ;  (10) tuej»

* LEXICON N_CHUAECC  čuäcc:čuäcc
N_1A-VWKK
Sg_Nom: vow_di:vow_short:vow_low:pal_no:cns_gem
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.2 Has Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Diphthong + Consonant Geminate alternation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
N_A-URaise3-32
* Yaml: **N-chuacc**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM_SG-NOM ;				 (1) Sg.Nom: čuäcc
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^KK2GG A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	 (2) Pl.Nom: čuäʒʒ
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%^VOWRaise%^CC2CCC%>u SG-ILL ;		 (3) Sg.Ill: čuåcˈcu
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;            (5) čuäcc
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ;  	      			 (6) Ess: čuäccan

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^VOWRaise%^KK2GG%> N_PIISSUZH ;     (9) Dim.N.Sg.Nom: čuåʒʒuž
* +Der+Der/Dimin+N:%^KK2GG%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: čuäʒʒaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^KK2GAllegro SG-LOC-PX_ALLEGRO ;  (10) čuäʒ»
Sg_Loc_Px..

* Yaml: **N-chuacc**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^KK2GG A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	 (2) Pl.Nom: čuäʒʒ
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;            (5) čuäcc
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ;  	      			 (6) Ess: čuäccan

* LEXICON N_NEAVVV  neävv:neävˈv
N_1A-VWCCC
Sg_Nom: vow_di:vow_short:vow_low:pal_no:cns_gem_long
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.0 Lacks Palatalization
## 1.2.2.0.2 Has Specifically Pedagogical Gradation
## 1.2.2.0.2.0 Lack Orthographic Gradation
## 1.2.2.0.2.0[] (Diphthong + Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Strong grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-neavvv**
* : A-STEM_SG-NOM ;	    			  neävˈv
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

* :%^CCC2CC A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	  neävv
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

* :%^VOWRaise%>u SG-ILL ;			  niâvˈvu
Sg_Ill

* : A-STEM-PX-STRENGTHEN ;            (5) neävˈv
Ess_Px..., Sg_Ill..., N»A

* :%>a ESS/PAR ;   	       			 neävˈvan

* +Der+Der/Dimin+N:%^VOWRaise%^CCC2CC%> N_PIISSUZH ;   niâvvuž
* +Der+Der/Dimin+N:%^CCC2CC%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: neävvaž

* :%^CCC2CC SG-LOC-PX_ALLEGRO ;  (10) neävv» CHECKME
Sg_Loc_Px..

* +Cmp/SgNom: R ;                     neävˈv
* :%^CCC2CC PL-NOM ;         neävv
* :%^CCC2CC%>a PL-OBL ;                    neävvai

N_1A-VWCCC cf. _NEAVVV
* Yaml: **N-peyttt**
* : A-STEM_SG-NOM ;	    			  Peâtˈt
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

* :%^CCC2CC A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	  Peâtt
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

* :%^VOWRaise%>u SG-ILL ;			  piõtˈtu
Sg_Ill

* : A-STEM-PX-STRENGTHEN ;            (5) Peâtˈt
Ess_Px..., Sg_Ill..., N»A

* :%>a ESS/PAR ;   	       			 Peâtˈtan

* +Der+Der/Dimin+N:%^VOWRaise%^CCC2CC%> N_PIISSUZH ;   niâvvuž
* +Der+Der/Dimin+N:%^CCC2CC%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: neävvaž

* :%^CCC2CC SG-LOC-PX_ALLEGRO ;  (10) neävv» CHECKME
Sg_Loc_Px..

* LEXICON N_PEAELDD  peäldd:peäldd
N_1A-VWXYY
Sg_Nom: vow_di:vow_short:vow_low:pal_no:cns_xyy
Is for nouns with *-ast* Loc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.0 Lacks Palatalization
## 1.2.2.0.2 Has Specifically Pedagogical Gradation
## 1.2.2.0.2.0 Lack Orthographic Gradation
## 1.2.2.0.2.0[] (Diphthong + Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Strong grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (9) Dim.N.Sg.Nom: piâlduž (2009: 310)
N_A-URaise3-32
similar_to: N_JEAQRMM
* Yaml: **N-pealdd**
* : A-STEM_SG-NOM ;	    		  peäldd
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

* :%^XYY2XY A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	  peäld
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

* :%^VOWRaise%>u SG-ILL ;		  piâlddu
Sg_Ill

* : A-STEM-PX-STRENGTHEN ;            (5) peäldd
Ess_Px..., Sg_Ill..., N»A

* :%>a ESS/PAR ;   	       		  peälddan

* +Der+Der/Dimin+N:%^VOWRaise%^XYY2XY%> N_PIISSUZH ;    piâlduž
* +Der+Der/Dimin+N:%^XYY2XY%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: peäldaž

* :%^XYY2XY SG-LOC-PX_ALLEGRO ;  (10) peäld»
Sg_Loc_Px..

* +Cmp/SgNom: R ;   peäldd
* :%^XYY2XY PL-NOM ;	  peäld

* :%>a ESS/PAR ;     peälddan

* LEXICON N_TUOAIMM  tuåimm:tuåimm
N_1A-VWXYY
Sg_Nom: vow_di:vow_short:vow_low:pal_no:cns_vyy
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel -u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.1 Has Orthographic Gradation
## 1.2.2.2.1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-tuaimm**
grade: strengthened (short_vowel, long_cluster), vowel: not-raised
* :%^VOWRaise%>u SG-ILL ;		      	 (3) tuoimmu
* +Use/NGminip+Use/NG:%>u SG-ILL ;   tuåimmu
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;	    	   (5) tuåimm
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM_SG-NOM ;	    			 (1) tuåimm
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ;	   		    	 (6) tuåimman

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* :%^XYY2XY A-STEM_SG-ABE/ACC/GEN-PL-NOM ;  (2) tuåim
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%^VOWRaise%^XYY2XY N_PIISSUZH ;  (9) tuoimuž (2009: 312-313)
* +Der+Der/Dimin+N:%^XYY2XY%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: tuåimaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^XYY2XY SG-LOC-PX_ALLEGRO ;	   (5) tuåim
Sg_Loc_Px..

* LEXICON N_KAPTEAEN  kapteän:kapteän
N_1A-VWC
similar_to: N_PLAAN, N_SYSTEEQM
gradation: no
vowel_shift: no
Is for nouns with *-ast* Loc
a-stems (Sg.Loc, Ess, Par).
* Yaml: **N-pealdd**
* : A-STEM_SG-NOM ;	    		  kapteän
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

* : A-STEM_SG-ABE/ACC/GEN-PL-NOM ;	  kapteän
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px..., 
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

* :%>a SG-ILL ;		  kapteän
Sg_Ill

* : A-STEM-PX-STRENGTHEN ;            (5) kapteän
Ess_Px..., Sg_Ill..., N»A

* :%>a ESS/PAR ;   	       		  kapteänan

* +Der+Der/Dimin+N:%^XYY2XY%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: kapteänaž

* : SG-LOC-PX ;  (10) kapteän»
Sg_Loc_Px..

* LEXICON N_VIRVEL  virvel:virvẹ%^1VOW%{ʹØ%}l
## FORMS
* Yaml: **virvel**
* : SG-NOM ;	    		 virvel
* +Use/NGminip+Use/NG:%^PAL SG-NOM ;	    		 virveʹl
* :%^V2VV%^PAL SG-ABE/ACC/GEN-PL-NOM ;	 virveeʹl
* :%^V2VV%>a SG-ILL ;		 virvẹẹla
* :%^V2VV%^PAL%>e SG-LOC ;	   		 virveeʹlest
* :%^V2VV%^PAL%> SG-COM_IN ;		 virveeʹlin
* :%^V2VV%^PAL%>e ESS/PAR ;     			 virveeʹlen
* :%^V2VV%^PAL%> PL-OBL ;			 virveʹli
* +Der+Der/Dimin+N:%^V2VV N_KUYLAZH ;		 virvẹẹlaž

* LEXICON N_MEER  meer:meer
Sg_Nom: vow_mono:vow_long:vow_low:pal_no:cns_sing
Is for nouns with *-ast* Loc, No gradation
N_A-U1-11
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (no vowel shift, all lowered)
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.2 Lacks Orthographic Gradation
## 1.2.2.2.1.2[] (Monophthong + Consonant)
Weak grade: Sg.Nom, Ess, Par
Weak grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **meer, steehl**
* : SG-NOM ;	    		 meer
* : SG-ABE/ACC/GEN-PL-NOM ;	 meer
* :%>u SG-ILL ;			 meeru
* +Use/NGminip+Use/NG:%>a SG-ILL ;		 meera
* :%>a SG-LOC ;	   		 meerast
* :%>a SG-COM_IN ;		 meerain
* :%>a ESS/PAR ;     			 meeran
* :%>a PL-OBL ;			 meerai
* +Der+Der/Dimin+N: N_PIISSUZH ;		 meeruž
* +Der+Der/Dimin+N: N_PEESSAZH ;   (9) Dim.N.Sg.Nom: mẹẹraž

* LEXICON N_VAEAEZHZH  vääžž:vääžž
Sg_Nom: vow_mono:vow_long:vow_low:pal_no:cns_gem_dd_type
Is for nouns with *-ast* Loc, No gradation
N_A-U1-11
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (no vowel shift, all lowered)
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.2 Lacks Orthographic Gradation
## 1.2.2.2.1.2[] (Monophthong + Consonant)
Weak grade: Sg.Nom, Ess, Par
Weak grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **A-vaeaezhzh**
* : SG-NOM ;	    		 vääžž
* : SG-ABE/ACC/GEN-PL-NOM ;	 vääžž
* :%^VOWRaise%>u SG-ILL ;		 vaažžu
* +Use/NGminip+Use/NG:%>a SG-ILL ;  	      	 vääžža
* :%>a SG-LOC ;	   		 vääžžast
* :%>a SG-COM_IN ;		 vääžžain
* :%>a ESS/PAR ;     			 vääžžan
* :%>a PL-OBL ;			 vääžžai
* +Der+Der/Dimin+N:%^VOWRaise N_PIISSUZH ;	 vaažžuž
* +Der+Der/Dimin+N: N_PEESSAZH ;   (9) Dim.N.Sg.Nom: vääžžaž
* +Use/NGminip+Use/NG+Der+Der/Dimin+N: N_KUYLAZH ;   	 vääžžaž

* LEXICON N_PLEYN  pleân:pleân
N_1A-VWC
Sg_Nom: vow_di:vow_long:vow_low:pal_no:cns_sing
Is for nouns with *-ast* Loc, No gradation
N_A-U1-11
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (no vowel shift, all lowered)
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel	-u
## 1.2.2.2 Lacks Palatalization
## 1.2.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.2.1.2 Lacks Orthographic Gradation
## 1.2.2.2.1.2[] (Monophthong + Consonant)
Weak grade: Sg.Nom, Ess, Par
Weak grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-plean**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
* : SG-NOM ;	    	  pleân
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)
* : A-STEM_SG-ABE/ACC/GEN-PL-NOM ;   pleân
Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px...,
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised
* :%>u SG-ILL ;		  pleânu
* :%>a SG-ILL ;		  pleâna
* :%^PAL%>e SG-ILL ;	  pleâʹne
Sg_Ill

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;                   (5) äldd
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a
* :%>a ESS/PAR ;     		  pleânan

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N: N_PIISSUZH ;	  pleânuž
* +Der+Der/Dimin+N: N_PEESSAZH ;   (9) Dim.N.Sg.Nom: pleânaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* : SG-LOC-PX ;      (10) äld
Sg_Loc_Px..

normative = PẸSS 
Sg_Nom: vow_mono:vow_short:vow_low:pal_no:cns_gem
* Yaml: **N-aekk**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)

Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px...,
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
Sg_Loc_Px..

* LEXICON N_APTEEKK  apteekk:apteekk
normative = PẸSS 
Sg_Nom: vow_mono:vow_short:vow_low:pal_no:cns_gem
* Yaml: **N-aekk**
grade: neutral (short_vowel, long_cluster), vowel: neutral (low)
Sg_Nom, Sg_Nom..., Sg_Abe_Px1, Sg_Acc_Px1, Sg_Gen_Px1, Pl_Nom_Px1

grade: weakened (long_vowel, short_cluster), vowel: neutral (low)

Sg_Abe, Sg_Acc, Sg_Gen, Pl_Nom, +Use/NG_Sg_Loc_Px...,
stem_vowel: a : Sg_Loc, Sg_Com, Pl_Gen, Pl_Acc, Pl_Ill, Pl_Loc, Pl_Com, Pl_Abe

grade: strengthened (short_vowel, long_cluster), vowel: raised

grade: strengthened (short_vowel, long_cluster), vowel: neutral (low)
* : A-STEM-PX-STRENGTHEN ;            (5) apteekk
Ess_Px..., Sg_Ill..., N»A

grade: neutral (short_vowel, long_cluster), vowel: neutral (low), stem_vowel: a

grade: weakened (long_vowel, short_cluster), vowel: raised, stem_vowel: u/a
* +Der+Der/Dimin+N:%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: apteekkaž

grade: allegro (short_vowel, short_cluster), vowel: neutral (low)
* :%^VV2V%^CC2CAllegro SG-LOC-PX_ALLEGRO ;      (5) aptek
Sg_Loc_Px..

* LEXICON N_LAEAEMPA  läämpa:lämpp
two-syllable
Sg_Nom: vow_mono:vow_short:vow_low:pal_no:cns_gem
* Yaml: **N-laeaempa**
* +Der+Der/Dimin+N:%^V2VV%^XYY2XY%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: läämpaž

* Yaml: **N-uulla**

CLASS 1 HIGH VOWEL TYPE, NO PALATALIZATION NOMINALS
* LEXICON NMN_NELLJ  nellj:nẹllj
* :%^V2VV SG-ABE/ACC/GEN ;	 Sg+Gen: nẹẹllj
* :a SG-ILL ;	        Sg+Ill: nẹllja

CLASS 1 HIGH VOWEL, PALATALIZATION NOMINALS
* LEXICON N_NUQBB  nuʹbb:nubb
N_1E-UQCC
Sg_Nom: vow_mono:vow_short:vow_high_u:pal_yes:cns_gem_dd_type
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-nubb**
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) nubb
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) nuʹbb-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) nuʹbb Ess+Px..

* LEXICON N_CHUQKHKH  čuʹǩǩ:ču%^1VOW%{ʹØ%}kk
N_1E-UQCC
Sg_Nom: vow_mono:vow_short:vow_high_u:pal_yes:cns_gem_dd_type
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-chukk**
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) čukk-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) čuʹkk-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) cuʹǩǩ Ess+Px..

* LEXICON N_TUQMM  tuʹmm:tu%^1VOW%{ʹØ%}mm
N_1E-UQCC
similar to N_TOLL
Sg_Nom: vow_mono:vow_short:vow_high_u:pal_yes:cns_gem_dd_type
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) tumm-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) tuʹm-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) tuʹmm Ess+Px..

* LEXICON N_LUQCHCH  luʹčč:lu%^1VOW%{ʹØ%}čč
N_1E-UQCC
similar to N_TOLL
Sg_Nom: vow_mono:vow_short:vow_high_u:pal_yes:cns_gem_dd_type
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) lučč-
* :%^PAL%^KK2GAllegro E-STEM-PX-ALLEGRO ;  (11) luʹj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) luʹčč Ess+Px..

* LEXICON N_NJUUQNN  njuuʹnn:njuunn
N_1E-UUQCC
Sg_Nom: vow_mono:vow_long:vow_high_u:pal_yes:cns_gem
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-njuunn**
* There are several stem types
* njuuʹnn:njuuʹnn
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) njuunn-
* :%^VV2V%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) njuʹn-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) njuʹnn Ess+Px..

* LEXICON N_STUUQL  stuuʹl:st%^1VOWu%{VU%}l
N_1E-UUQC
Sg_Nom: vow_mono:vow_short:vow_high_u:pal_yes:cns_vyy
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: ELSE
Lowered: Sg.Ill
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Lacks Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: stuuʹl
## (2) Pl.Nom: stuuʹl
## (3) Sg.Ill: stooula
## (4) Sg.Loc: stuuʹlest
## (5) Sg.Com: stuuʹlin
## (6) Ess: stuuʹlen
## (7) Par: stuuʹled
## (8) Pl.Acc: stuuʹlid
## (9) Der/Dimin.N.Sg.Nom: stooulaž
NumContLex="1.113"
* Yaml: **N-skuul**
* There are several stem types
* stuuʹl:stuuʹl
* :%^PAL E-STEM_SG-NOM ;	    		 (1) Sg.Nom: stuuʹl
* :%^PAL E-STEM_SG-ABE/ACC/GEN ;	 (2) Pl.Nom: stuuʹl
* :%^PAL PL-NOM ;	 (2) Pl.Nom: stuuʹl
* :%^V2VV%^VOWLower E-STEM_SG-ILL ;	 (3) Sg.Ill: stooula
* :%^PAL SG-COM_IN ;  ()2015-04-24 Is this correct
* :%^PAL E-STEM_PL-OBL ;  ()2015-04-24 Is this correct
* :%^PAL%>e ESS/PAR ;  () ess and prt without
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) stuul-
* :%^VV2V%^PAL E-STEM-PX-ALLEGRO ;  (11) stuʹl-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) nuʹbb Ess+Px..

* LEXICON N_KUQRCHCH  kuʹrčč:kurčč
N_1E-UQXYY
Sg_Nom: vow_mono:vow_short:vow_high_u:pal_yes:cns_xyy
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: kuʹrčč
## (2) Pl.Nom: kuuʹrč
## (3) Sg.Ill: korčča
## (4) Sg.Loc: kuuʹrčest
## (5) Sg.Com: kuuʹrčin
## (6) Ess: kuʹrččen
## (7) Par: kuʹrččed
## (8) Pl.Acc: kuuʹrčid
## (9) Der/Dimin.N.Sg.Nom: koorčaž
NumContLex="1.113"
* Yaml: **N-kurchch**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kurčč-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) kuʹrč-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kuʹrčč Ess+Px..

* LEXICON N_PUIQCC  puiʹcc:pu%^1VOWi%{ʹØ%}cc
N_1E-UIQCC
## (1) Sg.Nom: kuʹrčč
## (2) Pl.Nom: kuuʹrč
## (3) Sg.Ill: korčča
## (4) Sg.Loc: kuuʹrčest
## (5) Sg.Com: kuuʹrčin
## (6) Ess: kuʹrččen
## (7) Par: kuʹrččed
## (8) Pl.Acc: kuuʹrčid
## (9) Der/Dimin.N.Sg.Nom: koorčaž
NumContLex="1.113"
* Yaml: **N-kurchch**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kurčč-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) kuʹrč-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kuʹrčč Ess+Px..

* puiʹcc # examples:*
* *puiʹcc:* `puiʹcc+N+Sg+Nom`
* *puuiʹc:* `puiʹcc+N+Sg+Gen`
* *puuiʹc:* `puiʹcc+N+Sg+Acc`
* *poicca:* `puiʹcc+N+Sg+Ill`
* *puuiʹcest:* `puiʹcc+N+Sg+Loc`
* *puiʹcstan:* `puiʹcc+N+Allegro+Sg+Loc+PxSg1`
* *puuiʹcstan:* `puiʹcc+N+Largo+Sg+Loc+PxSg1`
* *puuiʹcain:* `puiʹcc+N+Sg+Com`
* *puiʹccen:* `puiʹcc+N+Ess`
* *puiʹcced:* `puiʹcc+N+Par`
* *puuiʹctaa:* `puiʹcc+N+Sg+Abe`
* *puuiʹc:* `puiʹcc+N+Pl+Nom`
* *puuiʹci:* `puiʹcc+N+Pl+Gen`
* *puuiʹcid:* `puiʹcc+N+Pl+Acc`
* *puuiʹcid:* `puiʹcc+N+Pl+Ill`
* *puuiʹcin:* `puiʹcc+N+Pl+Loc`
* *puuiʹcivuiʹm:* `puiʹcc+N+Pl+Com`
* *puuiʹcitaa:* `puiʹcc+N+Pl+Abe`
* *pooicaž:* `puiʹcc+N+Der+Der/Dimin+N+Sg+Nom`

Sg_Nom: vow_mono:vow_short:vow_high_u:pal_yes:cns_xyy
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: kuʹvǯǯ
## (2) Pl.Nom: kuʼvǯ
## (3) Sg.Ill: kouǯǯa
## (4) Sg.Loc: kuʹvǯest
## (5) Sg.Com: kuʹvǯin
## (6) Ess: kuʹvǯǯen
## (7) Par: kuʹvǯǯed
## (8) Pl.Acc: kuʹvǯid
## (9) Der/Dimin.N.Sg.Nom: kouǯaž
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-kuvzz**

* LEXICON N_JUQVJJ  juʹvjj:ju%^1VOW%{ʹØ%}v%{ʹØ%}jj
N_1E-UQVCC
Sg_Nom: vow_mono:vow_short:vow_high_u:pal_yes:cns_vyy
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: juʹvjj
## (2) Pl.Nom: juuʹj
## (3) Sg.Ill: joujja
## (4) Sg.Loc: juuʹjest
## (5) Sg.Com: juuʹjin
## (6) Ess: juʹvjjen
## (7) Par: juʹvjjed
## (8) Pl.Acc: juuʹjid
## (9) Der/Dimin.N.Sg.Nom: jooujaž
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-juvjj**
* :%^V2VV%^VOWLower%^XYY2VY E-STEM_N_KUYLAZH ;  jooujaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) juvjj-
* :%^Allegro%^PAL%^XYY2VY E-STEM-PX-ALLEGRO ;  (11) juʹj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) juʹvjj Ess+Px..

* LEXICON N_VUEQSS   vueʹss:vuâss
N_1E-VWQKK
Sg_Nom: vow_di:vow_short:vow_high_u:pal_yes:cns_gem
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
* Yaml: **N-vuess**

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) vuâss-
* :%^PALE%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) vueʹss-
* :%^PALE%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) vueʹsˈs Ess+Px..

* LEXICON N_BIEQSS   bieʹss:beâss
Sg_Nom: vow_di:vow_short:vow_high_u:pal_yes:cns_gem
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
* Yaml: **N-biess**

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) beâss-
* :%^PALE%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) bieʹss-
* :%^PALE%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) bieʹsˈs- Ess+Px..

* LEXICON N_SKHIEQRR   sǩieʹrr:sǩeârr
Sg_Nom: vow_di:vow_short:vow_high_u:pal_yes:cns_gem
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
* Yaml: **N-skhierr**

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) beâss-
* :%^PALE%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) sǩieʹrs-
* :%^PALE%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) sǩieʹrˈs- Ess+Px..

* LEXICON N_SUEQJJ   sueʹjj:suâjj
Sg_Nom: vow_di:vow_short:vow_high_u:pal_yes:cns_gem
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
similar_to: N_KHIOJJ, N_TUYJJ
* Yaml: **N-suejj**

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) suâjj-
* :%^PALE%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) sueʹj-
* :%^PALE%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) sueʹjˈj Ess+Px..

Sg_Nom: vow_di:vow_short:vow_high_u:pal_yes:cns_xyy
similar_to: N_CHUOSHKK
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
* Yaml: **N-juelggj**
* There are several stem types 

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) juâlgg-
* :%^PALE%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) jueʹlj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) jueʹlǧǧ Ess+Px..

* :%^PALE%^PAL SG-ACC ;  Num+Sg+Acc: kueʹhtt
* :%^PALE%^PAL%^XYY2IY SG-ABE ;  Num+Sg+Abe: kueiʹtʼtaa
* :%^PALE%^PAL%^XYY2IY SG-GEN ;  Num+Sg+Gen: kueiʹt
* :%^PALE%^PAL%^XYY2IY PL-NOM ;  Num+Pl+Nom: kueiʹt

* +Err/Orth+Use/SpellNoSugg:%^VOWRaise%^PALÕ%^PAL%^XYY2IY SG-ABE ;  Num+Sg+Gen: kueiʹt
* +Err/Orth+Use/SpellNoSugg:%^VOWRaise%^PALÕ%^PAL%^XYY2IY SG-GEN ;  Num+Sg+Gen: kueiʹt
* +Err/Orth+Use/SpellNoSugg:%^VOWRaise%^PALÕ%^PAL%^XYY2IY PL-NOM ;  Num+Pl+Nom: kueiʹt

e.g. +Sg+Acc+PxPl3
e.g. +Use/NG+Sg+Loc+PxSg1
* : E-STEM_SG-ILL ;  Num+Sg+Ill: kuâhtta
* +Use/NGminip+Use/NG:%>e SG-ILL ;  Num+Sg+Ill: kueʹhtte
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kuâhtt-
* :%^PALE%^PAL%^XYY2IY E-STEM-PX-ALLEGRO ;  (11) kueʹit-
* :%^PALE%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kueʹhtt- Ess+Px..

* LEXICON N_KUEQLL  kueʹll:kuâll
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
## (1) Sg.Nom: kueʹll
## (2) Pl.Nom: kueʼl
## (3) Sg.Ill: kuâlˈla
## (4) Sg.Loc: kueʹlest
## (5) Sg.Com: kuõʹlin ~ kueʹlin
## (6) Ess: kueʹllen
## (7) Par: kueʹlled
## (8) Pl.Acc: kuõʹlid ~ kueʹlid
## (9) Der/Dimin.N.Sg.Nom: kuâlaž 
* Yaml: **N-kuell**
* There are several stem types 
* kueʹll:kuâll

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kuâll-
* :%^PALE%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) kueʹl-
* :%^PALE%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kueʹlˈl Ess+Px..

* LEXICON N_KUEQSSS  kueʹsˈs:kuâsˈs
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
## (5) Sg.Com: kuõʹssin ~ kueʹssin
## (6) Ess: kueʹsˈsen
## (7) Par: kueʹsˈsed
## (8) Pl.Acc: kuõʹssid ~ kueʹssid
## (9) Der/Dimin.N.Sg.Nom: kuâssaž 
* Yaml: **N-kuell**
* There are several stem types 
* kueʹsˈs:kuâsˈs
* : E-STEM_SG-ILL ;  (3) kuâsˈsa
* :%^PALE%^PAL%^CCC2CC DenominalAdjsCShort ; 
* :%^PALE%^PAL E-STEM_SG-NOM ;  (1) kueʹsˈs
* :%^PALE%^PAL%^CCC2CC E-STEM_SG-ABE/ACC/GEN ;  (2) kueʹss
* :%^PALE%^PAL%^CCC2CC PL-NOM ;  (2) kueʹss
* :%^PALE%^PAL%^CCC2CC%>e SG-LOC ;  (4) kueʹssest
* :%^VOWRaise%^PAL%^CCC2CC SG-COM_IN ;  (5) kuõʹssin
* +Use/NGminip+Use/NG:%^PALE%^PAL%^CCC2CC SG-COM_IN ;  kueʹssin
* :%^PALE%^PAL%>e ESS/PAR ;   (6) kueʹsˈsen
* :%^VOWRaise%^PAL%^CCC2CC E-STEM_PL-OBL ;  (8) kuõʹssid
* +Use/NGminip+Use/NG:%^PALE%^PAL%^CCC2CC E-STEM_PL-OBL ;  kueʹssid
* :%^CCC2CC E-STEM_N_KUYLAZH ;  (9) kuâssaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kuâsˈs-
* :%^PALE%^PAL%^CCC2CAllegro E-STEM-PX-ALLEGRO ;  (11) kueʹss-
* :%^PALE%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kueʹsˈs- Ess+Px..

* LEXICON N_MIEQLLL  mieʹll:meâ%{ʹØ%}lˈl
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
## (5) Sg.Com: miõʹllin ~ mieʹllin
## (6) Ess: mieʹlˈlen
## (7) Par: mieʹlˈled
## (8) Pl.Acc: miõʹllid ~ mieʹllid
## (9) Der/Dimin.N.Sg.Nom: meâllaž 
* Yaml: **N-kuell**
* There are several stem types 
* mieʹll:meâlˈl
* : E-STEM_SG-ILL ;  (3) meâlˈla
* :%^VOWRaise%^PALE%^PAL E-STEM_SG-NOM ;  (1) mieʹlˈl
* :%^VOWRaise%^PALE%^PAL%^CCC2CC E-STEM_SG-ABE/ACC/GEN ;  (2) mieʹll
* :%^VOWRaise%^PALE%^PAL%^CCC2CC PL-NOM ;  (2) mieʹll
* :%^VOWRaise%^PALE%^PAL%^CCC2CC%>e SG-LOC ;  (4) mieʹllest
* :%^VOWRaise%^PAL%^CCC2CC SG-COM_IN ;  (5) miõʹllin
* +Use/NGminip+Use/NG:%^VOWRaise%^PALE%^PAL%^CCC2CC SG-COM_IN ;  mieʹllin
* :%^VOWRaise%^PALE%^PAL%>e ESS/PAR ;   (6) mieʹlˈlen
* :%^VOWRaise%^PAL%^CCC2CC E-STEM_PL-OBL ;  (8) miõʹllid
* +Use/NGminip+Use/NG:%^VOWRaise%^PALE%^PAL%^CCC2CC E-STEM_PL-OBL ;  mieʹllid
* :%^CCC2CC E-STEM_N_KUYLAZH ;  (9) meâllaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) meâlˈl-
* :%^VOWRaise%^PALE%^PAL%^CCC2CAllegro E-STEM-PX-ALLEGRO ;  (11) mieʹll-
* :%^VOWRaise%^PALE%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) mieʹlˈl Ess+Px..

* LEXICON N_SUEIQNN  sueiʹnn:suâinn
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: sueiʹnn
## (2) Pl.Nom: sueiʼn
## (3) Sg.Ill: sueinna
## (4) Sg.Loc: sueiʹnest
## (5) Sg.Com: sueiʹnin
## (6) Ess: sueiʹnnen
## (7) Par: sueiʹnned
## (8) Pl.Acc: sueiʹnid
## (9) Der/Dimin.N.Sg.Nom: sueinaž
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-sueinn**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) muârjj-
* :%^VOWRaise%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) mueʹrj-
* +Use/NGminip+Use/NG:%^VOWRaise%^PALE%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) mueʹrj-
* :%^PALE%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) sueiʹnn- Ess+Px..

* LEXICON N_MUEQRJJ  mueʹrjj:muâ%{ʹØ%}rjj
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-muerjj**
* :%^PALE%^PAL%^XYY2XY DenominalAdjsCShort ; 
* :%^PALE%^PAL E-STEM_SG-NOM ;		  	 (1) Sg.Nom: mueʹrjj
* :%^PALE%^PAL%^XYY2XY E-STEM_SG-ABE/ACC/GEN ;	 (2) Pl.Nom: mueʹrj
* :%^PALE%^PAL%^XYY2XY PL-NOM ;	 (2) Pl.Nom: mueʹrj
* : E-STEM_SG-ILL ;  		     	 (3) Sg.Nom: muârjja
* :%^PALE%^PAL%^XYY2XY%>e SG-LOC ;		 (4) Sg.Loc: mueʹrjest
* :%^VOWRaise%^PAL%^XYY2XY SG-COM_IN ;  (5) Sg.Com: muõʹrjin
* +Err/Orth:%^PALE%^PAL%^XYY2XY SG-COM_IN ;  (5) Sg.Com:  mueʹrjin
* :%^VOWRaise%^PAL%^XYY2XY E-STEM_PL-OBL ;  (5) Sg.Com: muõʹrjin
* +Err/Orth:%^PALE%^PAL%^XYY2XY E-STEM_PL-OBL ;  (5) Sg.Com:  mueʹrjin
* :%^PALE%^PAL%>e ESS/PAR ; 	 		   (6) Pl.Nom: mueʹrjjen
* :%^XYY2XY E-STEM_N_KUYLAZH ;		   (9) Der/Dimin.N.Sg.Nom: muârjaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) muârjj-
* :%^VOWRaise%^PALE%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) mueʹrj-
* :%^PALE%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) mueʹrjj Ess+Px..

* LEXICON N_MAAIQLM  maaiʹlm:ma%^1VOWilmm

* Yaml: **N-maailm**
* :%^V2VV%^PAL%^XYY2XY E-STEM_SG-NOM ;		  	 (1) Sg.Nom: mueʹrjj
* :%^V2VV%^PAL%^XYY2XY E-STEM_SG-ABE/ACC/GEN ;	 (2) Pl.Nom: mueʹrj
* :%^V2VV%^PAL%^XYY2XY PL-NOM ;	 (2) Pl.Nom: mueʹrj
* : E-STEM_SG-ILL ;  		     	 (3) Sg.Nom: muârjja
* :%^V2VV%^PAL%^XYY2XY%>e SG-LOC ;		 (4) Sg.Loc: mueʹrjest
* :%^V2VV%^PAL%^XYY2XY SG-COM_IN ;  (5) Sg.Com: muõʹrjin
* :%^V2VV%^PAL%^XYY2XY E-STEM_PL-OBL ;  (5) Sg.Com: muõʹrjin
* :%^V2VV%^PAL%^XYY2XY%>e ESS/PAR ; 	 		   (6) Pl.Nom: mueʹrjjen
* :%^V2VV%^XYY2XY E-STEM_N_KUYLAZH ;		   (9) Der/Dimin.N.Sg.Nom: muârjaž
* :%^V2VV%^XYY2XY E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) muârjj-
* :%^V2VV%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) maiʹlm-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) maiʹlmm Ess+Px..

* LEXICON N_MUQZEI  muʹzei:muʹze
* LEXICON NMN_MUQZEI  muʹzei:muʹze
muʹzei:muʹze
* Yaml: **N-tuodhshteei**

* LEXICON N_SYSTEEQM  uʹčteeʹl:uʹčtẹẹ%{ʹØ%}l
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-presidentt**
* :%^PAL E-STEM_SG-NOM ;		  	 (1) uʹčteeʹl
* :%^PAL E-STEM_SG-ABE/ACC/GEN ;	 (2) uʹčteeʹl
* :%^PAL PL-NOM ;	 (2) uʹčteeʹl
* : E-STEM_SG-ILL ;		     	 (3) uʹčteela
* :%^PAL%>e SG-LOC ;		 (4) uʹčteeʹlest
* :%^PAL SG-COM_IN ;	 (5) uʹčteeʹlin
* :%^PAL E-STEM_PL-OBL ;	 (5) uʹčteeʹlin
* :%^PAL%>e ESS/PAR ; 		 (6) uʹčteeʹlen
* : E-STEM_N_KUYLAZH ;		 (9) uʹčteelaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) uʹčteel-
* :%^VV2V%^PAL E-STEM-PX-ALLEGRO ;  (11) uʹčteʹl-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) nuʹbb Ess+Px..

* LEXICON N_1E-VVQC  rååʹz:råå%{ʹØ%}z
* Yaml: **N-presidentt**
* :%^PAL E-STEM_SG-NOM ;		  	 (1) rååʹz
* :%^PAL E-STEM_SG-ABE/ACC/GEN ;	 (2) rååʹz
* :%^PAL PL-NOM ;	 (2) rååʹz
* : E-STEM_SG-ILL ;		     	 (3) rååza
* :%^PAL%>e SG-LOC ;		 (4) rååʹzest
* :%^VOWRaise%^PAL SG-COM_IN ;	 (5) rooʹzin
* :%^VOWRaise%^PAL E-STEM_PL-OBL ;	 (5) rooʹzin
* :%^PAL%>e ESS/PAR ; 		 (6) rååʹzen
* : E-STEM_N_KUYLAZH ;		 (9) rååzaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) rååz-

* LEXICON N_KANEL  kanel:kanẹ%^1VOWl
* Yaml: **N-kanel**
* : E-STEM_SG-NOM ;		  	 (1) kanel
* :%^V2VV%^PAL E-STEM_SG-ABE/ACC/GEN ;	 (2) kaneeʹl
* :%^V2VV%^PAL PL-NOM ;	 (2) uʹčteeʹl
* :%^V2VV E-STEM_SG-ILL ;		     	 (3) kaneela
* :%^V2VV%^PAL%>e SG-LOC ;		 (4) kaneeʹlest
* :%^V2VV%^PAL SG-COM_IN ;	 (5) kaneeʹlin
* :%^V2VV%^PAL E-STEM_PL-OBL ;	 (5) kaneeʹlin
* :%^V2VV%^PAL%>e ESS/PAR ; 		 (6) kaneeʹlen
* :%^V2VV E-STEM_N_KUYLAZH ;		 (9) kaneelaž
* :%^V2VV E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kaneel-
* :%^PAL E-STEM-PX-ALLEGRO ;  (11) kaneʹl-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kaneʹl Ess+Px..

* LEXICON N_KHIEQMNN  ǩieʹmnn:ǩeâmnn
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: ǩeʹmnn
## (2) Pl.Nom: ǩeeʹmn
## (3) Sg.Ill: ǩeâmnna
## (4) Sg.Loc: ǩeeʹmnest
## (5) Sg.Com: ǩeeʹmnin
## (6) Ess: ǩeʹmnnen
## (7) Par: ǩeʹmnned
## (8) Pl.Acc: ǩeeʹmnid
## (9) Der/Dimin.N.Sg.Nom: ǩeâmnaž
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-aâlghgh**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) ǩeâmnn-
* :%^VOWRaise%^PALE%^PAL%^XYY2XY%^PALK E-STEM-PX-ALLEGRO ;  (11) kieʹmn-
* :%^VOWRaise%^PALE%^PAL%^PALK  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kieʹmnn Ess+Px..

CLASS 1 LOW VOWEL, PALATALIZATION, ILLATIVE IN U NOMINALS

* LEXICON N_LAQB3H3H  läʹbǯǯ:läbǯǯ
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.2 Sg.Loc in -ast (vowel shift)
Raised: Sg.Ill
Lowered: ELSE
a-stems (Sg.Loc, Ess, Par).
## 1.2.2 Sg.Ill vowel -u
## 1.2.2.1 Has Palatalization
## 1.2.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.2.2.1.1.1 Has Orthographic Gradation
## 1.2.2.1.1.1[] (Monophthong + Consonant Cluster alternation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-laebzz**
* +Der+Der/Dimin+N:%^V2VV%> N_PEESSAZH ;   (9) Dim.N.Sg.Nom: lääbǯaž
WORK NEEDED

CLASS 1 LOW VOWEL, PALATALIZATION, ILLATIVE IN A NOMINALS
## e-stems

* LEXICON N_VAEQLL  väʹll:väll
similar_to: N_PAPP
vowel: monophthong
vowel_shift: yes
consonantism: geminate
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-vaell, N-kall**
strong_geminate, short_vowel, palatalization, low_stem_vowel
strong_geminate, short_vowel, depalatalization, low_stem_vowel
strong_geminate, long_vowel, palatalization, low_stem_vowel
strong_geminate, long_vowel, palatalization, high_stem_vowel
strong_geminate, long_vowel, depalatalization, low_stem_vowel
* : E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) väll-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) väʹl-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) väʹll Ess+Px..

* LEXICON N_EQCHCH  eʹčč:ẹ%^1VOWčč
vowel_shift: no
gradation: yes
similarity: N_TOLL:N_KUSS:N_AQVV
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204, 329)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-ecch**
* :%^PAL E-STEM_SG-NOM ;		  	 (1) Sg.Nom: eʹčč
* :%^V2VV%^PAL%^KK2GG E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: eeʼjj
* :%^V2VV%^PAL%^KK2GG PL-NOM ;  (2) Pl.Nom: eeʼjj
* : E-STEM_SG-ILL ;	     (3) Sg.Ill: ẹčča
* :%^V2VV%^PAL%^KK2GG%>e SG-LOC ;  (4) Sg.Loc: eeʹjjest
* :%^V2VV%^PAL%^KK2GG SG-COM_IN ;  (5) Sg.Com: eeʹjjin
* :%^V2VV%^PAL%^KK2GG E-STEM_PL-OBL ;  (5) Sg.Com: eeʹjjin
* :%^PAL%>e ESS/PAR ;  (6) Ess: eʹččen
* :%^V2VV%^KK2GG E-STEM_N_KUYLAZH ;  (9) Der/Dimin.N.Sg.Nom: eejjaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) ẹčč-
* :%^PAL%^KK2GAllegro E-STEM-PX-ALLEGRO ;  (11) eʹj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) eʹčč Ess+Px..

* LEXICON N_PEQKHKH  peʹǩǩ:pẹ%^1VOWkk
vowel_shift: no
gradation: yes
similarity: N_PAPP

## FORMS
NumContLex="1.113"
* Yaml: **N-peqkhkh**
* :%^PAL E-STEM_SG-NOM ;		  	 (1) Sg.Nom: peʹǩǩ
* :%^V2VV%^PAL E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: peeʼǩǩ
* :%^V2VV%^PAL PL-NOM ;  (2) Pl.Nom: peeʼǩǩ
* : E-STEM_SG-ILL ;	     (3) Sg.Ill: pẹkka
* :%^V2VV%^PAL%>e SG-LOC ;  (4) Sg.Loc: peeʹǩǩest
* :%^V2VV%^PAL SG-COM_IN ;  (5) Sg.Com: peeʹǩǩin
* :%^V2VV%^PAL E-STEM_PL-OBL ;  (5) Sg.Com: peeʹǩǩin
* :%^PAL%>e ESS/PAR ;  (6) Ess: eʹččen
* :%^V2VV E-STEM_N_KUYLAZH ;  (9) Der/Dimin.N.Sg.Nom: peekkaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) ẹkk-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) eʹǩ-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) eʹǩǩ Ess+Px..

* LEXICON N_AQVV  äʹvv:ävv
V1ʹC1C1
vowel: monophthong
vowel_shift: no
gradation: yes
similarity: N_TOLL:N_KUSS:N_EQCHCH
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204, 329)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-aevv**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) ävv-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) äʹv-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) äʹvv Ess+Px..

* LEXICON N_STAEQLLJ  stäʹllj:stä%^1VOW%{ʹØ%}llj
N_1E-VQCC
vowel: monophthong
vowel_shift: yes
gradation: yes
similarity: N_TOLL:N_KUSS:N_EQCHCH:N_AQVV
## FORMS
NumContLex="1.113"
* Yaml: **N-staellj**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) ställj-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) stäʹlj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) stäʹllj Ess+Px..

* LEXICON N_PEQLLJ  peʹllj:pẹ%^1VOW%{ʹØ%}llj

vowel: monophthong
vowel_shift: no
gradation: yes
## FORMS
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) pellj-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) peʹlj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) peʹllj Ess+Px..

* LEXICON N_AQKHKH  äʹǩǩ:äkk
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204, 329)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-aekkj**
* There are several stem types
* äʹǩǩ:äʹǩǩ
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) äkk-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) äʹǩ-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) äʹǩǩ Ess+Px..

* LEXICON N_SAAQMM  sääʹmm:sää%{ʹØ%}mm
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-saeaemm**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) säämm-
* :%^VV2V%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) säʹm-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) säʹmm Ess+Px..

* LEXICON N_CHAAQCC  čääʹcc:čääcc
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **caacc**
* There are several stem types
* čääʹcc:čääʹcc
* :%^PAL E-STEM_SG-NOM ;                               (1) čääʹcc
* :%^PAL%^KK2GG E-STEM_SG-ABE/ACC/GEN ;         (2) čääʼʒʒ
* :%^PAL%^KK2GG PL-NOM ;         (2) čääʼʒʒ
* :%^VV2V E-STEM_SG-ILL ;               (3) čäcca
* :%^PAL%^KK2GG%>e SG-LOC ;                     (4) čääʼʒʒest
* :%^VOWRaise%^PAL%^KK2GG SG-COM_IN ;           (5) čaaʼʒʒin
* :%^VOWRaise%^PAL%^KK2GG E-STEM_PL-OBL ;           (5) čaaʼʒʒin
* :%^PAL%>e ESS/PAR ;                               (6) čääʼccen
* :%^KK2GG E-STEM_N_KUYLAZH ;     (9) čääʒʒaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) čääcc-
* :%^VV2V%^PAL%^KK2GAllegro E-STEM-PX-ALLEGRO ;  (11) čäʹʒ-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) čäʹcc Ess+Px..

* LEXICON N_CHAAQCC-PL  čääʹʒʒ:čääcc
* +Cmp/SgNom:%^PAL R ;                    (1) čääʹcc
* :%^PAL%^KK2GG PL-NOM ;         (2) čääʼʒʒ
* :%^VOWRaise%^PAL%^KK2GG E-STEM_PL-OBL ;           (5) čaaʼʒʒin
* :%^PAL%>e ESS/PAR ;                               (6) čääʼccen

* LEXICON N_EEQKHKH  eeʹǩǩ:ẹẹkk
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-eekkj**
* There are several stem types
* eeʹǩǩ:eeʹǩǩ
* :%^PAL E-STEM_SG-NOM ;	    			 (1) eeʹǩǩ
* :%^PAL%^KK2GG E-STEM_SG-ABE/ACC/GEN ;	 (2) eeʹjj
* :%^PAL%^KK2GG PL-NOM ;	 (2) eeʹjj
* :%^VV2V E-STEM_SG-ILL ;     		 (3) ẹkka
* :%^PAL%^KK2GG%>e SG-LOC ;	 		 (4) eeʹjjest
* :%^VOWRaise%^PAL%^KK2GG SG-COM_IN ;		 (5) iiʹjjin
* :%^VOWRaise%^PAL%^KK2GG E-STEM_PL-OBL ;		 (5) iiʹjjin
* +Use/NGminip+Use/NG:%^PAL%^KK2GG SG-COM_IN ;		 (5) eeʹjjin
* +Use/NGminip+Use/NG:%^PAL%^KK2GG E-STEM_PL-OBL ;		 (5) eeʹjjin
* :%^PAL%>e ESS/PAR ; 	   	     		 (6) eeʹǩǩen
* :%^KK2GG E-STEM_N_KUYLAZH ;	 (9) čääʒʒaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) ẹẹkk-
* :%^VV2V%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) eʹǩ-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) eʹǩǩ Ess+Px..

* LEXICON N_TEEQMM  teeʹmm:teemm
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## FORMS
NumContLex="1.113"
* Yaml: **N-teemm**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) teemm-
* :%^VV2V%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) teʹm-
* :%^VV2V%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) nuʹbb Ess+Px..

* LEXICON N_PAAQJJ  pââʹjj:pââjj
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204, 329)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (8) Pl.Acc: pââʹjid
## (9) Der/Dimin.N.Sg.Nom: pââjjaž
NumContLex="1.113"
* Yaml: **N-paajj**
* There are several stem types
* pââʹjj:pââʹjj
* :%^PAL E-STEM_SG-NOM ;			     (1) pââʹjj
* :%^PAL%^CC2C E-STEM_SG-ABE/ACC/GEN ;      (2) pââʹj
* :%^VV2V E-STEM_SG-ILL ;    	     (3) pâjja
* :%^PAL%^CC2C%>e SG-LOC ;	 	     (4) pââʹjest
* :%^VOWRaise%^PAL%^CC2C SG-COM_IN ;	     (5) põõʹjin
* :%^PAL%>e ESS/PAR ;	  	    	     (6) pââʹjjen
* :%^PAL%^CC2C PL-NOM ;      (2) pââʹj
* +Use/NGminip+Use/NG:%^J2I%^CC2C SG-GEN ;      pââi
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) pââjj-
* :%^VV2V%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) pâʹj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) pâʹjj- Ess+Px..

* LEXICON N_KAQLBB  käʹlbb:kälbb âʹlǧǧ:âlgg
similar_to: N_ALGG
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-aâlghgh**
* :%^PAL E-STEM_SG-NOM ;		  			 (1) Sg.Nom: âʹlǧǧ
* :%^V2VV%^PAL%^XYY2XY E-STEM_SG-ABE/ACC/GEN ;	 (2) Pl.Nom: ââʹlj
* : E-STEM_SG-ILL ;	     			   	 (3) Sg.Ill: âlgga
* :%^V2VV%^PAL%^XYY2XY%>e SG-LOC ;		 (4) Sg.Loc: ââʹljest
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY SG-COM_IN ;  (5) Sg.Com: õõʹljin
* :%^PAL%>e ESS/PAR ;	       			 (6) Ess: âʹlǧǧen
* :%^V2VV%^XYY2XY E-STEM_N_KUYLAZH ;		 (9) Der/Dimin.N.Sg.Nom: ââlǥaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kälbb-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) käʹlb-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) käʹlbb Ess+Px..

* :%^PAL%>e ESS/PAR ;                              (6) Ess: âʹlǧǧen

* :%^V2VV%^PAL%^XYY2XY PL-NOM ;	 (2) Pl.Nom: ââʹlj
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY E-STEM_PL-OBL ;  (5) Sg.Com: õõʹljin

* LEXICON N_TEQSTT  argumeʹntt:argumentt
vowel: monophthong
vowel_height_change: no
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-argumentt**
* :%^PAL E-STEM_SG-NOM ;		  			 (1) Sg.Nom: argumeʹntt
* :%^V2VV%^PAL%^XYY2XY E-STEM_SG-ABE/ACC/GEN ;	 (2) Pl.Nom: argumeeʹnt
* :%^V2VV%^PAL%^XYY2XY PL-NOM ;	 (2) Pl.Nom: argumeeʹnt
* : E-STEM_SG-ILL ;	     			   	 (3) Sg.Ill: argumentta
* :%^V2VV%^PAL%^XYY2XY%>e SG-LOC ;		 (4) Sg.Loc: argumeeʹntest
* :%^V2VV%^PAL%^XYY2XY SG-COM_IN ;  (5) Sg.Com: argumeeʹntin
* :%^V2VV%^PAL%^XYY2XY E-STEM_PL-OBL ;  (5) Sg.Com: argumeeʹntin
* :%^PAL%>e ESS/PAR ;	       			 (6) Ess: argumeʹntten
* :%^V2VV%^XYY2XY E-STEM_N_KUYLAZH ;		 (9) Der/Dimin.N.Sg.Nom: argumeentaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) argumentt-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) argumeʹnt-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) argumeʹntt- Ess+Px..

* LEXICON N_PAIQKHKH  päiʹǩǩ:päikk
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-paeikk**
* :%^PAL E-STEM_SG-NOM ;		   (1) Sg.Nom: päiʹǩǩ
* :%^V2VV%^PAL%^XYY2XY E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: pääiʹǩ
* :%^V2VV%^PAL%^XYY2XY PL-NOM ;  (2) Pl.Nom: pääiʹǩ
* : E-STEM_SG-ILL ;	      (3) Sg.Ill: päikka
* :%^V2VV%^PAL%^XYY2XY%>e SG-LOC ;   (4) Sg.Loc: pääiʹǩest
* :%^V2VV%^PAL%^XYY2XY SG-COM_IN ;      (5) Sg.Com: pääiʹǩin
* +Use/NGminip+Use/NG:%^V2VV%^VOWRaise%^PAL%^XYY2XY SG-COM_IN ;      (5) Sg.Com: paaiʹǩin
* :%^PAL%>e ESS/PAR ; 	        (6) Ess: päiʹǩǩen
* :%^V2VV%^PAL%^XYY2XY%> E-STEM_PL-OBL ;    (8) Pl.Acc: pääiʹǩid
* +Use/NGminip+Use/NG:%^V2VV%^VOWRaise%^PAL%^XYY2XY%> E-STEM_PL-OBL ;    (8) Pl.Acc: paaiʹǩid
* :%^V2VV%^XYY2XY E-STEM_N_KUYLAZH ;  (9) Der/Dimin.N.Sg.Nom: pääiǥaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) päikk-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) päiʹǩ-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) päiʹǩǩ- Ess+Px..

* päiʹǩǩ #  examples:*
* *päiʹǩǩ:* `päiʹǩǩ+N+Sg+Nom`
* *pääiʹǩ:* `päiʹǩǩ+N+Sg+Gen`
* *pääiʹǩ:* `päiʹǩǩ+N+Sg+Acc`
* *päikka:* `päiʹǩǩ+N+Sg+Ill`
* *pääiʹǩest:* `päiʹǩǩ+N+Sg+Loc`
* *päiʹǩstan:* `päiʹǩǩ+N+Sg+Loc+PxSg1`
* *pääiʹǩstan:* `päiʹǩǩ+N+Sg+Loc+PxSg1`
* *pääiʹǩin:* `päiʹǩǩ+N+Sg+Com`
* *päiʹǩǩen:* `päiʹǩǩ+N+Ess`
* *päiʹǩǩed:* `päiʹǩǩ+N+Par`
* *pääiʹǩtaa:* `päiʹǩǩ+N+Sg+Abe`
* *pääiʹǩ:* `päiʹǩǩ+N+Pl+Nom`
* *pääiʹǩi:* `päiʹǩǩ+N+Pl+Gen`
* *pääiʹǩid:* `päiʹǩǩ+N+Pl+Acc`
* *pääiʹǩid:* `päiʹǩǩ+N+Pl+Ill`
* *pääiʹǩin:* `päiʹǩǩ+N+Pl+Loc`
* *pääiʹǩivuiʹm:* `päiʹǩǩ+N+Pl+Com`
* *pääiʹǩitaa:* `päiʹǩǩ+N+Pl+Abe`
* *pääikaž:* `päiʹǩǩ+N+Der+Der/Dimin+N+Sg+Nom`
* *pääika:* `päiʹǩǩ+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_LAEUQKHKH  päiʹǩǩ:päikk
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-paeikk**
* :%^PAL E-STEM_SG-NOM ;		   (1) Sg.Nom: läuʹǩǩ
* :%^V2VV%^PAL%^XYY2XY E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: lääuʹǩ
* :%^V2VV%^PAL%^XYY2XY PL-NOM ;  (2) Pl.Nom: lääuʹǩ
* : E-STEM_SG-ILL ;	      (3) Sg.Ill: läukka
* :%^V2VV%^PAL%^XYY2XY%>e SG-LOC ;   (4) Sg.Loc: lääuʹǩest
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY SG-COM_IN ;      (5) Sg.Com: laauʹǩin
* :%^PAL%>e ESS/PAR ; 	        (6) Ess: läuʹǩǩen
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY%> E-STEM_PL-OBL ;    (8) Pl.Acc: laauʹǩid
* :%^V2VV%^XYY2XY E-STEM_N_KUYLAZH ;  (9) Der/Dimin.N.Sg.Nom: lääuǥaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) läukk-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) läuʹǩ-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) läuʹǩǩ- Ess+Px..

* läuʹǩǩ #  examples:*
* *läuʹǩǩ:* `läuʹǩǩ+N+Sg+Nom`
* *lääuʹǩ:* `läuʹǩǩ+N+Sg+Gen`
* *lääuʹǩ:* `läuʹǩǩ+N+Sg+Acc`
* *läukka:* `läuʹǩǩ+N+Sg+Ill`
* *lääuʹǩest:* `läuʹǩǩ+N+Sg+Loc`
* *läuʹǩstan:* `läuʹǩǩ+N+Sg+Loc+PxSg1`
* *lääuʹǩstan:* `läuʹǩǩ+N+Sg+Loc+PxSg1`
* *laauʹǩin:* `läuʹǩǩ+N+Sg+Com`
* *läuʹǩǩen:* `läuʹǩǩ+N+Ess`
* *läuʹǩǩed:* `läuʹǩǩ+N+Par`
* *lääuʹǩtaa:* `läuʹǩǩ+N+Sg+Abe`
* *lääuʹǩ:* `läuʹǩǩ+N+Pl+Nom`
* *laauʹǩi:* `läuʹǩǩ+N+Pl+Gen`
* *laauʹǩid:* `läuʹǩǩ+N+Pl+Acc`
* *laauʹǩid:* `läuʹǩǩ+N+Pl+Ill`
* *laauʹǩin:* `läuʹǩǩ+N+Pl+Loc`
* *laauʹǩivuiʹm:* `läuʹǩǩ+N+Pl+Com`
* *laauʹǩitaa:* `läuʹǩǩ+N+Pl+Abe`
* *lääukaž:* `läuʹǩǩ+N+Der+Der/Dimin+N+Sg+Nom`
* *lääuka:* `läuʹǩǩ+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_HAAQSKH  hääʹsǩ:hää%{ʹØ%}sk
* Yaml: **N-haeaesk**
* :%^PAL E-STEM_SG-NOM ;		   (1) Sg.Nom: hääʹsǩ
* :%^PAL E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: hääʹsǩ
* :%^PAL PL-NOM ;  (2) Pl.Nom: hääʹsǩ
* : E-STEM_SG-ILL ;	      (3) Sg.Ill: hääska
* :%^PAL%>e SG-LOC ;   (4) Sg.Loc: hääʹsǩest
* :%^PAL SG-COM_IN ;      (5) Sg.Com: hääʹsǩin
* :%^PAL%>e ESS/PAR ; 	        (6) Ess: hääʹsǩen
* :%^PAL%> E-STEM_PL-OBL ;    (8) Pl.Acc: hääʹsǩid
* : E-STEM_N_KUYLAZH ;  (9) Der/Dimin.N.Sg.Nom: hääskaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) hääsk-
* :%^PAL E-STEM-PX-ALLEGRO ;  (11) hääʹsǩ-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) hääʹsǩ Ess+Px..

* LEXICON N_SAIQMM  säiʹmm:säimm
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
vowel_shift: No
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-saeimm**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) säimm-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) säiʹm-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) säiʹmm Ess+Px..

* LEXICON N_KHEQDD  ǩeʹdd:ǩe%^1VOWdd
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: ǩeʹdd
## (2) Pl.Nom: ǩeeʹdd
## (3) Sg.Ill: ǩeâdˈda
## (4) Sg.Loc: ǩeeʹddest
## (5) Sg.Com: ǩeeʹddin
## (6) Ess: ǩeʹdden
## (7) Par: ǩeʹdded
## (8) Pl.Acc: ǩeeʹddid
## (9) Der/Dimin.N.Sg.Nom: ǩeâddaž
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-kjedd**
WORK NEEDED FROM HERE DOWN

* LEXICON N_KHEQMNN  ǩeʹmnn:ǩẹ%^1VOW%{ʹØ%}mnn
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: ǩeʹmnn
## (2) Pl.Nom: ǩeeʹmn
## (3) Sg.Ill: ǩeâmnna
## (4) Sg.Loc: ǩeeʹmnest
## (5) Sg.Com: ǩeeʹmnin
## (6) Ess: ǩeʹmnnen
## (7) Par: ǩeʹmnned
## (8) Pl.Acc: ǩeeʹmnid
## (9) Der/Dimin.N.Sg.Nom: ǩeâmnaž
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-aâlghgh**

* ǩeʹmnn #  examples:*
* *ǩeʹmnn:* `ǩeʹmnn+N+Sg+Nom`
* *ǩeeʹmn:* `ǩeʹmnn+N+Sg+Gen`
* *ǩeeʹmn:* `ǩeʹmnn+N+Sg+Acc`
* *ǩeâmnna:* `ǩeʹmnn+N+Sg+Ill`
* *ǩeeʹmnest:* `ǩeʹmnn+N+Sg+Loc`
* *ǩeʹmnstan:* `ǩeʹmnn+N+Sg+Loc+PxSg1`
* *ǩeeʹmnstan:* `ǩeʹmnn+N+Sg+Loc+PxSg1`
* *jaauʹrin:* `ǩeʹmnn+N+Sg+Com` (Eng. ???)
* *ǩeʹmnnen:* `ǩeʹmnn+N+Ess`
* *ǩeʹmnned:* `ǩeʹmnn+N+Par`
* *ǩeeʹmntaa:* `ǩeʹmnn+N+Sg+Abe`
* *ǩeeʹmn:* `ǩeʹmnn+N+Pl+Nom`
* *jaauʹri:* `ǩeʹmnn+N+Pl+Gen`
* *jaauʹrid:* `ǩeʹmnn+N+Pl+Acc`
* *jaauʹrid:* `ǩeʹmnn+N+Pl+Ill`
* *jaauʹrin:* `ǩeʹmnn+N+Pl+Loc`
* *jaauʹrivuiʹm:* `ǩeʹmnn+N+Pl+Com`
* *jaauʹritaa:* `ǩeʹmnn+N+Pl+Abe`
* *jääuraž:* `ǩeʹmnn+N+Der+Der/Dimin+N+Sg+Nom`
* *jääura:* `ǩeʹmnn+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_LAAIQJ  lääiʹj:lääiǥ
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-laeaeij**

* LEXICON N_KHEQRJJ  ǩeʹrjj:ǩerjj
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (NO vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-kerjj**
* :%^PAL SG-NOM ;		  	 (1) Sg.Nom: ǩeʹrjj
* :%^V2VV%^PAL%^XYY2XY E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: ǩeeʹrj
* :%^V2VV%^PAL%^XYY2XY PL-NOM ;  (2) Pl.Nom: ǩeeʹrj
* : E-STEM_SG-ILL ;	     			    (3)  Sg.Ill: ǩẹrjja
* :%^V2VV%^PAL%^XYY2XY%>e SG-LOC ;	    (4) Sg.Loc: ǩeeʹrjest
* :%^V2VV%^PAL%^XYY2XY SG-COM_IN ;	    (5) Sg.Com: ǩeeʹrjin
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY SG-COM_IN ;  (5) Sg.Com: ǩiiʹrjin
* :%^PAL%>e ESS/PAR ;  (6) Ess: ǩeʹrjjen
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY%> PL-OBL ;  (8) Pl.Acc: ǩiiʹrjid
* +Use/NGminip+Use/NG:%^V2VV%^PAL%^XYY2XY%> PL-OBL ;  (8) Pl.Acc: ǩeeʹrjid
* :%^V2VV%^XYY2XY E-STEM_N_KUYLAZH ;   (9) Der/Dimin.N.Sg.Nom: ǩẹẹrjaž

* :%^PAL%>e ESS/PAR ;  (6) Ess: ǩeʹrjjen
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY%> PL-OBL ;  (8) Pl.Acc: ǩiiʹrjid
* +Use/NGminip+Use/NG:%^V2VV%^PAL%^XYY2XY%> PL-OBL ;  (8) Pl.Acc: ǩeeʹrjid
* :%^V2VV%^PAL%^XYY2XY PL-NOM ;  (2) Pl.Nom: ǩeeʹrj

* LEXICON N_TEQKSTT  teʹkstt:tekstt 
gradation: yes
vowel_shift: no
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (NO vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-kerjj**
* :%^PAL SG-NOM ;		  	 (1) Sg.Nom: teʹkstt
* :%^V2VV%^PAL%^XYY2XY E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: teeʹkst
* :%^V2VV%^PAL%^XYY2XY PL-NOM ;  (2) Pl.Nom: teeʹkst
* : E-STEM_SG-ILL ;	     			    (3)  Sg.Ill: tekstta
* :%^V2VV%^PAL%^XYY2XY%>e SG-LOC ;	    (4) Sg.Loc: teeʹkstest
* :%^V2VV%^PAL%^XYY2XY SG-COM_IN ;	    (5) Sg.Com: teeʹkstin
* :%^PAL%>e ESS/PAR ;  (6) Ess: teʹkstten
* :%^V2VV%^PAL%^XYY2XY%> PL-OBL ;  (8) Pl.Acc: teeʹkstid
* :%^V2VV%^XYY2XY E-STEM_N_KUYLAZH ;   (9) Der/Dimin.N.Sg.Nom: teekstaž

* LEXICON N_TAQHTT  täʹhtt:tä%^1VOW%{ʹØ%}h%{ʹØ%}tt
similar_to: KÅHTT
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (NO vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: täʹhtt
## (3) Sg.Ill: tähtta
## (4) Sg.Loc: tääutest
NumContLex="1.113
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-taehtt**
* :%^PAL E-STEM_SG-NOM ;   (1) Sg.Nom: täʹhtt
* :%^V2VV%^PAL%^XYY2VY E-STEM_SG-ABE/ACC/GEN ;    (2) Pl.Nom: tääuʹt
* :%^V2VV%^PAL%^XYY2VY PL-NOM ;    (2) Pl.Nom: tääuʹt
* : E-STEM_SG-ILL ;    (3) Sg.Ill: tähtta
* :%^V2VV%^PAL%^XYY2VY%>e SG-LOC ;    (4) Sg.Loc: tääuʹtest
* :%^V2VV%^VOWRaise%^PAL%^XYY2VY SG-COM_IN ;    (5) Sg.Com: tääuʹtin
* :%^V2VV%^VOWRaise%^PAL%^XYY2VY E-STEM_PL-OBL ;    (5) Sg.Com: tääuʹtin
* :%^PAL%>e ESS/PAR ;    (6) Ess: täʹhtten
* :%^V2VV%^PALNo%^XYY2VY E-STEM_N_KUYLAZH ;    !(9) Der/Dimin.N.Sg.Nom: tääutaž

* +Cmp/SgNom:%^PAL R ;   (1) Sg.Nom: täʹhtt
* :%^V2VV%^PAL%^XYY2VY PL-NOM ;    (2) Pl.Nom: tääuʹt
* :%^V2VV%^VOWRaise%^PAL%^XYY2VY E-STEM_PL-OBL ;    (5) Sg.Com: tääuʹtin
* :%^PAL%>e ESS/PAR ;    (6) Ess: täʹhtten

similar_to: KÅHTT
* Yaml: **N-taehtt**
* +Use/NG+Err/Orth:%^PAL E-STEM_SG-NOM ;   (1) Sg.Nom: käʹhcc
* :%^V2VV%^PAL%^XYY2VY E-STEM_SG-NOM ;   (1) Sg.Nom: kääuʹc
* :%^V2VV%^PAL%^XYY2VY E-STEM_SG-ABE/ACC/GEN ;    (2) Pl.Nom: kääuʹc
* :%^V2VV%^PAL%^XYY2VY PL-NOM ;    (2) Pl.Nom: kääuʹc
* : E-STEM_SG-ILL ;    (3) Sg.Ill: tähtta
* :%^V2VV%^PAL%^XYY2VY%>e SG-LOC ;    (4) Sg.Loc: kääuʹcest
* :%^V2VV%^VOWRaise%^PAL%^XYY2VY SG-COM_IN ;    (5) Sg.Com: kääuʹcin
* :%^V2VV%^VOWRaise%^PAL%^XYY2VY E-STEM_PL-OBL ;    (5) Sg.Com: kääuʹcin
* :%^PAL%>e ESS/PAR ;    (6) Ess: täʹhtten
* :%^V2VV%^PALNo%^XYY2VY E-STEM_N_KUYLAZH ;    !(9) Der/Dimin.N.Sg.Nom: tääutaž

* LEXICON N_RUQHSS  ruʹhss:ruhss
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (NO vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-kerjj**
* :%^PAL E-STEM_SG-NOM ;	    			 (1) ruʹhss
* :%^PAL%^XYY2VY E-STEM_SG-ABE/ACC/GEN ;  (3) ruuʹs
* :%^PAL%^XYY2VY PL-NOM ;  (3) ruuʹs
* :%^VOWLower E-STEM_SG-ILL ;		      	 (3) rohssa
* :%^PAL%^XYY2VY%>e SG-LOC ;		 (4) ruuʹsest
* :%^PAL%^XYY2VY SG-COM_IN ;	 (5) ruuʹsin
* :%^PAL%>e ESS/PAR ; 			 	 (6) ruʹhssen
* :%^PAL%^XYY2VY E-STEM_PL-OBL ;	 (5) ruuʹsin
* :%^V2VV%^VOWLower%^XYY2VY E-STEM_N_KUYLAZH ;  (9) roousaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) ruhss-
* :%^VV2V%^PAL%^XYY2VY E-STEM-PX-ALLEGRO ;  (11) ruʹs-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) ruʹhss Ess+Px..

* LEXICON N_JAEUQRR  jäuʹrr:jä%^1VOWu%{ʹØ%}rr
similar_to: N_AUTT
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (NO vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-jaurr**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) jäurr
* :%^VV2V%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) jäuʹr 
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) jäuʹrr Ess+Px..

* jäuʹrr #  examples:*
* *jäuʹrr:* `jäuʹrr+N+Sg+Nom`
* *jääuʹr:* `jäuʹrr+N+Sg+Gen`
* *jääuʹr:* `jäuʹrr+N+Sg+Acc`
* *jäurra:* `jäuʹrr+N+Sg+Ill`
* *jääuʹrest:* `jäuʹrr+N+Sg+Loc`
* *jäuʹrstan:* `jäuʹrr+N+Sg+Loc+PxSg1`
* *jääuʹrstan:* `jäuʹrr+N+Sg+Loc+PxSg1`
* *jaauʹrin:* `jäuʹrr+N+Sg+Com`
* *jäuʹrren:* `jäuʹrr+N+Ess`
* *jäuʹrred:* `jäuʹrr+N+Par`
* *jääuʹrtaa:* `jäuʹrr+N+Sg+Abe`
* *jääuʹr:* `jäuʹrr+N+Pl+Nom`
* *jaauʹri:* `jäuʹrr+N+Pl+Gen`
* *jaauʹrid:* `jäuʹrr+N+Pl+Acc`
* *jaauʹrid:* `jäuʹrr+N+Pl+Ill`
* *jaauʹrin:* `jäuʹrr+N+Pl+Loc`
* *jaauʹrivuiʹm:* `jäuʹrr+N+Pl+Com`
* *jaauʹritaa:* `jäuʹrr+N+Pl+Abe`
* *jääuraž:* `jäuʹrr+N+Der+Der/Dimin+N+Sg+Nom`
* *jääura:* `jäuʹrr+N+Der+Der/Dimin+N+Sg+Gen`

* LEXICON N_NEIQBB  jäuʹrr:jäurr
similar_to: N_AUTT
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (NO vowel shift)
Raised or lowered: Sg.Com, Pl.Obl
Lowered: ELSE
between _PEIQVV and _JAEUQRR
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
Is for nouns with *-est* Loc, Extra long vowel
* Yaml: **N-jaurr**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) nẹibb
* :%^VV2V%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) neiʹb 
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) neiʹbb Ess+Px..

* LEXICON N_PEIQVV  peiʹvv:pẹ%^1VOWi%{ʹØ%}vv
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster variation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-peivv**
* :%^PAL E-STEM_SG-NOM ;	     (1) Sg.Nom: peiʹvv
* :%^V2VV%^PAL%^XYY2XY E-STEM_SG-ABE/ACC/GEN ;  (2) Pl.Nom: peeiʼv
* :%^V2VV%^PAL%^XYY2XY PL-NOM ;  (2) Pl.Nom: peeiʼv
* : E-STEM_SG-ILL ;		       (3) Sg.Ill: pẹivva
* :%^V2VV%^PAL%^XYY2XY%>e SG-LOC ;	       (4) Sg.Loc: peeiʹvest
* :%^V2VV%^PAL%^XYY2XY SG-COM_IN ;	       (5) Sg.Com: peeiʹvin
* :%^PAL%>e ESS/PAR ; 		   (6) Ess: peiʹvven
* :%^V2VV%^PAL%^XYY2XY E-STEM_PL-OBL ;  (8) Pl.Acc: peeiʹvid
* :%^V2VV%^XYY2XY E-STEM_N_KUYLAZH ;  (9) Der/Dimin.N.Sg.Nom: pẹẹivaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) pẹivv-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) peiʹv-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) peiʹvv Ess+Px..

* +Cmp/SgNom:%^PAL R ;	 (1) Sg.Nom: peiʹvv
* :%^V2VV%^PAL%^XYY2XY PL-NOM ;  (2) Pl.Nom: peeiʼv
* :%^PAL%>e ESS/PAR ; 		   (6) Ess: peiʹvven
* :%^V2VV%^PAL%^XYY2XY PL-OBL ;  (8) Pl.Acc: peeiʹvid

* LEXICON N_PIEAQSS  pieʹss:peäss
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: ELSE
Lowered: Sg.Ill
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (8) Pl.Acc: pieʹzzid
* Yaml: **N-piess, N-kjiechch**

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) peäss-
* :%^PAL%^KK2GAllegro E-STEM-PX-ALLEGRO ;  (11) piẹʹz-
* :%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) peäʹsˈs Ess+Px..

* LEXICON N_SUEAQKHKH  sueʹǩǩ:suäkk
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE  ẹ, ä
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-suekkj**

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) suäkk-
* :%^VOWRaise%^PALẸ%^Allegro%^PAL%^KK2GAllegro E-STEM-PX-ALLEGRO ;  (11) suẹˈʹj-
* :%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) suäʹǩˈǩ Ess+Px..

* LEXICON N_KUEAQTT  kuẹʹtt:kuätt
similar_to: N_SUEAQKHKH
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE  ẹ, ä
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-kuett**
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) kuätt-
* :%^PAL%^CC2C E-STEM-PX-ALLEGRO ;  (11) kuẹʹđ-
* :%^PAL%^CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) kuäʹtˈt- Ess+Px..

* LEXICON N_NUEAQJJ  nuẹʹjj:nuäjj
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE  ẹ, ä
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
NumContLex="1.113"
* Yaml: **N-nuejj**
similar_to: N_KHIOJJ, N_TUYJJ, N_SUEQJJ

* LEXICON N_VIEQMM  vieʹmm:veâmm
similar_to: N_SUEAQKHKH
## FORMS
NumContLex="1.113"
* Yaml: **N-vieqmm**
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) veâmm-
* :%^PALE%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) vieʹm-
* :%^PALE%^PAL%CC2CCC  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) vieʹmˈm Ess+Px..

* LEXICON N_VUEAIQVV  vuẹiʹvv:vuäivv
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE  ẹ, ä
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: vuẹiʹvv
## (2) Pl.Nom: vuẹiʼv
## (3) Sg.Ill: vuäivva
## (4) Sg.Loc: vuẹiʹvest
## (5) Sg.Com: vueiʹvin
## (6) Ess: vuẹiʹvven
## (7) Par: vuẹiʹvved
## (8) Pl.Acc: vueiʹvid
## (9) Der/Dimin.N.Sg.Nom: vuäivaž
NumContLex="1.113"
* Yaml: **N-vueivv**
* There are several stem types
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) vuäivv-
* :%^VOWRaise%^PALẸ%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) vuẹiʹv-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) vuäiʹvv- Ess+Px..

* LEXICON N_CHUAQRVV  čuäʹrvv:čuärvv
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 204)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: Sg.Com, Pl.Obl
Lowered: ELSE  ẹ, ä
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Geminate Variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: čuäʹrvv
## (2) Pl.Nom: čuẹʼrv
## (3) Sg.Ill: čuärvva
## (4) Sg.Loc: čuẹʹrvest
## (5) Sg.Com: čueʹrvin
## (6) Ess: čuäʹrvven
## (7) Par: čuäʹrvved
## (8) Pl.Acc: čueʹrvid
## (9) Der/Dimin.N.Sg.Nom: čuärvaž
NumContLex="1.113"
* Yaml: **N-chuaervv**
* There are several stem types
čuäʹrvv+N+Sg+Nom
čuäʹrvv
čuäʹrvv+N+Sg+Gen
čuẹʼrv
čuẹʼrv
čuäʹrvv+N+Sg+Ill
čuärvva
čuäʹrvv+N+Sg+Loc
čuẹʼrvest
čuäʹrvv+N+Ess
čuäʼrvven
čuäʹrvv+N+Sg+Com
čueʼrvin
čuäʹrvv+N+Der+Der/Dimin+N+Sg+Nom
čuärvaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) čuärvv-
* :%^PALẸ%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) čuẹʹrv-
čuäʹrvv+N+Ess+PxSg1
(12) čuäʹrvvinan

čuäʹrvv
čuẹʼrv
čuäʹrvv+N+Ess
čuäʼrvven

* LEXICON N_NEUQLL  neuʹll:ne%^1VOWull 
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster variation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: neuʹll
## (2) Pl.Nom: neeuʹl
## (3) Sg.Ill: neâulla
## (4) Sg.Loc: neeuʹlest
## (5) Sg.Com: neeuʹlin
## (6) Ess: neuʹllen
## (7) Par: neuʹlled
## (8) Pl.Acc: neeuʹlid
## (9) Der/Dimin.N.Sg.Nom: neâulaž
* Yaml: **N-neull**
* There are several stem types
* neuʹll:neâull

* LEXICON N_JEAQNNN  jeäʹnn:jeä%{ʹØ%}nˈn, jeäʹǧǧ:jeä%{ʹØ%}gˈg, vuäʹbb:vuä%{ʹØ%}bˈb
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (vowel shift)
Raised: ELSE
Lowered: Sg.Ill
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-jeaggj**
* There are several stem types 
*  E-STEM_SG-ILL ;	      (3) jeägˈga
* :%^PAL E-STEM_SG-NOM ;        (1) jeäʹǧˈǧ
* :%^VOWRaise%^PALẸ%^PAL%^CCC2CC E-STEM_SG-ABE/ACC/GEN ;	  (2) jiẹʹǧǧ
* :%^VOWRaise%^PALẸ%^PAL%^CCC2CC PL-NOM ;	  (2) jiẹʹǧǧ
* :%^VOWRaise%^PALẸ%^PAL%^CCC2CC%>e SG-LOC ;   (4) jiẹʹǧǧest
* :%^VOWRaise%^PALE%^PAL%^CCC2CC SG-COM_IN ;   (5) jieʹǧǧin
* :%^VOWRaise%^PALE%^PAL%^CCC2CC E-STEM_PL-OBL ;   (5) jieʹǧǧin
* :%^PAL%>e ESS/PAR ; 	  (6) jeäʹǧˈǧen, (7) jeäʹǧˈǧed

* :%^CCC2CC E-STEM_N_KUYLAZH ; 	      			  (9) jeäggaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;				  (10) jeägˈg-
* :%^VOWRaise%^PALẸ%^Allegro%^PAL%^CCC2CAllegro E-STEM-PX-ALLEGRO ;  (11) jiẹˈʹǧ-
* :%^PAL E-STEM-PX-STRENGTHEN-WITH-PAL ;			    (12) jeäʹǧˈǧ
* +Use/NGminip+Use/NG:%^VOWRaise%^PALẸ%^PAL%^CCC2CC E-STEM-PX-ALLEGRO ;   (2)

* jeäʹnn # examples:*
jeäʹnˈn: 	   jeäʹnn+N+Sg+Nom
jiẹʹnn: 	   jeäʹnn+N+Sg+Gen
jiẹʹnn: 	   jeäʹnn+N+Sg+Acc
jeänˈna: 	   jeäʹnn+N+Sg+Ill
jiẹʹnnest: 	   jeäʹnn+N+Sg+Loc
jiẹˈʹnstan: 	   jeäʹnn+N+Sg+Loc+PxSg1
jiẹʹnnstan: 	   jeäʹnn+N+Sg+Loc+PxSg1
jieʹnnin: 	   jeäʹnn+N+Sg+Com
jeäʹnˈnen: 	   jeäʹnn+N+Ess
jeäʹnˈned: 	   jeäʹnn+N+Par
jiẹʹnntaa: 	   jeäʹnn+N+Sg+Abe
jiẹʹnn: 	   jeäʹnn+N+Pl+Nom
jieʹnni: 	   jeäʹnn+N+Pl+Gen
jieʹnnid: 	   jeäʹnn+N+Pl+Acc
jieʹnnid: 	   jeäʹnn+N+Pl+Ill
jieʹnnin: 	   jeäʹnn+N+Pl+Loc
jieʹnnivuiʹm:   jeäʹnn+N+Pl+Com
jieʹnnitaa: 	   jeäʹnn+N+Pl+Abe
jeännaž: 	   jeäʹnn+N+Der+Der/Dimin+N+Sg+Nom
jeänna: 	   jeäʹnn+N+Der+Der/Dimin+N+Sg+Gen

* :%^VOWRaise%^PALẸ%^PAL%^CCC2CC PL-NOM ;   (2) jiẹʹǧǧ
* :%^VOWRaise%^PALE%^PAL%^CCC2CC E-STEM_PL-OBL ;   (5) jieʹǧǧin
* :%^PAL%>e ESS/PAR ;       (6) jeäʹǧˈǧen, (7) jeäʹǧˈǧed

* LEXICON E-STEM_SG-NOM  (1)

* LEXICON E-STEM_SG-ABE/ACC/GEN  (2)
e.g. +Sg+Acc+PxPl3
e.g. +Use/NG+Sg+Loc+PxSg1
låʹdd >> lååʹddi; it should  be lå'dd >> loo'ddi

* LEXICON E-STEM_SG-ILL  (3)

* LEXICON E-STEM_N_KUYLAZH  (9)

* LEXICON N_JEAQRMM  jeäʹrǧǧ:jeärgg
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
* Yaml: **N-jeaerggj, N-keadgg**
* There are several stem types 
* jeäʹrǧǧ:jeäʹrǧǧ
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) jeärgg-
* :%^PALẸ%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) jiẹʹrj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) jeäʹrmm Ess+Px..

* LEXICON N_REAEIQGHGH  reäiʹǧǧ:reäigg
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180, 197-199)
## 1.3 Sg.Loc in -est (no vowel shift, all lowered)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.1 Has Palatalization
Palatalized: ELSE
Not Palatalized: Sg.Ill
## 1.3.2.1.2 Has Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Diphthong + Consonant and Geminate variation)
Strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com, Dim
## FORMS
* Yaml: **N-jeaerggj, N-keadgg**
* There are several stem types 
* jeäʹrǧǧ:jeäʹrǧǧ
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) reäigg-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) reäiʹj-
* :%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) reäiʹǧǧ Ess+Px..

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) reâmjj- CHECKME 2016-08-19
* :%^VOWRaise%^PALE%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) rieʹmj-
* :%^VOWRaise%^PALE%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) rieʹmjj Ess+Px..

* LEXICON N_CHIOQLJ  čiõʹlj:čeâ%{ʹØ%}lǥ

*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) čeâlǥ- CHECKME 2016-08-19
* :%^VOWRaise%^PAL E-STEM-PX-ALLEGRO ;  (11) čiõʹlj-
* :%^VOWRaise%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) nuʹbb Ess+Px..

WHAT IS THIS CLASS

* LEXICON N_KUQMPP  kuʹmpp:kumpp
N_E-EPal3-31
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (no vowel shift, all raised)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -e
## 1.3.2.1 Has Palatalization (all palatalized)
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster Variation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-kumpp**
???* There are several stem types
* kuʹmpp:kuʹmpp
NumContLex="1.1140000000000001"

* LEXICON N_BAEQNDD  bäʹndd:kumpp
N_E-EPal3-31
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (no vowel shift, all raised)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -e
## 1.3.2.1 Has Palatalization (all palatalized)
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster Variation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-kumpp**
???* There are several stem types
* bäʹndd:kuʹmpp
NumContLex="1.1140000000000001"

* LEXICON N_KRIQLCC  kriʹlcc:krilcc
## FORMS
* Yaml: **N-krilcc**
???* There are several stem types
* kriʹlcc:kriʹlcc

gradation: yes
## FORMS
* Yaml: **N-krilcc**
???* There are several stem types
* kriʹlcc:kriʹlcc

* LEXICON N_DIQLL  diʹll:di%^1VOW%{ʹØ%}ll
## FORMS
* Yaml: **N-dill**

* LEXICON N_KAAQFF  kaaʹff:kaaʹff

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (no vowel shift, all raised)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -e
## 1.3.2.1 Has Palatalization (all palatalized)
## 1.3.2.1.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.1.1.1 Has Orthographic Gradation
## 1.3.2.1.1.1[] (Monophthong + Consonant Cluster Variation)
Strong grade: Sg.Nom, Ess, Par
Strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-kaaff**
???* There are several stem types
* kaaʹff:kaaʹff
NumContLex="1.1140000000000001"

* LEXICON N_KLAAQDD  klaaʹdd:klaadd
X2 no gradation; no lowering no raising
Sg_Ill="palatalization|e-final"
cf. plaan 
* Yaml: **N-klaadd**
New

These must be checked 2017-04-03

* LEXICON N_ZEEQTT  zeeʹtt:zẹẹtt

## FORMS
* Yaml: **N-zeett**

* LEXICON N_POAOAQMH  pååʹmh:påå%{ʹØ%}mh

## FORMS
* Yaml: **N-zeett**

* LEXICON N_LUUKK  
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst. â-stems (Sg.Loc, Ess, Par).
## 1.1.3 Sg.Ill in palatalization and -e
## 1.1.3.2 LACKS Gradation
## 1.1.3.2.1 Monophthong
## 1.1.3.2.1.1 Consonant Geminate
## 1.1.3.2.1.1.2 Sg.Nom Strong Grade
## 1.1.3.2.1.1.2.2.Sg.Gen Strong Grade
## 1.1.3.2.1.1.2.2.2 Sg.Ill Strong Grade
luukk:luukk is for nouns with -âst Loc and no gradation. N_Y-EPal1-11, N_Y-EPal2-22
* Yaml: **saarf, luukk**
* +Der+Der/Dimin+N: N_KUUZZYZH-WITHOUT-PAL ;   paar-
* +Der+Der/Dimin+N:%^PAL N_KUUZZYZH-WITH-PAL ;   paaʹr-

* LEXICON N_BIOLOOG  bioloog:bioloog
## 2. WORDS WITH TWO-SYLLABLE NOMINATIVE SINGULARS (2009: 288)
## 2.1 Sg.Loc in -âst. â-stems (Sg.Loc, Ess, Par).
## 2.1.3 Sg.Ill in palatalization and -e
## 2.1.3.3 Lacks Gradation (in last syllable)
## 2.1.3.3.1 Monophthong
## 2.1.3.3.1.3 Consonant always short
## 2.1.3.3.1.3.4 Sg.Nom long vowel AND Short consonant
## 2.1.3.3.1.3.4.1.Sg.Gen Weak Grade
## 2.1.3.3.1.3.4.1.3 Sg.Ill Weak Grade
bioloog:bioloog
* Yaml: **N-bioloog**
* +Der+Der/Dimin+N: N_MUORYZH-WITHOUT-PAL ;   bioloog-
* +Der+Der/Dimin+N:%^PAL N_MUORYZH-WITH-PAL ;   biolooʹǧ-

* LEXICON N_JARPLAAN  
## 2. WORDS WITH TWO-SYLLABLE NOMINATIVE SINGULARS (2009: 288)
## 2.1 Sg.Loc in -âst. â-stems (Sg.Loc, Ess, Par).
## 2.1.3 Sg.Ill in palatalization and -e
## 2.1.3.3 Has Gradation in last syllable
## 2.1.3.3.1 Monophthong
## 2.1.3.3.1.3 Consonant always short
## 2.1.3.3.1.3.4 Sg.Nom Short vowel AND Short consonant
## 2.1.3.3.1.3.4.1.Sg.Gen Weak Grade
## 2.1.3.3.1.3.4.1.3 Sg.Ill Weak Grade
jarplan:jarplan
* Yaml: **N-jarplaan**
* +Der+Der/Dimin+N: N_MUORYZH-WITHOUT-PAL ;   paar-
* +Der+Der/Dimin+N:%^PAL N_MUORYZH-WITH-PAL ;   paaʹr-

* LEXICON N_ATOM  atom:atom
## 2. WORDS WITH TWO-SYLLABLE NOMINATIVE SINGULARS (2009: 288)
## 2.1 Sg.Loc in -âst. â-stems (Sg.Loc, Ess, Par).
## 2.1.3 Sg.Ill in palatalization and -e
## 2.1.3.3 Has Gradation in last syllable
## 2.1.3.3.1 Monophthong
## 2.1.3.3.1.3 Consonant always short
## 2.1.3.3.1.3.4 Sg.Nom Short vowel AND Short consonant
## 2.1.3.3.1.3.4.1.Sg.Gen Weak Grade
## 2.1.3.3.1.3.4.1.3 Sg.Ill Weak Grade
atom:atom
* Yaml: **N-atom**
* +Der+Der/Dimin+N:%^V2VV N_MUORYZH-WITHOUT-PAL ;   paar-
* +Der+Der/Dimin+N:%^V2VV%^PAL N_MUORYZH-WITH-PAL ;   paaʹr-

e.g.
e.g. +Use/NG+Sg+Loc+PxSg3
e.g. +Sg+Loc+PxSg1

* LEXICON N_ESAI  Esai:Esa%^1VOW%{ʹØ%}i
* LEXICON NMN_ESAI  Esai:Esa%^1VOW%{ʹØ%}i

* Yaml: **esai**

e.g.
e.g. +Use/NG+Sg+Loc+PxSg3
e.g. +Sg+Loc+PxSg1

* LEXICON N_BLOUSLOV  blouslõv:blouslõ%^1VOWv CHECKME
* Yaml: **N-blouslov**
* +Der+Der/Dimin+N:%^V2VV N_MUORYZH-WITHOUT-PAL ;   paar-
* +Der+Der/Dimin+N:%^V2VV%^PAL N_MUORYZH-WITH-PAL ;   paaʹr-

e.g.
e.g. +Use/NG+Sg+Loc+PxSg3
e.g. +Sg+Loc+PxSg1

* LEXICON N_EVANHGHEQLIUM  evaŋǧeʹlium:evaŋǧeʹlium
evaŋǧeʹlium:evaŋǧeʹlium
* Yaml: **N-evaŋǧeʹlium**
* +Der+Der/Dimin+N:%^V2VV N_MUORYZH-WITHOUT-PAL ;   paar-
* +Der+Der/Dimin+N:%^V2VV%^PAL N_MUORYZH-WITH-PAL ;   paaʹr-

* LEXICON N_AIHAM  aiham:aiham
## 2. WORDS WITH TWO-SYLLABLE NOMINATIVE SINGULARS (2009: 288)
## 2.1 Sg.Loc in -ast. a-stems (Sg.Loc, Ess, Par).
## 2.1.3 Sg.Ill in palatalization and -a
## 2.1.3.3 Has Gradation in last syllable
## 2.1.3.3.1 Monophthong
## 2.1.3.3.1.3 Consonant always short
## 2.1.3.3.1.3.4 Sg.Nom Short vowel AND Short consonant
## 2.1.3.3.1.3.4.1.Sg.Gen Weak Grade
## 2.1.3.3.1.3.4.1.3 Sg.Ill extra Strong Grade
* Yaml: **N-aiham**

## CLASS 2 NOMINALS with high stem vowel and i-stems
* LEXICON N_JUURD  juurd:ju%^1VOWrdd
* LEXICON NMN_JUURD  juurd:ju%^1VOWrdd
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
N_GEN2I-ILLAX3-LOCEX3-NOM1X1
* Yaml: **N-juurd**
* There are several stem types 
* juurd:juurd
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* +Err/Orth:%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_AAZZ  aazz:a%^1VOWss
* LEXICON NMN_AAZZ  aazz:a%^1VOWss
* Yaml: **N-aazz**
* There are several stem types 
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* +Err/Orth:%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_KOODH  koođ:ko%^1VOWđđ
* LEXICON NMN_KOODH  koođ:ko%^1VOWđđ
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
* Yaml: **N-koodh**
* There are several stem types 
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* +Err/Orth:%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_KAAV  kaav:kaapp
* LEXICON NMN_KAAV  kaav:kaapp
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
* Yaml: **N-kaav**
* There are several stem types 
* :%>%{ʼØ%}j%>e ESS/PAR ;  kaappjân 
* +Use/NGminip+Use/NG:%>%{ʼØ%}j%>â ESS/PAR ;  kaappjân 
* +Use/NGminip+Use/NG:%^CC2C%>â ESS/PAR ;  kaavân
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_JAAM  jaam:ja%^1VOWmm
* LEXICON NMN_JAAM  kaav:kaapp
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
* Yaml: **N-jaam**
* There are several stem types 
* :%>%{ʼØ%}j%>e ESS/PAR ;  jammjân 
* +Use/NGminip+Use/NG:%>%{ʼØ%}j%>â ESS/PAR ;  jammjân 
* +Use/NGminip+Use/NG:%^V2VV%^CC2C%>â ESS/PAR ;  jaamân
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_POOUS  poous:po%^1VOWhss
* LEXICON NMN_POOUS  poous:po%^1VOWhss
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
N_GEN2I-ILLAX3-LOCEX3-NOM1X1
* Yaml: **N-poous**
* There are several stem types 
* poous:poous
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_MAADD  maadd:madd
* LEXICON NMN_MAADD  maadd:madd
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
* Yaml: **N-maadd**
* There are several stem types 
* maadd:maadd
strong_geminate, long_vowel, no-palatalization, high_stem_vowel
strong_geminate, short_vowel, no-palatalization, high_stem_vowel

* :%>ǥ VOONYS-STEM-PX ;  võnns-
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_LIOV  liõv:liõpp
* Yaml: **N-liov**
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_MUOTT  muõtt:muõtˈt
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
* Yaml: **N-muott**
* There are several stem types 
* muõtt:muõtt
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_SUOL  suõl:suõlˈl
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
* Yaml: **N-suol**
* There are several stem types 
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_PUOADH  puåđ:puått
is for nouns with stem *i* + *-est* +Sg+Loc; all stem other than the +Sg+Nom are X3; the *i* does not occur in +Par 
* Yaml: **N-puadh**
* There are several stem types 
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_MUOARD  muård:muårdd
* Yaml: **N-muard**
* :%>ǥ VOONYS-STEM-PX ;  võnns-
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_MUU3  muuʒ:muvʒʒ
* LEXICON NMN_MUU3  muuʒ:muvʒʒ
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 180)
## 1.3 Sg.Loc in -est (no vowel shift, all raised)
e-stems (Sg.Loc, Ess, Par).
## 1.3.2 Sg.Ill vowel -a
## 1.3.2.2 Lacks Palatalization
## 1.3.2.2.1 Lacks Specifically Pedagogical Gradation
## 1.3.2.2.1.1 Has Orthographic Gradation
## 1.3.2.2.1.1[] (Monophthong + Consonant Cluster Variation)
Weak grade: Sg.Nom
Extra strong grade: Ess, Par
Extra strong grade: Sg.Ill
Extra strong grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
## (1) Sg.Nom: muuʒ
## (2) Pl.Nom: muvʒʒi
## (3) Sg.Ill: muvʒʒǥa
## (4) Sg.Loc: muvʒʒest
## (5) Sg.Com: muvʒʒin
## (6) Ess: muvʒʒen
## (7) Par: muvʒʒed
## (8) Pl.Acc: muvʒʒjid
## (9) Der/Dimin.N.Sg.Nom:
* Yaml: **N-muuz**
* There are several stem types 
* muuʒ:muvʒʒi
* :%>ǥ VOONYS-STEM-PX ;  võnns-

CLASS 2 NOMINALS with low stem vowel and u-stems
## u-stems
* LEXICON N_MAEAEN  mään:mann
* LEXICON NMN_MAEAEN  mään:mann
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 228)
## 1.2 Sg.Loc in -ust. u-stems (Sg.Loc, Ess, Par).
## 1.2.3 Sg.Ill in raised vowel and -u
## 1.2.3.1 Has Gradation
## 1.2.3.1.1 Monophthong
## 1.2.3.1.1.1 Consonant Geminate (W2XSt)
## 1.2.3.1.1.1.1 Sg.Nom Weak Grade
## 1.2.3.1.1.1.1.3.Sg.Gen Extra Strong Grade
## 1.2.3.1.1.1.1.3.3 Sg.Ill Extra Strong Grade
## 1.2.3.1.1.1.1.3.3.Q All but Sg.Nom are raised vowels
* Yaml: **N-maan**
* There are several stem types
* :%^V2VV%^VOWLower%^CC2C SG-NOM ;	         mään
* :%>u SG-ABE/ACC/GEN-PL-NOM ;	 		  mannu

* LEXICON N_PYYGG  pââgg:põgg
* LEXICON NMN_PYYGG  pââgg:põgg
* Yaml: **N-paagg**
* There are several stem types
* :%^V2VV%^VOWLower SG-NOM ;	         pââgg
* :%>u SG-ABE/ACC/GEN ;	 		  põggu
* :%>u PL-NOM ;	 		  põggu

* LEXICON N_NJOORGX  njoorǥ:njurgg
* LEXICON NMN_NJOORGX  njoorǥ:njurgg
* Yaml: **N-paagg**
* There are several stem types
* :%^V2VV%^VOWLower%^XYY2XY SG-NOM ;	         njoorǥ
* :%>u SG-ABE/ACC/GEN ;	 		  njurggu
* :%>u PL-NOM ;	 		  njurggu

* LEXICON N_SUYL   suâl:suõlˈl
*   is for nouns with *-est* +Loc
* Yaml: **N-sual**
* There are several stem types

* LEXICON N_KUYUS   kuâus:kuõhss
*   is for nouns with *-est* +Loc
* Yaml: **N-kuyus**
* There are several stem types

* LEXICON N_CUYBB   cuâbb:cuõbˈb
*   is for nouns with *-est* +Loc
* Yaml: **N-sual**
* There are several stem types

* LEXICON N_CHUYNJ   čuânj:čuõnˈnj
*   is for nouns with *-est* +Loc
* Yaml: **N-sual**
* Ther aere several stem types

* LEXICON N_PUYGXGX  puâǥǥ:puõkˈk
*   is for nouns with *-est* +Loc
* Yaml: **N-puaghgh**

* LEXICON N_PUA33  puäʒʒ:puõcˈc
*   is for nouns with *-est* +Loc
* Yaml: **N-sual**
* There are several stem types
* puäʒʒ:puõcˈc

CLASS 2 NOMINALS with high stem vowel and â-stems
* LEXICON N_PIIDH  piiđ:pitt
*   is for nouns with *-âst* +Loc
* Yaml: **N-piidh**
* There are several stem types
* piiđ:pitt
* :%^V2VV%^CC2C SG-NOM ;		 	 (1) piiđ
* :%^V2VV%^CC2C SG-ABE/ACC/GEN-PL-NOM ;	 (2) piiđ
* :%^V2VV%^PAL%^CC2C%>e SG-ILL ; 		 (3) piiʹđe
* +Use/NGminip+Use/NG:%>u SG-ILL ; 			 (3) pittu
* :%^V2VV%^CC2Câ SG-LOC ;			 (4) piiđâst
* :%^V2VV%^CC2C SG-COM_IN/PL-OBL ;	 (5) 
* :%^V2VV%^CC2Câ ESS/PAR ; 		 (6) 

* LEXICON N_OODHI  oođi:oođ
* LEXICON NMN_OODHI  oođi:oođ
* Yaml: **N-oodhi**
* There are several stem types 
* :%>ǥ VOONYS-STEM-PX ;  võnns-

CLASS 3 HIGH VOWEL, MONOPHTHONG, NO PALATALIZATION NOMINALS
## m-stems

* LEXICON N_LAAJJ  laajj:la%^1VOWčč
* LEXICON NMN_LAAJJ  laajj:la%^1VOWčč
* Yaml: **N-laajj**

* LEXICON N_OODH  õõđ:õ%^1VOWđđ
* LEXICON NMN_OODH  õõđ:õ%^1VOWđđ
* Yaml: **N-oodhdh**

* LEXICON N_SOOUS  sõõus:sõhss
* Yaml:
* LEXICON NMN_SOOUS  sõõus:sõ%^1VOWhss

* LEXICON N_LAAUR  laaur:laurr
* LEXICON NMN_LAAUR  laaur:laurr
* Yaml:

* LEXICON N_VYYID  vââid:võ%^1VOWidd
* LEXICON NMN_VYYID  vââid:võ%^1VOWidd
* Yaml: **N-vyyid**
similar_to:

CLASS 3

## n-stems

* LEXICON N_SIOM   = siõm:siõmˈm
* LEXICON NMN_SIOM   = siõm:siõmˈm
* Yaml: **N-siom**

* LEXICON N_SEAEM   = seäm:seämˈm
* LEXICON NMN_SEAEM   = seäm:seämˈm
* Yaml: **N-siom**

* LEXICON N_VUYSK  vuâsk:vuâskk
* LEXICON NMN_VUYSK  vuâsk:vuâskk
* Yaml: **N-kuolban**
similar_to:N_KUOLBYN

* LEXICON N_KHIYLGX  ǩiâlǥ:ǩiâlgg
* LEXICON NMN_KHIYLGX  ǩiâlǥ:ǩiâlgg
* Yaml: **N-kuolban**
similar_to:N_KUOLBYN

* LEXICON N_KUOLBYN  kuõlbân:kuõlbb
* LEXICON NMN_KUOLBYN  kuõlbân:kuõlbb
* Yaml: **N-kuolban**

* LEXICON N_SIEQM  sieʹm:siâmˈm
stemtype Am-stem
* Yaml: **N-siem**

* LEXICON N_LUEQM  lueʹm:luâmˈm
stemtype Am-stem
* Yaml: **N-luem**

CLASS 3
* LEXICON N_VUEQN  vueʹn:vuânˈn
stemtype Am-stem
* Yaml: **vuen**

Are these actually necessary 2015-05-30 

* LEXICON N_CHYYQDH  čââʹđ:čâđđ
* Yaml: **N-caad**
- čââʹđ:čââʹđ

* LEXICON N_CHUEQNJ  čueʹnj:čuânˈnj
stemtype Aǥ-stem
* Yaml: **N-chuenj**

CLASS 4 BISYLLABIC, HIGH VOWEL, MONOPHTHONG, NO PALATALIZATION
IN PENULTIMATE Â:0

* LEXICON N_KOONJYL  kõõnjâl:k%^1VOWõnnjâl
* LEXICON NMN_KOONJYL  kõõnjâl:k%^1VOWõnnjâl
similar to TOLL
* Yaml: **koonjal**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_VOONYS   võõnâs:võ%^1VOWnnâs
* LEXICON NMN_VOONYS   võõnâs:võnnâs
like TOLL

N_GEN2X3-NOM2X1
* Yaml: **N-voonas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_CHOOGXGXYS   čõõǥǥâs:čõ%^1VOWkkâs
* LEXICON NMN_CHOOGXGXYS   čõõǥǥâs:čõkkâs
like KUSS

N_GEN2X3-NOM2X1
* Yaml: **N-chooghghas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_KOODDYS  kõõddâs:kõddâs
* LEXICON NMN_KOODDYS  kõõddâs:kõddâs
like N_PODD, N_PAPP, N_LUUBBYL
* Yaml: **N-kooddas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_LUUBBYL  luubbâl:lubbâl
* LEXICON NMN_LUUBBYL  luubbâl:lubbâl
like PODD but also PAPP, N_KOODDYS
* Yaml: **N-luubbal**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_TAALKYS  taalkâs:ta%^1VOWlkkâs
* LEXICON NMN_TAALKYS  taalkâs:talkkâs
like PÕRTT
* Yaml: **N-taalkas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_TAALKYS-PL  taalkâs:ta%^1VOWlkkâs

* LEXICON N_PIIUTYS  piiutâs:pihttâs
* LEXICON NMN_PIIUTYS  piiutâs:pihttâs
like N_VAHTT
stemtype n-stem piiutâs:piiutâs
* Yaml: **N-piiutas**
* :%^Pen%^V2VV%^Pen%^XYY2VY SG-NOM ;  piiutâs
* :%^RmVow VOONYS-STEM-PX ;  võnns-
* LEXICON N_PIIUTYS-PL  piiutâs:pihttâs
* +Cmp/SgNom:%^Pen%^V2VV%^Pen%^XYY2VY R ;  piiutâs

* LEXICON N_KOONTYR  koontâr:konttâr
like N_ALGG, N_TAALKYS, N_AAUTYR
stemtype n-stem koontâr:koontâr
* Yaml: **N-koontar**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_AAUTYR  aautâr:ahttâr
like N_ALGG, N_TAALKYS, N_AAUTYR
stemtype n-stem aautâr:aautâr
* Yaml: **N-aautar**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_RIIPYS  riipâs:rijppâs
like N_ALGG, N_TAALKYS, N_AAUTYR
stemtype n-stem aautâr:aautâr
* Yaml: **N-aautar**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON N_KHIIUGXYN  ǩiiuǥân:ǩiuggân
*  LEXICON NMN_KHIIUGXYN  ǩiiuǥân:ǩiuggân
stemtype n-stem ǩiiuǥân:ǩiiuǥân

* Yaml: **N-kiiughan**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON N_KHIOTKYM  ǩiõtkâm:ǩiõtkkâm
*  LEXICON NMN_KHIOTKYM  ǩiõtkâm:ǩiõtkkâm

* Yaml: **N-kiotkam**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON N_FIINYS  fiinâs:fijnnâs
*  LEXICON NMN_FIINYS  fiinâs:fijnnâs
stemtype n-stem fiinâs:fiinâs

* Yaml: **A-fiinas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

CLASS 4 BISYLLABIC, HIGH VOWEL, DIPHTHONG, NO PALATALIZATION
*  LEXICON N_TUOVYS  tuõvâs:tuõvˈvâs
*  LEXICON NMN_TUOVYS  tuõvâs:tuõvˈvâs
* Yaml: **N-tuovas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* Yaml: **N-kuadhdhas**

*  LEXICON N_VUONJYL  vuõnjâl:vuõnnjâl
*  LEXICON NMN_VUONJYL  vuõnjâl:vuõnnjâl
* Yaml: **N-tuovas**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON N_VUOIVYS  vuõivâs:vuõivvâs
*  LEXICON NMN_VUOIVYS  vuõivâs:vuõivvâs

* Yaml: **N-vuoivas**
*  :%^Pen%^XYY2XY SG-NOM ;	        (1) Sg_Nom: vuõivâs
*  :%^VC SG-ABE/ACC/GEN-PL-NOM ;   (2) Pl_Nom: vuõivvâz
*  :%^RmVow%>a SG-ILL ;   (3) Sg_Ill: vuõivvsa
*  :%^RmVow%>e SG-LOC ;    (4) Sg_Loc: vuõivvsest
*  :%^RmVow SG-COM_IN/PL-OBL ;     (5) Sg_Com: vuõivvsin
*  :%^RmVow%>e ESS/PAR ; 	  (6) Ess: vuõivvsen
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON N_TUODDYR  tuõddâr:tuõdˈdâr
*  LEXICON NMN_TUODDYR  tuõddâr:tuõdˈdâr
N_GEN2X3-NOM2X1
* Yaml: **N-tuoddar**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON N_CHIOGXGXYR  čiõǥǥâr:čiõkˈkâr
*  LEXICON NMN_CHIOGXGXYR  čiõǥǥâr:čiõkˈkâr
N_GEN2X3-NOM2X1
* Yaml: **N-tuoddar**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON N_PUAEGXGXANJ  tuõddâr:tuõdˈdâr
*  LEXICON NMN_PUAEGXGXANJ  puäǥǥanj:puäkˈkanj
N_GEN2X3-NOM2X1
* Yaml: **N-tuoddar**
* :%^RmVow VOONYS-STEM-PX ;  puäkˈknj-

*  LEXICON N_VUAEDHANJ  vuäđanj:vuäđˈđanj
*  LEXICON NMN_VUAEDHANJ  vuäđanj:vuäđˈđanj
N_GEN2X3-NOM2X1
* Yaml: **N-tuoddar**
* :%^RmVow VOONYS-STEM-PX ;  puäkˈknj-

*  LEXICON N_CHOAOAGXGXAM  čååǥǥam:čååkkam
*  LEXICON NMN_CHOAOAGXGXAM  čååǥǥam:čååkkam
N_GEN2X3-NOM2X1
* Yaml: **N-tuoddar**
* :%^RmVow VOONYS-STEM-PX ;  čååkkm-

*  LEXICON N_RUODDYS  ruõddâs:ruõdˈdâs
*  LEXICON NMN_RUODDYS  ruõddâs:ruõdˈdâs
N_GEN2X3-NOM2X1
* Yaml: **N-tuoddar**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

*  LEXICON N_NAQZVAANASH-PL  naʹzvaanâš:naʹzvaanâš

* LEXICON N_COOGGYLM  cõõggâlm:cõõggâlm
stemtype l-stem cõõggâlm:cõõggâlm
* **NMN_COOGGYLM** = Koulukielioppi stemtype II 9 (29)
* Yaml: **cooggalm, aaresm, kaaddask** 
* :%^Pen%^VV2V%^Pen%^CC2CAllegro%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_SIIVALM  siivâlm:siivâlm
stemtype l-stem siivâlm:siivâlm
* **NMN_SIIVALM** = Koulukielioppi stemtype II 9 (29)
* Yaml: **N-siivalm** 
* :%^Pen%^VV2V%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_KAADDYSHKH  kaaddâšǩ:kaaddâšǩ
* **NMN_KAADDYSHKH** = Koulukielioppi stemtype II 9 (29)
* Yaml: **cooggalm, aaresm, kaaddask** 
* :%^Pen%^VV2V%^Pen%^CC2CAllegro%^RmVow%^PALNo VOONYS-STEM-PX ;  võnns- CHECKME

* **NMN_KAADDYSHKH** = Koulukielioppi stemtype II 9 (29)
* Yaml: **cooggalm, aaresm, kaaddask** 

* LEXICON N_TOOBDYLM  toobdâlm:toobdâlm
* Yaml: **cooggalm, aaresm, kaaddask** 
* :%^Pen%^VV2V%^RmVow VOONYS-STEM-PX ;  tobdlm- CHECKME

* LEXICON N_IILYSKH  iilâsǩ:iilâsǩ
* Yaml: **N-iilask** 
* :%^Pen%^VV2V%^RmVow%^PALNo VOONYS-STEM-PX ;  võnns- CHECKME

CLASS 4 BISYLLABIC, LOW VOWEL, MONOPHTHONG, NO PALATALIZATION
* LEXICON N_CEERKAV  ceerkav:cẹẹrkav
* LEXICON NMN_CEERKAV  ceerkav:cẹẹrkav
= stemtype n-stem ceerkav:ceerkav
* Yaml: **ceerkav**
* : SG-NOM ;	       			 (1) ceerkav
* : SG-ABE/ACC/GEN-PL-NOM ;				 (2) ceerkav
* :%^RmVow%>a SG-ILL ;  (3) ceerkva
* :%^RmVow%>e SG-LOC ;		  	    (4) ceerkvest
* :%^RmVow SG-COM_IN/PL-OBL ;			    (5) ceerkvin
* :%^RmVow%>e ESS/PAR ;  			    (6) ceerkven
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_SOAOABBAR  sååbbar:s%^1VOWåbbar
* LEXICON NMN_SOAOABBAR  sååbbar:s%^1VOWåbbar
N_GEN2X3-NOM2X1
* Yaml: **N-sååbbar**
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_KOAOADDAS  kååddas:kå%^1VOWddas
N_LBVVCC_as
* LEXICON NMN_KOAOADDAS  kååddas:kåddas
N_GEN2X3-NOM2X1
* Yaml: **N-kååddas**
* :%^RmVow VOONYS-STEM-PX ;  kådds-

* LEXICON N_KOALVAK  kåålvak:kåålvak
* LEXICON NMN_KOALVAK  kåålvak:kåålvak
stemtype n-stem kåålvak:kåålvak
Palatalization loss in Sg.Ill
* Yaml: **N-paattakj**
* :%^RmVow%>a SG-ILL ;  +Sg+Ill: kåålvka
* :%^RmVow%^PALK%>e SG-LOC ;  +Sg+Loc: kåålvǩest
* :%^RmVow%^PALK VOONYS-STEM-PX ;  såbbr-

* LEXICON N_AACCIKH  pååttaǩ:pååttak
* LEXICON NMN_AACCIKH  pååttaǩ:pååttak
stemtype n-stem pååttaǩ:pååttak
Palatalization loss in Sg.Ill
* Yaml: **N-paattakj**
* :%^RmVow%^PALNo VOONYS-STEM-PX ;  såbbr-

stemtype n-stem jânnam:jânnam
N_GEN2X3-NOM2X1
* Yaml: **N-jânnam**
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* : VOONYS-STEM-PX ;  såbbr-

* LEXICON N_CHIOPPYRJ  čiõppârj:čiõppâr
stemtype n-stem jânnam:jânnam
N_GEN2X3-NOM2X1
* Yaml: **N-jânnam**
* :%^RmVow%>%{ʼØ%}j VOONYS-STEM-PX ;  såbbr-

* LEXICON N_KOAOAVAS  kååvas:kå%^1VOWvvas
kååvas, joođâs
N_LBVVC_as
* LEXICON NMN_KOAOAVAS  kååvas:kåvvas
* Yaml: **N-kaavas**
* :%^VC SG-ABE/ACC/GEN-PL-NOM ;  kåvvaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_PAEAELKAS  päälkas:pä%^1VOWlkkas
* LEXICON NMN_PAEAELKAS  päälkas:pälkkas
* Yaml: **N-paalkas**
* :%^VC SG-ABE/ACC/GEN ;  pälkkaz
* :%^VC PL-NOM ;  pälkkaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_MUYLAS  muâlas:muâlˈlas
* LEXICON NMN_MUYLAS  muâlas:muâlˈlas
* Yaml: **N-muylas**
* :%^VC SG-ABE/ACC/GEN ;  muâlˈlaz
* :%^VC PL-NOM ;  muâlˈlaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_VEEVAR  veevar:vẹvvar
* LEXICON NMN_VEEVAR  veevar:vẹvvar
* Yaml: **N-veevar**
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_VEEIVAR  veeivar:vẹ%^1VOWivvar
* LEXICON NMN_VEEIVAR  veeivar:vẹ%^1VOWivvar
* Yaml: **N-veeivar**
* : SG-ABE/ACC/GEN ;  veivvar
* : PL-NOM ;  veivvar
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

gradation: no

## 2. WORDS WITH TWO-SYLLABLE NOMINATIVE SINGULARS (2009: 252)
## 2.3 Sg.Loc in -est. e-stems (Sg.Loc, Ess, Par).
## 2.3.2 Sg.Ill in -a
## 2.3.2.2 LACKS Gradation
## 2.3.2.2.1 Penultimate stem vowel loss: (Sg.Ill, Sg.Loc, Sg.Com; Ess, Par; Pl.Gen, Pl.Acc, Pl.Ill, Pl.Loc, Pl.Com, Pl.Abe)
## 2.3.2.2.1.1 The Sg.Com vowel i appears before final n  
* Yaml: **A-sloohman**

* LEXICON N_KOAOADDARV  kååddarv:kååddarv
stemtype l-stem kååddarv:kååddarv
* **NMN_KOAOADDARV** = Koulukielioppi stemtype II 9 (29)
* Yaml: **N-kaaddarv** 
* :%^Pen%^VV2V%^Pen%^CC2C%^RmVow VOONYS-STEM-PX ;  võnns-

CLASS 4 BISYLLABIC, LOW VOWEL, DIPHTHONG, NO PALATALIZATION
IN PENULTIMATE A:0

* LEXICON N_KHEYLGXAL  ǩeâlǥal:ǩeâlggal
* LEXICON NMN_KHEYLGXAL  ǩeâlǥal:ǩeâlggal
* Yaml: **kealgal**
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_KUAEIVAS  kuäivas:kuäivvas
N_LBVWXY_as
* LEXICON NMN_KUAEIVAS  kuäivas:kuäivvas
stemtype n-stem kuäivas:kuäivas
N_GEN2X3-NOM2X1
* Yaml: **N-kuaeivas**
* :%^VC SG-ABE/ACC/GEN-PL-NOM ;  kuäivvaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_KUAEIVAS-PL  kuäivas:kuäivvas
* :%^VC PL-NOM ;  kuäivvaz

* LEXICON N_JUYGXGXAS  juâǥǥas:juâkˈkas
## 2. WORDS WITH TWO-SYLLABLE NOMINATIVE SINGULARS (2009: 252)
## 2.3 Sg.Loc in -est. e-stems (Sg.Loc, Ess, Par).
## 2.3.2 Sg.Ill in -a
## 2.3.2.2 
## 2.3.2.2.1 Penultimate stem vowel loss: (Sg.Ill, Sg.Loc, Sg.Com; Ess, Par; Pl.Gen, Pl.Acc, Pl.Ill, Pl.Loc, Pl.Com, Pl.Abe)
## 2.3.2.2.1.1 The Sg.Com vowel i appears before final n  
* Yaml: **N-juaghghas**
* :%^VC  SG-ABE/ACC/GEN-PL-NOM ;  juâkˈkaz
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_HEAVASH  heävaš:heäpˈpaš
* Yaml: **N-heavash**
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

* LEXICON N_KUAELLAS  kuällas:kuälˈlas
* Yaml: **N-heavash**
* :%^RmVow VOONYS-STEM-PX ;  såbbr-

CLASS 4 BISYLLABIC, LOW VOWEL, MONOPHTHONG, PALATALIZATION
* LEXICON N_VEEQREST  veeʹrest:veeʹrest
* LEXICON NMN_VEEQREST  veeʹrest:veeʹrest
* **NMN_VEEQREST** = Koulukielioppi stemtype II 9 (29)
* Yaml: **N-veerest** 
* :%^Pen%^VV2V%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_AAQRESHM  ääʹrešm:ääʹrešm
* LEXICON NMN_AAQRESHM  ääʹrešm:ääʹrešm
stemtype l-stem ääʹrešm:ääʹrešm
* **NMN_AAQRESHM** = Koulukielioppi stemtype II 9 (29)
* Yaml: **N-aeaereshm** 
* :%^Pen%^VV2V%^RmVow%>a SG-ILL ;  äʹršma
* :%^Pen%^VV2V%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_SAAQVESKH  sääʹvesǩ:sääʹvesǩ
* Yaml: **N-saeaeveskj** 
* : SG-ABE/ACC/GEN ;  sääʹvesǩ
* :%^Pen%^VV2V%^RmVow%^PALNo%>a SG-ILL ;  säʹvska
* :%^Pen%^VV2V%^RmVow SG-COM_IN ;  CHECKME
* :%^Pen%^VV2V%^RmVow%>e ESS/PAR ;  CHECKME
* :%^Pen%^VV2V%^RmVow VOONYS-STEM-PX ;  võnns-
* +Use/NGminip+Use/SpellNoSugg+Use/NG:%^RmVow SG-COM_IN ;  CHECKME
* +Use/NGminip+Use/SpellNoSugg+Use/NG:%^RmVow%>e ESS/PAR ;  CHECKME
* +Use/NGminip+Use/SpellNoSugg+Use/NG:%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_KUEQDDELM  kueʹddelm:kueʹddelm
* LEXICON NMN_KUEQDDELM  kueʹddelm:kueʹddelm
* Yaml: **N-kueddelm** 
* :%^Pen%^CC2CAllegro%^RmVow%>a SG-ILL ;  äʹršma
* :%^Pen%^CC2CAllegro%^RmVow SG-ABE ;  CHECKME
* :%^Pen%^CC2CAllegro%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_CIYLKYLM  ciâlkâlm:ciâ%{ˈ1%}lkâlm
* LEXICON NMN_CIYLKYLM  ciâlkâlm:ciâ%{ˈ1%}lkâlm
* Yaml: **N-ciylkylm** 
* :%^Pen%^Allegro%^RmVow%>a SG-ILL ;  ciâˈlklma
* :%^Pen%^Allegro%^RmVow%>e SG-LOC ;  ciâˈlklmest
* :%^Pen%^Allegro%^RmVow SG-ABE ;  CHECKME
* :%^Pen%^Allegro%^RmVow PL-OBL ;  ciâˈlklmi
* :%^Pen%^Allegro%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_STROOIQTEL  strooiʹtel:stro%^1VOWiʹttel
* **NMN_STROOIQTEL** = Koulukielioppi stemtype II 9 (29)
* Yaml: **N-strooitel** 
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_CHEEUQRES  čeeuʹres:če%^1VOWurres
* LEXICON NMN_CHEEUQRES  čeeuʹres:če%^1VOWurres
stemtype l-stem čeeuʹres:čeeuʹres
* **NMN_CHEEUQRES** = Koulukielioppi stemtype II 9 (29)
* Yaml: **N-ceeures** 
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_POAOAUQTES  pååuʹtes:på%^1VOWhttes
* LEXICON NMN_POAOAUQTES  pååuʹtes:på%^1VOW%{ʹØ%}h%{ʹØ%}ttes
* Yaml: **N-ceeures** 
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_SEEUQTER  seeuʹter:seäh%{ʹØ%}tter
* LEXICON NMN_SEEUQTER  seeuʹter:seäh%{ʹØ%}tter
* Yaml: **N-seeuter** 
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_JEEQEL  jeeʹel:jeä%{ʹØ%}kˈkel
* LEXICON NMN_JEEQEL  jeeʹel:jeä%{ʹØ%}kˈkel
* Yaml: **N-jeeel** 
* :%^Pen%^PALE%^Pen%^PAL%^Pen%^KKK2ZERO SG-NOM ;  jeeʹel
* :%^Pen%^PALE%^Pen%^PAL%^Pen%^KKK2GG%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_NYYQER  nââʹer:nâ%^1VOW%{ʹØ%}kker
* LEXICON NMN_NYYQER  nââʹer:nâ%^1VOW%{ʹØ%}kker
* Yaml: **N-naaer** 
* :%^Pen%^PAL%^Pen%^KK2GG%^RmVow VOONYS-STEM-PX ;  võnns-

## s:z-stem type

* Yaml: **kerres**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

CLASS 4 BISYLLABIC, LOW VOWEL, DIPHTHONG, PALATALIZATION
IN PENULTIMATE E:0

* LEXICON N_CYYQ33EL  cââʹʒʒel:câ%^1VOW%{ʹØ%}ʒʒel
* LEXICON NMN_CYYQ33EL  cââʹʒʒel:câ%^1VOW%{ʹØ%}ʒʒel
* Yaml: **N-cyyq33el**
* :%^RmVow VOONYS-STEM-PX ;  câccl-

* LEXICON N_KAAQLLES  kääʹlles:kä%^1VOW%{ʹØ%}lles
* LEXICON NMN_KAAQLLES  kääʹlles:källes
* Yaml: **N-kaeaelles**
* :%^RmVow VOONYS-STEM-PX ;  källs-

* LEXICON N_OAQVES  ååʹves:å%^1VOW%{ʹØ%}vves
* LEXICON NMN_OAQVES  ååʹves:å%^1VOWvves
* Yaml: **N-aaves**
* :%^RmVow VOONYS-STEM-PX ;  åvvs-

* LEXICON N_KAAQRBES  kääʹrbes:kärbbes
* LEXICON NMN_KAAQRBES  kääʹrbes:kärbbes
* Yaml: **N-kaeaerbes**
* :%^RmVow VOONYS-STEM-PX ;  kärbbs-

* LEXICON N_PUAQRES  puäʹres:puärˈres
* LEXICON NMN_PUAQRES  puäʹres:puärˈres
* Yaml: **N-puaeres**
* :%^RmVow VOONYS-STEM-PX ;  puärˈrs-

* LEXICON N_PUAQRES-PL  puäʹres:puärˈres
* LEXICON NMN_PUAQRES-PL  puäʹres:puärˈres
* :%^RmVow VOONYS-STEM-PX ;  puärˈrs-

* LEXICON N_PEAEQLES  peäʹles:peälˈles
* LEXICON NMN_PEAEQLES  peäʹles:peälˈles
* Yaml: **N-puaeres**
* :%^RmVow VOONYS-STEM-PX ;  peälˈls-

* LEXICON N_JEAEQVES  jeäʹves:jeä%{ʹØ%}v%{ˈØ%}%{vØ%}%{eØ%}%{sz%}
* LEXICON NMN_JEAEQVES  jeäʹves:jeä%{ʹØ%}v%{ˈØ%}%{vØ%}%{eØ%}%{sz%}
* Yaml: **N-puaeres**
* :%^Pen%^PAL%^RmVow VOONYS-STEM-PX ;  jeävˈvs-

* LEXICON N_PUUQTTES  puuʹttes:pu%^1VOWtt
* LEXICON NMN_PUUQTTES  puuʹttes:pu%^1VOWtt
* Yaml: __similar_to:N-kaeaelles__
* :%^VOWLower%>s VOONYS-STEM-PX ;  potts-

## -stems
* LEXICON N_NJUAEQMMEL  = stemtype l-stem njuäʹmmel:njuäʹmˈmel
* LEXICON NMN_NJUAEQMMEL  = stemtype l-stem njuäʹmmel:njuäʹmˈmel
* Yaml: **njuammel, njuunnjel, aappal** 

* LEXICON N_CIEAQKHKHES  cieʹǩǩes:ceä%{ʹØ%}kˈkes
* **NMN_CIEAQKHKHES** = Koulukielioppi stemtype II 9 (29)
* Yaml: **N-ciekkes** 
* :%^Pen%^VOWLower%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_CHUEQDHES  čueʹđes:čuâ%{ʹØ%}ttes
* LEXICON NMN_CHUEQDHES  čueʹđes:čuâttes
* Yaml: **N-chuedhes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_KHEEQLES  ǩeeʹles:ǩeâlˈles
* LEXICON NMN_KHEEQLES  ǩeeʹles:ǩeâlˈles
* Yaml: **N-chuedhes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_VUAQPPPES  vueʹppes:vuäpˈpes
* LEXICON NMN_VUAQPPPES  vueʹppes:vuäpˈpes
* Yaml: **N-vuaeppes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_KHEEQSTES  ǩeeʹstes:ǩeâsttes
* LEXICON NMN_KHEEQSTES  ǩeeʹstes:ǩeâsttes
* Yaml: **N-keestes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_VIEQLPES  vieʹlpes:ǩeâlppes
* LEXICON NMN_VIEQLPES  vieʹlpes:ǩeâ%{ʹØ%}lppes
* Yaml: **N-veelpes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_PUEAQRDES  čueʹcǩes:čuäckkes
* LEXICON NMN_PUEAQRDES  čueʹcǩes:čuäckkes
* Yaml: **N-chuaeckes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_VUEAEQDDES  vuẹʹddes:vuädˈdes
* LEXICON NMN_VUEAEQDDES  vuẹʹddes:vuädˈdes
* Yaml: **N-vueddes**
* :%^RmVow VOONYS-STEM-PX ;  võnns-

* LEXICON N_SAQPPLI  säʹppli:säʹppl
* Yaml: **A-saeppli**

* LEXICON N_SAQPPLEEJAZH  säʹppleejaž:säʹppl
* Yaml: **A-saeppli**

* LEXICON N_MOOGXGX  mooǥǥ:mo%^1VOWkˈk
* :%^V2VV%^KK2GG SG-NOM ;		      mooǥǥ
* :%>anj SG-ABE/ACC/GEN-PL-NOM ;  mokkanj
* :nja SG-ILL ; 			      mokknja
* :nj VOONYS-STEM-PX ; 			      mokknj

* LEXICON N_CHUYGXGXAS  čuâǥǥas:čuâkˈk
* :%^KKK2GG%>as SG-NOM ;		      čuâǥǥas
* :%^VOWRaise%>u SG-ABE/ACC/GEN-PL-NOM ;  čuõkˈku
* :sa SG-ILL ; 			      čuâkˈksa
* :s VOONYS-STEM-PX ; 			      čuâkˈksallaš

* LEXICON N_SEQTT  seʹtt:sett
* Yaml: **N-sett**
* There are several stem types 

* LEXICON N_LOAQDD  låʹdd:lå%^1VOWdd
is for nouns with *-est* +Loc, 
N_E-ANoPal3-32
* Yaml: **N-ladd**

* :%^V2VV E-STEM_N_KUYLAZH ;  (9) lååddaž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;                           (10) lådd-
* :%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) låʹd»
* :%^PAL E-STEM-PX-STRENGTHEN-WITH-PAL ;                       (12) låʹdd
* +Use/NGminip+Use/NG:%^PAL E-STEM-PX-ALLEGRO ;   (2) låʹdd

* LEXICON N_LOAQDD-PL  lååʹdd:lådd

## e-a-stems

Nouns with -est Loc and -a Ill without ʹ
lemma and stem 3rd grade; vowel raising
* Yaml: **peass**

* LEXICON N_MIEAQRR  mieʹrr:meä%{ʹØ%}rr
Nouns with -est Loc and -a Ill without ʹ
* Yaml: **mierr**

* :%^CC2C E-STEM_N_KUYLAZH ;     (9) meäraž
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) meärr-
* :%^PALẸ%^PAL%^CC2CAllegro E-STEM-PX-ALLEGRO ;  (11) miẹˈʹr-
* :%^PALẸ%^PAL  E-STEM-PX-STRENGTHEN-WITH-PAL ;  (12) miẹʹrr Ess+Px..

* LEXICON N_MIEAQRR-PL  meäʹr:meä%{ʹØ%}rr

* LEXICON N_MIEQLKHKH  mieʹlǩǩ:meâ%{ʹØ%}lkk
* LEXICON NMN_MIEQLKHKH  mieʹlǩǩ:meâ%{ʹØ%}lkk
**LEXICON NMN_MIEQLKHKH ** Nouns with -est Loc and -a Ill without ʹ
* Yaml: **N-mielkk**
*  E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) meâlkk- CHECKME 2016-08-19
* :%^PALE%^PAL%^XYY2XY%^PALK E-STEM-PX-ALLEGRO ;  (11) mieʹlǩ-

* LEXICON N_PAARHOAQD  päärhåʹd:päärhå%^1VOWd
* LEXICON NMN_PAARHOAQD  päärhåʹd:päärhå%^1VOWd
**LEXICON NMN_PAARHOAQD ** Nouns with -est Loc and -a Ill without ʹ
* Yaml: **N-paeaehoad**

* :%{XC%}%^C2CC E-STEM-PX-RETAIN-WITHOUT-PAL ;    (10) säimm-
* :%^PAL%^XYY2XY E-STEM-PX-ALLEGRO ;  (11) säiʹm-

* LEXICON N_CHIISTI  čiisti:čiistti
* LEXICON NMN_CHIISTI  čiisti:čiistti
* Yaml: **N-chiisti**
* There are several stem types
* sirddi:sirddi
NumContLex=""
* :%^I2J VOONYS-STEM-PX ;  võnns-

* +Der+Der/N2A+A: DenominalAdjsCShort ;  2015-08-23 +Der+Der/teqm

čâustõk+N+Sg+Gen:čâustõõǥǥ
Sajos:Sajo%^1VOW%{ʹØ%}s
* +Der+Der/Dimin+N:%{XC%}%^V2VV%^K2GG N_KUUZZYZH-WITHOUT-PAL ;   kuuzz-
* +Der+Der/Dimin+N:%{XC%}%^V2VV%^PAL%^K2GG N_KUUZZYZH-WITH-PAL ;   kuuʹzz-

* LEXICON N_MILJONAAQR  = stemtype miljonääʹr:miljonäär
* LEXICON NMN_MILJONAAQR  = stemtype
* Yaml: **N-miljonaeaer**

stemtype n-stem reʹppiǩ:reʹppiǩ
Palatalization loss in Sg.Ill
* Yaml: **N-reppikj**

PENULTIMATE O:0
* LEXICON N_MOOTTOR  moottor:moottor
* LEXICON NMN_MOOTTOR  moottor:moottor
* Yaml: **N-moottor**

VOWEL-FINAL STEMS
* Yaml: **N-biologia**
*  SG-NOM ;   +Sg+Nom
*  SG-ABE/ACC/GEN ; 	+Sg+Gen
* :%^1VOW%^V2VVʹje SG-ILL ; 	+Sg+Ill
*  SG-LOC ;    	+Sg+Loc
*  SG-COM_IN ; 	+Sg+Com
*  ESS/PAR ;   	+Ess
*  PL-NOM ;    	+Pl+Nom
*  PL-OBL ;    	+Pl+Gen

* Yaml: **N-bukva**
*  SG-NOM ;   +Sg+Nom
*  SG-ABE/ACC/GEN ; 	+Sg+Gen
* :%^1VOW%^V2VVʹje SG-ILL ; 	+Sg+Ill: bukvaaʹje
* +Use/NGminip+Use/NG: SG-ILL ; 	+Sg+Ill: bukva
*  SG-LOC ;    	+Sg+Loc
*  SG-COM_IN ; 	+Sg+Com
*  ESS/PAR ;   	+Ess
*  PL-NOM ;    	+Pl+Nom
*  PL-OBL ;    	+Pl+Gen

* Yaml: **N-merja**
*  SG-NOM ;   +Sg+Nom
*  SG-ABE/ACC/GEN ; 	+Sg+Gen
* :%^1VOW%^V2VVʹje SG-ILL ; 	+Sg+Ill: merjaaʹje
* :%^RmVow%>že SG-ILL ; 	+Sg+Ill: merjže
* +Use/NGminip+Use/NG: SG-ILL ; 	+Sg+Ill: merja
*  SG-LOC ;    	+Sg+Loc
*  SG-COM_IN ; 	+Sg+Com
*  ESS/PAR ;   	+Ess
*  PL-NOM ;    	+Pl+Nom
*  PL-OBL ;    	+Pl+Gen

* Yaml: **N-truuba**
*  SG-NOM ;   +Sg+Nom
*  SG-ABE/ACC/GEN ; 	+Sg+Gen
* :%^1VOW%^V2VVʹje SG-ILL ; 		+Sg+Ill
*  SG-ILL ; 		+Sg+Ill
*  SG-LOC ;    	+Sg+Loc
*  SG-COM_IN ; 	+Sg+Com
*  ESS/PAR ;   	+Ess
*  PL-NOM ;    	+Pl+Nom
*  PL-OBL ;    	+Pl+Gen

* Yaml: **Prop-terhi**
*  SG-NOM ;   +Sg+Nom
*  SG-ABE/ACC/GEN ; 	+Sg+Gen
* :%^1VOW%^V2VVʹje SG-ILL ; 	+Sg+Ill: terhiiʹje
* :ʹžže SG-ILL ; 	+Sg+Ill: terhiʹžže
*  SG-LOC ;    	+Sg+Loc
*  SG-COM_IN ; 	+Sg+Com
*  ESS/PAR ;   	+Ess
*  PL-NOM ;    	+Pl+Nom
*  PL-OBL ;    	+Pl+Gen

inflection_type="?"
* Yaml: **Prop-jouste**
*  SG-NOM ;   +Sg+Nom
*  SG-ABE/ACC/GEN ; 	+Sg+Gen
* :%^1VOW%^V2VVʹje SG-ILL ; 	+Sg+Ill: jousteeʹje
* :ʹžže SG-ILL ; 	+Sg+Ill: jousteʹžže
*  SG-LOC ;    	+Sg+Loc
*  SG-COM_IN ; 	+Sg+Com
*  ESS/PAR ;   	+Ess
*  PL-NOM ;    	+Pl+Nom
*  PL-OBL ;    	+Pl+Gen

* LEXICON N_RADIO  radio:radio
* Yaml: **N-radio**
*  SG-NOM ;	     (TSA-1) +Sg+Nom:
*  SG-ABE/ACC/GEN ;    (=TSA-2)
* :%^1VOW%^V2VVʹje SG-ILL ;	     (TSA-3) +Sg+Ill:
* +Use/NGminip+Use/NG: SG-ILL ;    (TSA-3) +Sg+Ill:
*  SG-LOC ;	     ()
*  SG-COM_IN ;	     (=TSA-4)
*  ESS/PAR ; 	     ()
*  PL-NOM ;	     (TSA-2) +Pl+Nom:
*  PL-OBL ;	     (TSA-4) +Pl+Gen: 

* Yaml: **N-oulu**
*  SG-NOM ;	     (TSA-1) +Sg+Nom:
*  SG-ABE/ACC/GEN ;    (=TSA-2)
* :%^1VOW%^V2VVʹje SG-ILL ;	     (TSA-3) +Sg+Ill:
* +Use/NGminip+Use/NG: SG-ILL ;    (TSA-3) +Sg+Ill:
*  SG-LOC ;	     ()
*  SG-COM_IN ;	     (=TSA-4)
*  ESS/PAR ; 	     ()
*  PL-NOM ;	     (TSA-2) +Pl+Nom:
*  PL-OBL ;	     (TSA-4) +Pl+Gen: 

* LEXICON N_CHEE  čee:čẹẹ
* Yaml: **N-chee**
* : SG-NOM ;	     
* :i SG-NOM ;	     
*  SG-ABE/ACC/GEN ;    
* :ʹe SG-ILL ;	     
*  SG-LOC ;	     
*  SG-COM_IN ;	     
*  ESS/PAR ; 	     
*  PL-NOM ;	     (TSA-2) +Pl+Nom:
*  PL-OBL ;	     (TSA-4) +Pl+Gen: 

* Yaml: **N-hypotees**

* LEXICON N_ENERGII  energii:energi
* Yaml: **N-energii**
THIS NEEDS CHECKING
* +Use/NGminip+Use/NG:i SG-NOM ;            (TSA-1) +Sg+Nom: energii
* +Use/NGminip+Use/NG:i SG-ABE/ACC/GEN	    ;    (=TSA-2)
* +Use/NGminip+Use/NG:ia SG-ILL ;	         (TSA-3) +Sg+Ill: energiia
* +Use/NGminip+Use/NG:i SG-LOC ;	     ()
* +Use/NGminip+Use/NG:i SG-COM_N ;         (=TSA-4)
* +Use/NGminip+Use/NG:i ESS/PAR ;           ()
* +Use/NGminip+Use/NG:i PL-NOM ;            (TSA-2) +Pl+Nom: energii
* +Use/NGminip+Use/NG:i PL-OBL ;            (TSA-4) +Pl+Gen:

* LEXICON N_NALLSHEM  čââʹlmteʹm:čââʹlmtẹ%^1VOWm
292-295
* Yaml: **A-chaalmtem**

* LEXICON N_HOQZJEQN  čââʹlmteʹm:čââʹlmtẹ%^1VOWm
292-295
* Yaml: **A-chaalmtem**

## Stem types from the grammar

*These are still not fixed.*
* LEXICON N_TUEJJEEJA  tuejjeeja:tuejjẹẹja
* LEXICON NMN_TUEJJEEJA  tuejjeeja:tuejjẹẹja
tuejjeeja:tuejjẹẹja
* Yaml: **N-tuejjeeja**

* LEXICON N_PRSPRC-EEI  tuõđšteei:tueʹjjee
* LEXICON NMN_PRSPRC-EEI  tuõđšteei:tueʹjjee
tuõđšteei:tueʹjjee
* Yaml: **N-tuodhshteei**

* LEXICON N_PRSPRC-EEQJJ  tuõđšteei:tueʹjjee
* LEXICON NMN_PRSPRC-EEQJJ  tuõđšteei:tueʹjjee
tuõđšteeʹjj:tuõđštẹẹ
* Yaml: **N-tuodhshteeqjj**

Class 5 according to Feist 152
## k-stems

stemtype 
* Yaml: **N-chaustok**

stemtype 
* Yaml: **N-chaustok**

* +Der+Der/Dimin+N:%{XC%}%^K2GG N_KUUZZYZH-WITHOUT-PAL ;   kuuzz-
* +Der+Der/Dimin+N:%{XC%}%^PAL%^K2GG N_KUUZZYZH-WITH-PAL ;   kuuʹzz-

Class 6 according to Feist 153-154
PRESENT PARTICIPLES
* LEXICON N_PRSPRC-VQCC-I  hirmstõʹtti+N:hirmstõ%^1VOWʹtti
* LEXICON NMN_PRSPRC-VQCC-I  hirmstõʹtti+N:hirmstõ%^1VOWʹtti
* Yaml: **N-joovvi**
* There are several stem types
* cõggi:cõggi
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VCC-I  cõggi:cõggi
* LEXICON NMN_PRSPRC-VCC-I  cõggi:cõggi
* Yaml: **N-joovvi**
* There are several stem types
* cõggi:cõggi
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

participles in -I from verbs in -âd
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VVQCC-I  jooʹtti+N:jooʹtti
* LEXICON NMN_PRSPRC-VVQCC-I  jooʹtti+N:jooʹtti
* Yaml: **N-joovvi**
* There are several stem types
* jõõvvi:jõõvvi
NumContLex="1.2"
* : SG-NOM ;	       		 (1) jooʹtti
* : SG-ABE/ACC/GEN ;		 (2) jooʹtti
* :%^I2J%>a SG-ILL ;		 jõõvvja
* :%^I2J%>e SG-LOC ;		 jõõvvjest
* :%^I2J SG-COM_IN ;		 jõõvvjin
* :%^I2J%>e ESS/PAR ;  		 jõõvvjen
* :%^CC2C PL-NOM ;		 jooʹđi
* :%^CC2C%^I2J PL-OBL ;		 jõõvji
* +Use/NGminip+Use/NG:%^I2J PL-OBL ;	 jõõvvji
* +Use/NGminip+Use/NG: PL-NOM ;		 jõõvvi
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VVCC-I  jõõvvi:jõõvvi
* LEXICON NMN_PRSPRC-VVCC-I  jõõvvi:jõõvvi
* Yaml: **N-joovvi**
* There are several stem types
* jõõvvi:jõõvvi
NumContLex="1.2"
* : SG-NOM ;	       		 (1) jõõvvi
* : SG-ABE/ACC/GEN ;		 (2) jõõvvi
* :%^I2J%>a SG-ILL ;		 jõõvvja
* :%^I2J%>e SG-LOC ;		 jõõvvjest
* :%^I2J SG-COM_IN ;		 jõõvvjin
* :%^I2J%>e ESS/PAR ;  		 jõõvvjen
* :%^CC2C PL-NOM ;		 jõõvi
* :%^CC2C%^I2J PL-OBL ;		 jõõvji
* +Use/NGminip+Use/NG:%^I2J PL-OBL ;	 jõõvvji
* +Use/NGminip+Use/NG: PL-NOM ;		 jõõvvi
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VVQKK-I  kooʹcci+N:kooʹcci
inflection_type="?"
* LEXICON NMN_PRSPRC-VVQKK-I  lookki:lookki
* Yaml: **lookk**
* There are several stem types
* lookki:lookki
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VVKK-I  lookki:lookki
* LEXICON NMN_PRSPRC-VVKK-I  lookki:lookki
* Yaml: **lookk**
* There are several stem types
* lookki:lookki
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWQKK-I  jueʹǩǩi+N:jueʹǩǩi
inflection_type="?"
* LEXICON NMN_PRSPRC-VWQKK-I  jueʹǩǩi+N:jueʹǩǩi
* Yaml: **N-joovvi**
* There are several stem types
* sirddi:sirddi
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWKK-I  ǩiõssi:ǩiõssi
* LEXICON NMN_PRSPRC-VWKK-I  ǩiõssi:ǩiõssi
* Yaml: **N-joovvi**
* There are several stem types
* sirddi:sirddi
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWQCC-I  jiõŋŋhokkisiõʹrri+N:jiõŋŋhokkisiõʹrri
inflection_type="?"
* LEXICON NMN_PRSPRC-VWQCC-I  vuõlli:vuõlli
* Yaml: **N-vuolli**
* There are several stem types
* vuõlli:vuõlli
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWCC-I  vuõlli:vuõlli
* LEXICON NMN_PRSPRC-VWCC-I  vuõlli:vuõlli
* Yaml: **N-vuolli**
* There are several stem types
* vuõlli:vuõlli
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWQCCC-I  kuõʹddi:kuõʹdˈdi
* LEXICON NMN_PRSPRC-VWQCCC-I  kuõʹddi:kuõʹdˈdi
* Yaml: **N-vuolli**
* There are several stem types
* vuõlli:vuõlli
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWCCC-I  kuõʒʒi:kuõʒˈʒi
* LEXICON NMN_PRSPRC-VWCCC-I  kuõʒʒi:kuõʒˈʒi
* Yaml: **N-vuolli**
* There are several stem types
* vuõlli:vuõlli
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWXYY-I  suõskki:suõskki
* LEXICON NMN_PRSPRC-VWXYY-I  suõskki:suõskki
* Yaml: **suoskki**

* :%^I2J VOONYS-STEM-PX ;  võnns-

* : SG-NOM ;  ǩeeʹrzai
* : SG-ABE/ACC/GEN ;  ǩeeʹrzai
* :%^RmVow%^I2J%>a SG-ILL ;  ǩeeʹrzja
* :%^RmVow%^I2J%>e SG-LOC ;  ǩeeʹrzjest
* :%^RmVow%^I2J SG-COM_IN ; 
* :%^I2J%>e ESS/PAR ; 
* :%^RmVow%^I2J PL-OBL ; 
* +Use/NGminip+Use/NG: PL-NOM ; 
* : PL-NOM ; 
* +Use/NGminip+Use/NG:%^RmVow%^I2J PL-OBL ; 
* :%^I2J VOONYS-STEM-PX ;  võnns-

participles in -AI from verbs in -ad
* : SG-NOM ; 
* : SG-ABE/ACC/GEN ; 
* :%^RmVow%^I2J%>a SG-ILL ; 
* :%^RmVow%^I2J%>e SG-LOC ; 
* :%^RmVow%^I2J SG-COM_IN ; 
* :%^I2J%>e ESS/PAR ; 
* :%^RmVow%^I2J PL-OBL ; 
* +Use/NGminip+Use/NG: PL-NOM ; 
* : PL-NOM ; 
* +Use/NGminip+Use/NG:%^RmVow%^I2J PL-OBL ; 
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VCC-AI  kåččai:kåččai
* LEXICON NMN_PRSPRC-VCC-AI  kåččai:kåččai
* Yaml: **kachchai**
* There are several stem types
NumContLex="
* : SG-NOM ; 
* : SG-ABE/ACC/GEN ; 
* :%^RmVow%^I2J%>a SG-ILL ; 
* :%^RmVow%^I2J%>e SG-LOC ; 
* :%^RmVow%^V2VV SG-COM_IN ; 
* :%^I2J%>e ESS/PAR ; 
* :%^Pen%^V2VV PL-NOM ; 
* :%^RmVow%^I2J PL-OBL ; 
* +Use/NGminip+Use/NG: PL-NOM ; 
* +Use/NGminip+Use/NG:%^Pen%^V2VV%^RmVow%^I2J PL-OBL ; 
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VVCC-AI  peellai:peellai
* LEXICON NMN_PRSPRC-VVCC-AI  peellai:peellai
* Yaml: **paassai**
* There are several stem types
NumContLex="
* : SG-NOM ;  Sg.Nom.Indef: peellai 
* : SG-ABE/ACC/GEN ; 
* :%^RmVow%^I2J%>a SG-ILL ;  Sg.Ill.Indef: peellja
* :%^RmVow%^I2J%>e SG-LOC ; 
* :%^RmVow%^V2VV SG-COM_IN ; 
* :%^I2J%>e ESS/PAR ; 
* :%^Pen%^CC2C PL-NOM ;  Pl.Nom.Indef: peelai
* :%^RmVow%^I2J PL-OBL ; 
* +Use/NGminip+Use/NG: PL-NOM ; 
* +Use/NGminip+Use/NG:%^Pen%^CC2C%^RmVow%^I2J PL-OBL ; 
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VVKK-AI  pååssai:pååssai
* LEXICON NMN_PRSPRC-VVKK-AI  pååssai:pååssai
* Yaml: **paassai**
* There are several stem types
NumContLex="
* : SG-NOM ;  Sg.Nom.Indef: pååssai 
* : SG-ABE/ACC/GEN ; 
* :%^RmVow%^I2J%>a SG-ILL ;  Sg.Ill.Indef: pååssja
* :%^RmVow%^I2J%>e SG-LOC ; 
* :%^RmVow%^I2J SG-COM_IN ; 
* :%^I2J%>e ESS/PAR ; 
* :%^Pen%^KK2GG PL-NOM ;  Pl.Nom.Indef: pååzzai
* :%^RmVow%^I2J PL-OBL ; 
* +Use/NGminip+Use/NG: PL-NOM ; 
* +Use/NGminip+Use/NG:%^Pen%^KK2GG%^RmVow%^I2J PL-OBL ; 
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VXYY-AI  särnnai:särnnai
* LEXICON NMN_PRSPRC-VXYY-AI  särnnai:särnnai
* Yaml: **sarnnai**
* There are several stem types
* särnnai:särnnai
NumContLex="
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWCC-AI  vuejjai:vuejjai
* LEXICON NMN_PRSPRC-VWCC-AI  vuejjai:vuejjai
* Yaml: **N-vuejjai**
* There are several stem types
* vuejjai:vuejjai
NumContLex="
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWKK-AI  reäkkai:reäkkai
* LEXICON NMN_PRSPRC-VWKK-AI  reäkkai:reäkkai
* Yaml: **N-reakkai**
* There are several stem types
* reäkkai:reäkkai
NumContLex="
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWCCC-AI  vuäggai:vuägˈgai
* LEXICON NMN_PRSPRC-VWCCC-AI  vuäggai:vuägˈgai
* Yaml: **N-reakkai**
* There are several stem types
* vuägˈgai:vuägˈgai
NumContLex="
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWXYY-AI  meälttai:meälttai
* LEXICON NMN_PRSPRC-VWXYY-AI  meälttai:meälttai
* Yaml: **sarnnai**
* There are several stem types
* meälttai:meälttai
NumContLex="
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_ZHEEVAI  žeevai:žẹẹvai
* LEXICON NMN_ZHEEVAI  žeevai:žẹẹvai
* Yaml: **zheevai**
NumContLex="
* :%^RmVow%^I2J VOONYS-STEM-PX ;  võnns-

participles in -I from verbs in ʹ-ed
* : SG-NOM ; 
* : SG-ABE/ACC/GEN ; 
* :%^RmVow%^I2J%>a SG-ILL ; 
* :%^RmVow%^I2J%>e SG-LOC ; 
* :%^RmVow%^I2J SG-COM_IN ; 
* :%^I2J%>e ESS/PAR ; 
* :%^RmVow%^I2J PL-OBL ; 
* +Use/NGminip+Use/NG: PL-NOM ; 
* :%^RmVow%^I2J VOONYS-STEM-PX ;  võnns-

* : PL-NOM ; 
* +Use/NGminip+Use/NG:%^RmVow%^I2J PL-OBL ; 

* LEXICON N_PRSPRC-VQXYY-I  äjjnõʹstti:äjjnõʹstti
inflection_type="?"
* LEXICON NMN_PRSPRC-VQXYY-I  äjjnõʹstti:äjjnõʹstti
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VXYY-I  äjjnõʹstti:äjjnõʹstti
* LEXICON NMN_PRSPRC-VXYY-I  äjjnõʹstti:äjjnõʹstti
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VQHYY-I  aʹhtti:a%^1VOW%{ʹØ%}h%{ʹØ%}tti
inflection_type="?"
* LEXICON NMN_PRSPRC-VQHYY-I  aʹhtti:a%^1VOW%{ʹØ%}h%{ʹØ%}tti
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"
* :%^Pen%^PAL%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VHYY-I  lahtti:la%^1VOWhtti
* LEXICON NMN_PRSPRC-VHYY-I  lahtti:la%^1VOWhtti
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWQHYY-I  vuõʹhssi+N:vuõʹhssi
inflection_type="?"
* LEXICON NMN_PRSPRC-VWQHYY-I  vuõʹhssi+N:vuõʹhssi
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC-VWHYY-I  čiõhčči:čiõhčči
* LEXICON NMN_PRSPRC-VWHYY-I  čiõhčči:čiõhčči
* Yaml: **lookk**
* There are several stem types
* äjjnõʹstti:äjjnõʹstti
NumContLex="1.2"
* sirddi:sirddi
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_SUQVDDI  suʹvddi:suʹvddi
* LEXICON NMN_SUQVDDI  suʹvddi:suʹvddi
* Yaml: **N-suvddi**
* There are several stem types
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_LIEQDHDHDHI  lieʹđđi:lieʹđˈđi
* LEXICON NMN_LIEQDHDHDHI  lieʹđđi:lieʹđˈđi
* Yaml: **N-liedhdhdhi**
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC_VWQXYY-I  vueʹstti:vueʹstti
inflection_type="?"
* LEXICON NMN_PRSPRC_VWQXYY-I  vueʹstti:vueʹstti
* Yaml: **lookk**
* There are several stem types
* vueʹstti:vueʹstti
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_PRSPRC_VWXYY-I  vueʹstti:vueʹstti
* LEXICON NMN_PRSPRC_VWXYY-I  vueʹstti:vueʹstti
* Yaml: **lookk**
* There are several stem types
* vueʹstti:vueʹstti
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_VUOIQNNI  vuõiʹnni:vuõiʹnni
* LEXICON NMN_VUOIQNNI  vuõiʹnni:vuõiʹnni
* Yaml: **lookk**
* There are several stem types
* vuõiʹnni:vuõiʹnni
NumContLex="1.2"
* :%^I2J VOONYS-STEM-PX ;  võnns-

Class 7 according to Feist 154-155
## i-stems
* LEXICON N_HOQPPI  hõʹppi:hõʹppi
* LEXICON NMN_HOQPPI  hõʹppi:hõʹppi
* Yaml: **hoppi**
* There are several stem types
* hõʹppi:hõʹppi

* :%^I2J VOONYS-STEM-PX ;  võnns-

* LEXICON N_VUYPPPAI  vuâppai:vuâpˈp
* LEXICON NMN_VUYPPPAI  vuâppai:vuâpˈp
* Yaml: **vuappai**
* There are several stem types
* :%>%{ʼØ%}j PL-OBL ;  vuâpˈpji 2019-09-20
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_SHUOABYRJ  šuåbârj:šuåbâr
* LEXICON NMN_SHUOABYRJ  šuåbârj:šuåbâr
* Yaml: **shuabarj**

* :%>ǥ VOONYS-STEM-PX ;  võnns-

* LEXICON N_OAOAUM  ååum:å%^1VOWumm
* LEXICON NMN_OAOAUM  ååum:å%^1VOWumm
* Yaml: **N-aaum**
* There are several stem types
*     :%^V2VV%^XYY2XY SG-NOM ;  
*	:a SG-ABE/ACC/GEN-PL-NOM ;  
*	  :%>%{ʼØ%}j%>a SG-ILL ;  
*  :a SG-LOC ;  
*  :a SG-COM_IN ;  
* :%>%{ʼØ%}je ESS/PAR ;  
*    :a PL-OBL ;  
* :%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

* LEXICON N_CHUYR  čuâr:čuõrˈr
* LEXICON NMN_CHUYR  čuâr:čuõrˈr
* Yaml: **N-chuar**
* There are several stem types
čuâr
čuâras
čuâraš
čuõrˈru
čuâran
čuõrˈrui
* :%^VOWLower%>s VOONYS-STEM-PX ;  võnns-
* +Use/NGminip+Use/NG:%^VOWLower%>š VOONYS-STEM-PX ;  võnns-
* +Use/NGminip+Use/NG:%^VOWLower%>ǥ VOONYS-STEM-PX ;  võnns-

* LEXICON N_KAAMMI  kaammi:kaamm
* LEXICON NMN_KAAMMI  kaammi:kaamm
* Yaml: **piannai**
* There are several stem types
kaammi
käʹmme
kaammjen
käʹmmi

* LEXICON N_PIYNNAI  piânnai:piânˈn
* LEXICON NMN_PIYNNAI  piânnai:piânˈn
* Yaml: **piannai**
* There are several stem types
piânnai
pieʹnˈne
piânnʼjen
pieʹnˈn-
pieʹnˈnʼji Correction by Satu 2015-08-12
piânˈnʼji

* :ǥ VOONYS-STEM-PX ;  võnns-
* +Use/NGminip+Use/NG:%>%{ʼØ%}j VOONYS-STEM-PX ;  võnns-

Class 8 according to Feist 155-157

Class 9 according to Feist 158
* LEXICON N_MEERSAZH  säʹmmlaž:säʹmml
* Yaml: **A-saemmlazh**
säʹmmlaž:säʹmmlaž
* : VOONYS-STEM-PX ;  võnns-

Diminutive derivations

* LEXICON N_MUORYZH  muõrâž:muõr
(2009: 306)
* muõrâž:muõr
* Yaml: **N-muorazh**

* LEXICON N_MUORYZH-WITHOUT-PAL  paapp
* :âž SG-NOM ;		 paappâž
* :že SG-ILL ;	 paappže
* :že ESS/PAR ;	 	 paappžen

* +Use/NGminip+Use/NG: SG-LOC-PX ;  muõrstes
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:âž%>am K;   Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:%>ž%>amâ K;  Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:âž%>amâ K;  Leudd 2018-09-20

* LEXICON N_MUORYZH-WITHOUT-PAL-PL  paapp
* :že ESS/PAR ;	 	 paappžen

* LEXICON N_MUORYZH-WITH-PAL    paaʹpp-
* :%>e SG-ABE/ACC/GEN ;	 paaʹppe
* :%>e SG-LOC ;	 paaʹppest
* :%>e SG-COM_IN ;	     paaʹppein
* +Use/NGminip+Use/NG: SG-COM_IN ;	     paaʹppin

* :%>e PL-NOM ;	 paaʹppe
* :%>e PL-OBL ;	     paaʹppei Merja differentiates from regular pl
* +Use/NGminip+Use/NG: PL-OBL ;	     paaʹppi

* : SG-LOC-PX ;  muõʹrstes
* :%>e PL-NOM ;    paaʹppe
* :%>e PL-OBL ;        paaʹppei Merja differentiates from regular pl
* +Use/NGminip+Use/NG: PL-OBL ;        paaʹppi

* LEXICON N_KUUZZYZH-WITHOUT-PAL  paapp-
* :âž SG-NOM ;		 paappâž
* :%>že SG-ILL ;	 paappže
* :%>že ESS/PAR ;	 	 paappžen

* +Use/NGminip+Use/NGminip+Use/NG: SG-LOC-PX ;  muõrstes

* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:âž%>am K;   Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:%>ž%>amâ K;  Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:âž%>amâ K;  Leudd 2018-09-20

* LEXICON N_KUUZZYZH-WITH-PAL    kuuʹzz-
* :%>e SG-ABE/ACC/GEN ;	 paaʹzze
* :%>e SG-LOC ;	 paaʹzzest
* :%>e SG-COM_IN ;	     paaʹzzein
* +Use/NGminip+Use/NG: SG-COM_IN ;	     paaʹzzin
* :%>e PL-NOM ;	 paaʹzze
* :%>e PL-OBL ;	     paaʹzzei Merja differentiates from regular pl
* +Use/NGminip+Use/NG: PL-OBL ;	     paaʹzzi
* +Use/NGminip+Use/SpellNoSugg: SG-LOC-PX ;  kuuʹzzstes

* : SG-LOC-PX_ALLEGRO ;  kuʹzstes

* LEXICON N_SAEQMMLOOZHZHYZH  säʹmmlõõžžâž:säʹmmlõõžž
* Yaml: **N-muorazh**

* : HatY-STEM-PX-WEAKEN_LARGO ;  säʹmmlõõžž- Sg_Loc_PxSg1
* :%^PAL HatY-STEM-PX-WEAKEN_LARGO ;  säʹmmlõõʹžž- Sg_Loc_PxSg1
* :%^VV2V%^PAL%^CC2CAllegro SG-LOC-PX_ALLEGRO ;  säʹmmlõʹž-
* :%^VV2V%^CC2CAllegro SG-LOC-PX_ALLEGRO ;  säʹmmlõž-

* LEXICON N_PRE-PEESSAZH  puälaž:puäl

* LEXICON N_PEESSAZH  piissuž:pẹẹss
This is only a partial paradigm
* LEXICON NMN_PEESSAZH  piissuž:pẹẹss
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:ažam K;  Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:%>žamâ K;  Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:ažamâ K;  Leudd 2018-09-20

* LEXICON N_PIISSUZH  piissuž:piiss
(2009: 310)
* piissuž:piiss
* Yaml: **N-piissuzh**

* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:ožam K;  Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:%>žamâ K;  Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:ožamâ K;  Leudd 2018-09-20

* LEXICON N_KUYLAZH  kuâlaž:kuâl
* kuâlaž:kuâl
* Yaml: **N-kualazh**
kuâla, kuâlže
* : LOAOADDAZH-STEM-PX-ALLEGRO ;  This should go to each stem type ERROR

* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:ažam K;  Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:%>žamâ K;  Leudd 2018-09-20
* +Err/Orth+Err/GenreLeudd+Sg+Nom+PxSg1:ažamâ K;  Leudd 2018-09-20

* LEXICON N_KUYLAZH-PL  kuâla:kuâl

* LEXICON N_UUQREZH  uuʹrež:uuʹr
* Yaml: **N-uurezh**

* LEXICON N_JEAQKHKHKHAAZH  jeäʹǩǩääž:jeäʹǩˈǩ
* Yaml: **N-jeakkeaeazh**

* LEXICON N_VONNSAZH  võnnsaž:võnns
* Yaml: **N-kualazh**

* LEXICON NMN_JIQLSSI  Jiʹlssi:Jiʹlssi
Is this correct 2015-09-11

* LEXICON NMN_OAQLGA  Ååʹlga:Ååʹlg
Is this correct 2015-09-11

* LEXICON NMN_SINIDA  Sinida:Sinid
Is this correct 2015-09-11
Is this correct 2015-09-11

* LEXICON N_KUUQMPEZH  
* kuuʹmpež:kuuʹmp
* Yaml: **N-kuumpezh**

* LEXICON N_OOUMAZH  ooumaž:o%^1VOWumm
is for nouns with *-ust* +Sg+Loc; *e* +Sg+Ill;
X2 no gradation; no lowering no raising
N_GEN1-ILLEX1-LOCE-NOM1X1
* Yaml: **N-ooumazh**
* There are several stem types 
* ooumaž:ooum

Class 10 according to Feist 160-161
## neǩ-stem
* LEXICON N_KAADHNEKH  kaađneǩ:kaađnẹ%^1VOWǩ
* LEXICON NMN_KAADHNEKH  kaađneǩ:kaađnẹ%^1VOWǩ
* Yaml: **N-kaadhnekj, N-chaustok**
Ǩiõllkaʹlddi. 2017-04-04-05
kaađneǩ+N+Sg+Nom **lincense vessel/suitsutusastia**
* *kaađnẹ%^1VOWǩ*
* *kaađne0ǩ*
* :%{XC%}%^PAL%^C2CC%>e ESS/PAR ;  kaađneʹǩǩe- 
* :%{XC%}%^V2VV%^PAL%^C2CC SG-ABE/ACC/GEN ;  kaađneeʹǩǩ
kaađneǩ+N+Sg+Gen 
* *kaađnẹ%^1VOWǩ%{XC%}%^V2VV%^PAL%^C2CC*
* *kaađneeʹǩǩ000*
* :%{XC%}%^PALNo%^C2CC%>a SG-ILL ;  kaađnẹkka
* *kaađnẹ%^1VOW0ǩ%{XC%}%^V2VV%^VOWRaise%^PAL%^C2CC%>in*
* *kaađniiʹǩǩ0000%>in*
* +Use/NGminip+Use/NG:%{XC%}%^V2VV%^PAL%^C2CC SG-COM_IN ;  kaađneeʹǩǩin
* :%{XC%}%^V2VV%^PAL%^C2CC PL-NOM ;  kaađneeʹǩǩ

* Yaml: **N-kaadhnekj, N-chaustok**

* LEXICON N_KARIES  karies:kariẹ%^1VOW%{ʹØ%}s
* LEXICON NMN_KARIES  karies:kariẹ%^1VOW%{ʹØ%}s
* similar to **N-kaadhnekj, N-chaustok**
Ǩiõllkaʹlddi. 2017-04-04-05
karies+N+Sg+Nom **caries/hammasmätä**
* *kariẹ%^1VOW%{ʹØ%}s*
* *karie00s*
* :%{XC%}%^PAL%^C2CC%>e ESS/PAR ;  kaađneʹǩǩe- 
* :%{XC%}%^V2VV%^PAL%^K2GG SG-ABE/ACC/GEN ;  kaađneeʹǩǩ
* :%{XC%}%^PALNo%^C2CC%>a SG-ILL ;  kaađnẹkka
* :%{XC%}%^V2VV%^PAL%^K2GG PL-NOM ;  karieeʹzz

Sort of like 10
* LEXICON NMN_VUYSPPOAQD  vuâsppåʹd:vuâsppå%^1VOWd
* Yaml: **N-kaadhnekj, N-chaustok**
Ǩiõllkaʹlddi. 2017-04-04-05
vuâsppåʹd+N+Sg+Nom **Lord/Herra**
* *vuâsppå%^1VOW0d%^PAL*
* *vuâsppå0ʹd0*
* :%^V2VV%^PAL%>e ESS/PAR ;  Vuâsppååʹde- 
* +Err/Orth:%{XC%}%^PAL%^C2CC%>e ESS/PAR ;  kaađneʹǩǩe- 
* :%^V2VV%^PAL SG-ABE/ACC/GEN ;  Vuâsppååʹd
* +Err/Orth:%{XC%}%^V2VV%^PAL%^C2CC SG-ABE/ACC/GEN ;  Vuâsppååʹdd
vuâsppåʹd+N+Sg+Gen 
* *vuâsppå%^1VOW%{ʹØ%}d%^V2VV%^PAL*
* *vuâsppååʹd00*
* :%^V2VV%>a SG-ILL ;  Vuâsppååda
* +Err/Orth:%{XC%}%^PALNo%^C2CC%>a SG-ILL ;  kaađnekka
* *vuâsppå%^1VOW0d%{XC%}%^V2VV%^VOWRaise%^PAL%^C2CC%>in*
* *vuâsppooʹdd0000%>in*
* :%^V2VV%^PAL PL-NOM ;  vuâsppååʹd
* :%^V2VV%^VOWRaise%^PAL PL-OBL ;  vuâsppooʹd

Class 11 according to Feist 162
* LEXICON N_VISKKYD  viskkâd:viskk

* LEXICON N_AQKHKHED  âʹǩǩed:âʹǩǩ

Class 12 Feist 163

### Noun phrase heads
### Pl

### Number and case tags

Used with words like juurd: jurddǥatta

## POSSESSIVE DECLENSION
### HatY-STEM-PX
* +Err/GenreLeudd:â SG-NOM ;  Leudd 2018-09-20

* +Err/GenreLeudd:â SG-ABE/ACC/GEN-PL-NOM ;  Leudd 2018-09-20
* +Err/GenreLeudd:â SG-COM_N ;  Leudd 2018-09-20

* +Err/GenreLeudd:â SG-ABE/ACC/GEN-PL-NOM ;  Leudd 2018-09-20
* +Err/GenreLeudd:â SG-COM_N ;  Leudd 2018-09-20

### A-STEM-PX

* +Err/GenreLeudd:a SG-NOM ;  Leudd 2018-09-20

* +Err/GenreLeudd:a SG-ABE/ACC/GEN-PL-NOM ;  Leudd 2018-09-20
* +Err/GenreLeudd:a SG-COM_N ;  Leudd 2018-09-20

* : N2A_REAEB3H3HAI ;      N»A

### E-STEM-PX

* +Err/GenreLeudd:e SG-NOM ;  Leudd 2018-09-20

* +Err/GenreLeudd:e SG-ABE/ACC/GEN-PL-NOM ;  Leudd 2018-09-20
* +Err/GenreLeudd:e SG-COM_N ;  Leudd 2018-09-20

### LOAOADDAZH-STEM-PX

* LEXICON LOAOADDAZH-STEM-PX-STRENGTHEN-WITH-PAL  needs checking

### VOONYS-STEM-PX
* LEXICON VOONYS-STEM-PX  võnns-
* LEXICON VOONYS-STEM-PX-NO-DER  võnns-

* LEXICON VOONYS-STEM-PX-PL  võnns-
* VOONYS-STEM-PX-STRENGTHEN-WITH-PAL ;  essive

* LEXICON VOONYS-STEM-PX-STRENGTHEN-WITH-PAL  needs checking

* LEXICON N-ALLEGRO_ATTESTED-NOUN-STEM  This is for Allegro forms

## Adjectives -- to be moved

### Vowel-final stem for PX

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/nouns.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/nouns.lexc)</small>

---

# src-fst-morphology-affixes-numerals.lexc.md 



# Inari Saami number <-> text

* **LEXICON ARABICCASES**  adds +Arab

* **LEXICON ARABICCASE**  adds +Arab

* **LEXICON ARABICCASE0**  adds +Arab

* **LEXICON DIGITCASES**  to distinguish between 0 and oblique

* **LEXICON DIGITCASE0**

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/numerals.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/numerals.lexc)</small>

---

# src-fst-morphology-affixes-pronouns.lexc.md 


# Skolt Saami Pronoun Morphology 

The lexicon *PRON_*, which is actually not needed, as pronouns get +Pron tag earlier.

* +Nom:ij		K ;  mij, tij, sij
* +Gen:ij	      K ;  mij, tij, sij
* +Gen+Use/NGminip+Use/NG+Use/SpellNoSugg:iʹjji    K ;  miʹjji, tiʹjji, siʹjji
* +Acc:iʹjjid	      K ;  miʹjjid, tiʹjjid, siʹjjid
* +Ill:iʹjjid	      K ;  miʹjjid, tiʹjjid, siʹjjid
* +Loc:eeʹst	      K ;  meeʹst, teeʹst, seeʹst
* +Com:ijvuiʹm     K ;  mijvuiʹm, tijvuiʹm, sijvuiʹm
* +Abe:ijtää	      K ;  mijtää, tijtää, sijtää

# Pronouns

Pointing to all the pronominal subgroups

* LEXICON Pronoun 
*  Demonstrative ; 
* jiõčč+Pron+Refl:   Reflexive ;     
*  Interrogative ; 
*  Relative ;	 kååʹtt, mii

## Personal pronouns

Splitting according to person

## Demonstrative pronouns

* LEXICON Demonstrative 
* tõt+Pron+Dem:t  	TOTDEM ;  The Epsilon has been removed 2015-05-13

* LEXICON SHORTDEM 

* LEXICON LONGDEM 

* LEXICON TOTDEM  

* LEXICON TIET-AA 

* LEXICON -AA 

## INDEFINITE PRONOUNS

## REFLEXIVE PRONOUNS

jiõčč: 

* LEXICON Reflexive 

Completion needed 2015-09-19

## Interrogative pronouns
**LEXICON PRON-INTERR_** is referred to from the xml file, hence does not assign **+Pron** tag.
* +Interr: # ;

* LEXICON Interrogative  is referred to from `pronouns.lexc`, hence assigns **+Pron** tag.
* mii+Pron+Interr:m	MK ;  The Epsilon  inserted 2015-02-11
* ǩii+Pron+Interr:ǩ	MK ;  The Epsilon  inserted 2015-02-11

* LEXICON MK 

* LEXICON MK-long 

* LEXICON MK-short 

* LEXICON MK-PL-short 

* LEXICON MK-low 

* LEXICON INDEF-MK 

* LEXICON INDEF-MK-long 

* LEXICON INDEF-MK-low-short 

* LEXICON INDEF-MK-low 

* LEXICON DISTR-MK 

* LEXICON DISTR-MK-long 

* LEXICON DISTR-MK-low-short 

* LEXICON DISTR-MK-low 

* LEXICON Relative 

* LEXICON Indefinite 

* LEXICON Distributive 

### SPATIAL PRONOUNS

### MISC

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/pronouns.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/pronouns.lexc)</small>

---

# src-fst-morphology-affixes-propernouns.lexc.md 


# SKOLT SAAMI PROPERNOUN MORPHOLOGY 

THE LEXICON *`OUTSIDE_LEXICONS`* ASSIGNS THE TAG +Attr

* LEXICON PROP_TOOBDYLM_mal  toobdâlm:toobdâlm

like KÕÕNJÂL 
## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant and Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-kidd, N-soll, N-toll, N-vorr**
strong_geminate, short_vowel, no_palatalization, high_stem_vowel 
:%>â ESS ;    		  = * LEXICON PROP_TOOBDYLM_mal  tollân
strong_geminate, short_vowel, palatalization, high_stem_vowel
single_consonant, long_vowel, no_palatalization, high_stem_vowel
:%^V2VV%^CC2C SG-ABE/ACC/GEN-PL-NOM ;	= * LEXICON PROP_TOOBDYLM_mal  tool
:%^V2VV%^CC2C SG-COM_IN ;               = * LEXICON PROP_TOOBDYLM_mal  toolin
:%^V2VV%^CC2C PL-OBL ;	                = * LEXICON PROP_TOOBDYLM_mal  tooli, toolid, toolid, toolin, toolivuiʹm, toolitaa

## 1. WORDS WITH SINGLE-SYLLABLE NOMINATIVE SINGULARS (2009: 167)
## 1.1 Sg.Loc in -âst (no vowel shift, all raised)
â-stems (Sg.Loc, Ess, Par).
## 1.1.1 Sg.Ill vowel	-e
## 1.1.1.1 Has Palatalization
## 1.1.1.1[1] (Palatalization pattern)
Palatalized: Sg.Ill
Not Palatalized: ELSE
Sg.Ill in palatalization and -e
## 1.1.1.1[1].1 Lacks Specifically Pedagogical Gradation
## 1.1.1.1[1].1.1 Has Orthographic Gradation
## 1.1.1.1[1].1.1[] (Monophthong + Consonant and Consonant Geminate alternation)
Extra strong grade: Sg.Nom, Ess, Par
Extra strong grade: Sg.Ill
Weak grade: Pl.Nom, Sg.Loc, Sg.Com
## FORMS
* Yaml: **N-kuss**

R ;		= * LEXICON PROP_TOOBDYLM_mal  kuss
:%>â ESS ;     		 = * LEXICON PROP_TOOBDYLM_mal  kussân

* LEXICON PROP_VUYSPPOAQD  vuâsppåʹd:vuâsppå%^1VOWd

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/propernouns.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/propernouns.lexc)</small>

---

# src-fst-morphology-affixes-smi-propernouns.lexc.md 



+Pl+Nom:%>jit  K ;
:     ACCRA-DC ;
:%>ji   ACCRA-OBL_PLC-ORG ;
:%>ji   ACCRA-IICASE ;

ACCRA-IICASE ;

These sublexica are irrelevant for SIJTE, but added
for the sake of the lexicon MARJA ! Muhto gč. dat kommentára... Imaštallan dan gal veha...
Here, we allow for Illative Sijtei

These sublexica are irrelevant for SIJTE, but added
for the sake of the lexicon MARJA ! Muhto gč. dat kommentára... Imaštallan dan gal veha...

For Finnish surnames. Itkonen.

For Finnish names with ending -nen. Kaustinen.

Itkosa as the oblique stem.
with ordinary genitive Itkonena

Different lexicon for female persons and place names.

Different lexicon for personal surnames. Blind

As aleuhtat, but with a marginal leakage
to sg forms in some cases. (substandard?)

* LEXICON RHyph  conversion to sms compounding.lexc -type

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/smi-propernouns.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/smi-propernouns.lexc)</small>

---

# src-fst-morphology-affixes-symbols.lexc.md 


# Symbol affixes

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/symbols.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/symbols.lexc)</small>

---

# src-fst-morphology-affixes-verbs.lexc.md 



# Skolt Saami verb morphology

First a lexicon V_ for still unclassified entries.

## Irregular verbs

Then irregular verbs ij and the copula.

* LEXICON V-NEG_IJ   ij:
The lexicon *V-NEG_IJ*

* +Neg+Ind+Sg1:jiõˈm	   K ; 
* +Use/NGminip+Use/NG+Neg+Ind+Sg1:jim	   K ; 
* +Neg+Ind+Sg2:jiõˈk	   K ; 

* LEXICON IV_LEEQD  leeʹd:l
* LEXICON V0_LEEQD  leeʹd:l
The lexicon *V0_LEEQD* for the copula

## REGULAR VERBS
### CLASS 1 HIGH VOWEL, NO PALATALIZATION

* LEXICON V_POOLLYD  põõllâd:põõll
* LEXICON IV_POOLLYD  põõllâd:põõll
* LEXICON TV_POOLLYD  põõllâd:põõll
* LEXICON V0_POOLLYD  põõllâd:põõll

* poorrâd # examples:*
* *poorrâd:* `poorrâd+V+Inf`
* *pooram:* `poorrâd+V+Ind+Prs+Sg1`
* *poorak:* `poorrâd+V+Ind+Prs+Sg2`
* *påårr:* `poorrâd+V+Ind+Prs+Sg3`
* *poorrâp:* `poorrâd+V+Ind+Prs+Pl1`
* *poorrveʹted:* `poorrâd+V+Ind+Prs+Pl2`
* *påʹrre:* `poorrâd+V+Ind+Prs+Pl3`
* *poorât:* `poorrâd+V+Ind+Prs+Sg4`
* *poʹrrem:* `poorrâd+V+Ind+Prt+Sg1`
* *poʹrriǩ:* `poorrâd+V+Ind+Prt+Sg2`
* *poori:* `poorrâd+V+Ind+Prt+Sg3`
* *poorim:* `poorrâd+V+Ind+Prt+Pl1`
* *poorid:* `poorrâd+V+Ind+Prt+Pl2`
* *poʹrre:* `poorrâd+V+Ind+Prt+Pl3`
* *poʹrreš:* `poorrâd+V+Ind+Prt+Sg4`
* *pooržem:* `poorrâd+V+Pot+Sg1`
* *pooržiǩ:* `poorrâd+V+Pot+Sg2`
* *poorâž:* `poorrâd+V+Pot+Sg3`
* *pooržep:* `poorrâd+V+Pot+Pl1`
* *pooržid:* `poorrâd+V+Pot+Pl2`
* *poorže:* `poorrâd+V+Pot+Pl3`
* *pooržet:* `poorrâd+V+Pot+Sg4`
* *poorže:* `poorrâd+V+Pot+ConNeg`
* *poorčem:* `poorrâd+V+Cond+Sg1`
* *poorčiǩ:* `poorrâd+V+Cond+Sg2`
* *poorči:* `poorrâd+V+Cond+Sg3`
* *poorčim:* `poorrâd+V+Cond+Pl1`
* *poorčid:* `poorrâd+V+Cond+Pl2`
* *poorče:* `poorrâd+V+Cond+Pl3`
* *poorčeš:* `poorrâd+V+Cond+Sg4`
* *poorče:* `poorrâd+V+Cond+ConNeg`
* *poor:* `poorrâd+V+Imprt+Sg2`
* *pååras:* `poorrâd+V+Imprt+Sg3`
* *poorrâp:* `poorrâd+V+Imprt+Pl1`
* *poorrâd:* `poorrâd+V+Imprt+Pl2`
* *pårraz:* `poorrâd+V+Imprt+Pl3`
* *porru:* `poorrâd+V+Imprt+ConNegII`
* *poorrmen:* `poorrâd+V+Actio+Ess`
* *poorrâm:* `poorrâd+V+Actio`
* *poorri:* `poorrâd+V+Act+PrsPrc`
* *poorrâm:* `poorrâd+V+Act+PrfPrc`
* *porrum:* `poorrâd+V+Pass+PrfPrc`
* *poorkani:* `poorrâd+V+VAbess`
* *pooreen:* `poorrâd+V+Ger+Ess`
* *pooreeʹl:* `poorrâd+V+Ger+Instr`
* *porškueʹtted:* `poorrâd+V+Der+Der/InchL+V+Inf`

* LEXICON V_LAUKKOOLLYD  laukkõõllâd:laukkõõll
* LEXICON IV_LAUKKOOLLYD  laukkõõllâd:laukkõõll
* LEXICON TV_LAUKKOOLLYD  laukkõõllâd:laukkõõll
* LEXICON V0_LAUKKOOLLYD  laukkõõllâd:laukkõõll

* : VSUF-INF_YD ; 1 laukkõõllâd
* +Ind+Prs+Sg3:%^VOWLower K ;  laukkââll
* +Ind+Prs+Pl3:%^VV2V%^VOWLower%^PAL%>e K ; 3 laukkâʹlle
* :%^VV2V%^PAL VSUF-IND-PRT-PL3_YD ; 4 laukkõʹlle
* :%^CC2C VSUF-I-POTKOND_YD ; 5 laukkõõl-
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ; 5 ERR laukkõõll-
* +Pot+Sg3:%^CC2C%>âž   K ; 6 laukkõõl-
* +Imprt+Sg3:%^CC2C%>as K ; 7 laukkõõlas
* :%^VV2V VSUF-IMPRT-CONNEGII_YD ; 8 laukkõll-
* +Imprt+ConNegII:%^VV2V%>u K ;  laukkõllu
* +Imprt+Pl3:%^VV2V%^VOWLower%>az K ;  laukkâllaz

* LEXICON V_VIIKKYD  viikkâd:viikk
* LEXICON IV_VIIKKYD  viikkâd:viikk
* LEXICON TV_VIIKKYD  viikkâd:viikk
* LEXICON V0_VIIKKYD  viikkâd:viikk
* : VSUF-INF_YD ;  (1)  Inf: viikkâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh
* *põõss%>âd*
* *põõss%>âd*

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2)  Ind.Prs.Sg3: veekk
+V+Ind+Prs+Sg3
* *põõss%^VOWLower*
* *pââss0*

* +Ind+Prs+Pl3:%^VV2V%^VOWLower%^PAL%>e K ;  (3)  Ind.Prs.Pl3: veʹǩǩe
+V+Ind+Prs+Pl3
* *põõ0ss%^VV2V%^VOWLower%^PAL%>e*
* *pâ0ʹss000%>e*

* :%^VV2V%^PAL VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: viʹǩǩe
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4
* *põõ0ss%^VV2V%^PAL%>e*
* *põ0ʼss00%>e*

* :%^KK2GG VSUF-I-POTKOND_YD ;  (5-6)  Pot.Sg3: viiǥǥâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6) ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus
* *põõss%^KK2GG%>âž*
* *põõzz0%>âž*

* +Imprt+Sg3:%^VOWLower%^KK2GG%>as K ;  (7)  Imprt.Sg3: veeǥǥas
Imprt+Sg3
* *põõss%^VOWLower%^KK2GG%>as*
* *pââzz00%>as*

* :%^VV2V VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.ConNegII: vikku
Imprt+ConNegII, Pass+PrfPrc
* *põõss%^VV2V%>u*
* *põ0ss0%>u*

* +Imprt+Pl3:%^VV2V%^VOWLower%>az K ;  (9) Ind.Imprt.Pl3: vekkaz
Imprt+Pl3
* *põõss%^VV2V%^VOWLower%>az*
* *pâ0ss00%>az*

* *põõss%^VV2V%^KK2GAllegro»%{ʼØ%}škuätt*
* *põ0z000»0škuätt*

* viikkâd # examples:*
* *viikkâd:* `viikkâd+V+Inf`
* *viiǥǥam:* `viikkâd+V+Ind+Prs+Sg1`
* *viiǥǥak:* `viikkâd+V+Ind+Prs+Sg2`
* *vẹẹkk:* `viikkâd+V+Ind+Prs+Sg3`
* *viikkâp:* `viikkâd+V+Ind+Prs+Pl1`
* *viikkveʹted:* `viikkâd+V+Ind+Prs+Pl2`
* *veʹǩǩe* `:` (Eng. viikkâd+V+Ind+Prs+Pl3)
* *viiǥǥât:* `viikkâd+V+Ind+Prs+Sg4`
* *viʹǩǩem* `:` (Eng. viikkâd+V+Ind+Prt+Sg1)
* *viʹǩǩiǩ* `:` (Eng. viikkâd+V+Ind+Prt+Sg2)
* *viiǥǥi:* `viikkâd+V+Ind+Prt+Sg3`
* *viiǥǥim:* `viikkâd+V+Ind+Prt+Pl1`
* *viiǥǥid:* `viikkâd+V+Ind+Prt+Pl2`
* *viʹǩǩe:* `viikkâd+V+Ind+Prt+Pl3`
* *viʹǩǩeš:* `viikkâd+V+Ind+Prt+Sg4`
* *viiǥǥžem:* `viikkâd+V+Pot+Sg1`
* *viiǥǥžiǩ:* `viikkâd+V+Pot+Sg2`
* *viiǥǥâž:* `viikkâd+V+Pot+Sg3`
* *viiǥǥžep:* `viikkâd+V+Pot+Pl1`
* *viiǥǥžid* `:` (Eng. viikkâd+V+Pot+Pl2)
* *viiǥǥže:* `viikkâd+V+Pot+Pl3`
* *viiǥǥžet:* `viikkâd+V+Pot+Sg4`
* *viiǥǥčem:* `viikkâd+V+Cond+Sg1`
* *viiǥǥčiǩ:* `viikkâd+V+Cond+Sg2`
* *viiǥǥči:* `viikkâd+V+Cond+Sg3`
* *viiǥǥčim:* `viikkâd+V+Cond+Pl1`
* *viiǥǥčid:* `viikkâd+V+Cond+Pl2`
* *viiǥǥče:* `viikkâd+V+Cond+Pl3`
* *viiǥǥčeš:* `viikkâd+V+Cond+Sg4`
* *viiǥǥ:* `viikkâd+V+Imprt+Sg2`
* *vẹẹǥǥas:* `viikkâd+V+Imprt+Sg3`
* *viikkâp:* `viikkâd+V+Imprt+Pl1`
* *viikkâd:* `viikkâd+V+Imprt+Pl2`
* *vẹkkaz:* `viikkâd+V+Imprt+Pl3`
* *viiǥǥ:* `viikkâd+V+Imprt+ConNeg`
* *vikku:* `viikkâd+V+Imprt+ConNegII`
* *viikkmen:* `viikkâd+V+Actio+Ess`
* *viikkâm:* `viikkâd+V+Actio`
* *viikki:* `viikkâd+V+Act+PrsPrc`
* *viikkâm:* `viikkâd+V+Act+PrfPrc`
* *vikkum:* `viikkâd+V+Pass+PrfPrc`
* *viiǥǥkâni:* `viikkâd+V+VAbess`
* *viiǥǥeen:* `viikkâd+V+Ger+Ess`
* *viiǥǥeeʹl:* `viikkâd+V+Ger+Instr`
* *viǥškueʹtted:* `viikkâd+V+Der+Der/InchL+V+Inf`

* LEXICON V_PIYKKLOOCHCHYD  piâkklõõččâd:piâkklõõčč
* LEXICON IV_PIYKKLOOCHCHYD  piâkklõõččâd:piâkklõõčč
* LEXICON V0_PIYKKLOOCHCHYD  piâkklõõččâd:piâkklõõčč
* : VSUF-INF_YD ;  (1)  Inf: piâkklõõččâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2)  Ind.Prs.Sg3: piâkklââčč
+V+Ind+Prs+Sg3

* +Ind+Prs+Pl3:%^VV2V%^VOWLower%^PAL%>e K ;  (3)  Ind.Prs.Pl3: piâkklâʹčče
+V+Ind+Prs+Pl3

* :%^VV2V%^PAL VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: piâkklõʹčče
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* : VSUF-I-POTKOND_YD ;  (5-6)  Pot.Sg3: piâkklõõččâž
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^VOWLower%>as K ;  (7)  Imprt.Sg3: piâkklââččas
Imprt+Sg3

* :%^VV2V VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.ConNegII: piâkklõčču
Imprt+ConNegII, Pass+PrfPrc

* +Imprt+Pl3:%^VV2V%^VOWLower%>az K ;  (9) Ind.Imprt.Pl3: piâkklâččaz
Imprt+Pl3

* LEXICON V_ROVVYD  rõvvâd:rõ%^1VOW%{ʹØ%}vv
* LEXICON IV_ROVVYD  rõvvâd:rõ%^1VOW%{ʹØ%}vv
* LEXICON V0_ROVVYD  rõvvâd:rõ%^1VOW%{ʹØ%}vv

* LEXICON V_RIYDDDYD  riâddâd:riâdˈd
* LEXICON V0_RIYDDDYD  riâddâd:riâdˈd

* LEXICON V_RIOKKKYD  riõkkâd:riõkˈk
* LEXICON V0_RIOKKKYD  riõkkâd:riõkˈk

* LEXICON V_PIOGGGYD  piõggâd:piõgˈg
* LEXICON V0_PIOGGGYD  piõggâd:piõgˈg
* : VSUF-INF_YD ;  (1) Inf: piõgˈgâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2) Ind.Prs.Sg3: peâgˈg
+V+Ind+Prs+Sg3

* +Ind+Prs+Pl3:%^VOWLower%^PALÄ%^PAL%>e K ;  (3) Ind.Prs.Pl3: peäʹǧˈǧe
+V+Ind+Prs+Pl3

* :%^PAL VSUF-IND-PRT-PL3_YD ;  (4) Ind.Prt.Pl3: piõʹǧˈǧe
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^CCC2CC VSUF-I-POTKOND_YD ;  (5-6) Ind.Imprt.Sg2: piõgg
Ind.Pot.Sg3: piõggâž
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^VOWLower%^CCC2CC%>as K ;  (7) Ind.Imprt.Sg3: peâggas
Imprt+Sg3

* : VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.13.ConNeg: piõgˈgu
Imprt+ConNegII, Pass+PrfPrc

* :%^VOWLower K ;  (9) Imprt.Pl3: peâgˈgaz
+Imprt+Pl3

(10) Allegro for incoative: piõg»

* LEXICON V_KHIOCHCHCHYD  ǩiõččâd:ǩiõčˈč
* LEXICON V0_KHIOCHCHCHYD  ǩiõččâd:ǩiõčˈč
* : VSUF-INF_YD ;  (1) Inf: ǩiõčˈčâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower%^PALÄ VSUF-IND-PRS-SG3_YD ;  (2) Ind.Prs.Sg3: ǩeäčˈč
+V+Ind+Prs+Sg3

* +Ind+Prs+Pl3:%^VOWLower%^PALÄ%^PAL%>e K ;  (3) Ind.Prs.Pl3: ǩeäʹčˈče
+V+Ind+Prs+Pl3

* :%^PAL VSUF-IND-PRT-PL3_YD ;  (4) Ind.Prt.Pl3: ǩiõʹčˈče
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^CCC2CC VSUF-I-POTKOND_YD ;  (5-6) Ind.Imprt.Sg2: ǩiõčč
Ind.Pot.Sg3: ǩiõččâž
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^VOWLower%^PALÄ%^CCC2CC%>as K ;  (7) Ind.Imprt.Sg3: ǩeäččas
Imprt+Sg3

* : VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.13.ConNeg: ǩiõčˈču
Imprt+ConNegII, Pass+PrfPrc

* :%^VOWLower K ;  (9) Imprt.Pl3: ǩeäčˈčaz
+Imprt+Pl3

(10) Allegro for incoative: ǩiõč»

* LEXICON V_PIYSSYD  piâssâd:piâss
* LEXICON TV_PIYSSYD  piâssâd:piâss
* LEXICON V0_PIYSSYD  piâssâd:piâss

* LEXICON V_CHIOKKYD  čiõkkâd:čiõkk
* LEXICON IV_CHIOKKYD  čiõkkâd:čiõkk
* LEXICON V0_CHIOKKYD  čiõkkâd:čiõkk

* LEXICON V_HUOLLYD  huõllâd:huõll
* LEXICON IV_HUOLLYD  huõllâd:huõll
* LEXICON TV_HUOLLYD  huõllâd:huõll
* LEXICON V0_HUOLLYD  huõllâd:huõll
* : VSUF-INF_YD ;  (1)  Inf: huõllâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2)  Ind.Prs.Sg3: huâll
+Ind+Prs+Sg3, +Imprt+Pl3

* +Ind+Prs+Pl3:%^VOWLower%^PALE%^PAL%^CC2CCC%>e K ;  (3)  Ind.Prs.Pl3: hueʹlˈle
+Ind+Prs+Pl3

* :%^PAL%^CC2CCC VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: huõʹlˈle
+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^CC2C VSUF-I-POTKOND_YD ;  (5-6)  Pot.Sg3: huõlâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6)  Pot.Sg3: ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^VOWLower%^CC2C%>as K ;  (7)  Imprt.Sg3: huõlas
Imprt+Sg3

* :%^CC2CCC VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.ConNegII: huõlˈlu
Imprt+ConNegII, Pass+PrfPrc

* :%^VOWLower%^CC2CCC%>az K ;  (9) Ind.Imprt.Pl3: huâlˈlaz
Imprt+Pl3

* :%^CC2CAllegro FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) Allegro for incoative: huõl»

* LEXICON V_SIORRYD  siõrrâd:siõ%{ʹØ%}rr
* LEXICON IV_SIORRYD  siõrrâd:siõ%{ʹØ%}rr
* LEXICON TV_SIORRYD  siõrrâd:siõ%{ʹØ%}rr
* LEXICON V0_SIORRYD  siõrrâd:siõ%{ʹØ%}rr
* : VSUF-INF_YD ;  (1)  Inf: siõrrâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2)  Ind.Prs.Sg3: seârr
+Ind+Prs+Sg3, +Imprt+Pl3

* +Ind+Prs+Pl3:%^VOWLower%^PALÄ%^PAL%^CC2CCC%>e K ;  (3)  Ind.Prs.Pl3: seäʹrˈre
siõrrâd+V+Ind+Prs+Pl3

* :%^PAL%^CC2CCC VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: siõʹrˈre
+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^CC2C VSUF-I-POTKOND_YD ;  (5-6)  Pot.Sg3: siõrâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6) ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^VOWLower%^CC2C%>as K ;  (7)  Imprt.Sg3: siõras
Imprt+Sg3

* :%^CC2CCC VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.ConNegII: siõrˈru
Imprt+ConNegII, Pass+PrfPrc

* :%^VOWLower%^CC2CCC%>az K ;  (9) Ind.Imprt.Pl3: seârˈraz
Imprt+Pl3

* :%^CC2CAllegro FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) Allegro for incoative: siõr»

* LEXICON V_SUOAPPYD  suåppâd:suå%{ʹØ%}pp
* LEXICON V0_SUOAPPYD  suåppâd:suå%{ʹØ%}pp
* : VSUF-INF_YD ;  (1)  Inf: suåppâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2)  Ind.Prs.Sg3: suäpp
+Ind+Prs+Sg3, +Imprt+Pl3

* +Ind+Prs+Pl3:%^VOWLower%^PAL%^CC2CCC%>e K ;  (3)  Ind.Prs.Pl3: suäʹpˈpe
+Ind+Prs+Pl3

* :%^PALE%^PAL%^CC2CCC VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: sueʹpˈpe
+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^CC2C VSUF-I-POTKOND_YD ;  (5-6)  Pot.Sg3: suåvâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6) ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^VOWLower%^CC2C%>as K ;  (7)  Imprt.Sg3: suävas
Imprt+Sg3

* :%^CC2CCC VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.ConNegII: suåpˈpu
Imprt+ConNegII, Pass+PrfPrc

* :%^CC2CCC%>az K ;  (9) Ind.Imprt.Pl3: suäpˈpaz
Imprt+Pl3

* :%^CC2CAllegro FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) Allegro for incoative: suåv»

* LEXICON V_AIBBYD  aibbâd:aibb
* LEXICON IV_AIBBYD  aibbâd:aibb
* LEXICON TV_AIBBYD  aibbâd:aibb
* LEXICON V0_AIBBYD  aibbâd:aibb
(1)  Inf: aibbâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2,9)  Ind.Prs.Sg3: äibb
+Ind+Prs+Sg3, +Imprt+Pl3

* +Ind+Prs+Pl3:%^VOWLower%^PAL%>e K ;  (3)  Ind.Prs.Pl3: äiʹbbe
+Ind+Prs+Pl3

* :%^PAL VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: aiʹbbe
+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^V2VV%^XYY2XY VSUF-I-POTKOND_YD ;  (5-6)  Pot.Sg3: aaibâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6) ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^V2VV%^VOWLower%^XYY2XY%>as K ;  (7)  Imprt.Sg3: ääibas
Imprt+Sg3

* : VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.13.ConNeg: aibbu
Imprt+ConNegII, Pass+PrfPrc

* :%^XYY2XY FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) Allegro for incoative: aib»

* LEXICON V_TOBDDYD  tobddâd:to%^1VOW%{ʹØ%}bdd
* LEXICON IV_TOBDDYD  tobddâd:to%^1VOW%{ʹØ%}bdd
* LEXICON TV_TOBDDYD  tobddâd:to%^1VOW%{ʹØ%}bdd
* LEXICON V0_TOBDDYD  tobddâd:to%^1VOW%{ʹØ%}bdd
* : VSUF-INF_YD ;  (1)  Inf: tobddâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2,9)  Ind.Prs.Sg3: tåbdd
+Ind+Prs+Sg3, +Imprt+Pl3

* +Ind+Prs+Pl3:%^VOWLower%^PAL%>e K ;  (3)  Ind.Prs.Pl3: tåʹbdde
+Ind+Prs+Pl3

* :%^PAL VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: toʹbdde
+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^V2VV%^XYY2XY VSUF-I-POTKOND_YD ;  (5-6)  Pot.Sg3: toobdâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6) ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^V2VV%^VOWLower%^XYY2XY%>as K ;  (7)  Imprt.Sg3: tååbdas
* +Err/Orth:%^V2VV%^VOWLower%^XYY2XY CONDITIONAL ;  
Imprt+Sg3

* : VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.13.ConNeg: tobddu
Imprt+ConNegII, Pass+PrfPrc

* :%^XYY2XY FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) Allegro for incoative: tobd»

* LEXICON V_OHTTYD  õhttâd:õhtt
* LEXICON IV_OHTTYD  õhttâd:õhtt
* LEXICON V0_OHTTYD  õhttâd:õ%^1VOW%{ʹØ%}h%{ʹØ%}tt
* : VSUF-INF_YD ;  (1)  Inf: õhttâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2,9)  Ind.Prs.Sg3: âhtt
+Ind+Prs+Sg3, +Imprt+Pl3

* +Ind+Prs+Pl3:%^VOWLower%^PAL%>e K ;  (3)  Ind.Prs.Pl3: âʹhtte
+Ind+Prs+Pl3

* :%^PAL VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: õʹhtte
+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^V2VV%^XYY2VY VSUF-I-POTKOND_YD ;  (5-6)  Pot.Sg3: õõutâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6) ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^V2VV%^VOWLower%^XYY2VY%>as K ;  (7)  Imprt.Sg3: ââutas
Imprt+Sg3

* : VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.13.ConNeg: õhttu
Imprt+ConNegII, Pass+PrfPrc

* :%^XYY2VY FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) Allegro for incoative: õut»

* LEXICON V_KUOSKKYD  kuõskkâd:kuõskk
* LEXICON IV_KUOSKKYD  kuõskkâd:kuõskk
* LEXICON V0_KUOSKKYD  kuõskkâd:kuõskk
* : VSUF-INF_YD ;  (1)  Inf: kuõskkâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2)  Ind.Prs.Sg3: kuâskk
+Ind+Prs+Sg3, +Imprt+Pl3

* +Ind+Prs+Pl3:%^VOWLower%^PALE%^PAL%>e K ;  (3)  Ind.Prs.Pl3: kueʹsǩǩe (allophonic)
+Ind+Prs+Pl3

* :%^PAL VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: kuõʹsǩǩe
+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^XYY2XY VSUF-I-POTKOND_YD ;  (5-6)  Ind.Pot.Sg3: kuõskâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6) ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^VOWLower%^XYY2XY%>as K ;  (7)  Ind.Imprt.Sg3: kuâskas
Imprt+Sg3

* : VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.13.ConNeg: kuõskku
Imprt+ConNegII, Pass+PrfPrc

* :%^VOWLower%>az K ;  (9)  Ind.Imprt.Pl3: kuâskkaz
Imprt+Pl3

* :%^XYY2XY FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) Allegro for incoative: kuõsk»

* LEXICON V_CHIOHTTYD  čiõhttâd:čiõ%{ʹØ%}h%{ʹØ%}tt
* LEXICON IV_CHIOHTTYD  čiõhttâd:čiõ%{ʹØ%}h%{ʹØ%}tt
* LEXICON V0_CHIOHTTYD  čiõhttâd:čiõ%{ʹØ%}h%{ʹØ%}tt
* : VSUF-INF_YD ;  (1)  Inf: čiõhttâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2)  Ind.Prs.Sg3: čeâhtt
+Ind+Prs+Sg3, +Imprt+Pl3

* +Ind+Prs+Pl3:%^VOWLower%^PAL%>e K ;  (3)  Ind.Prs.Pl3: kueʹsǩǩe (allophonic)
+Ind+Prs+Pl3

* :%^PAL VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: kuõʹsǩǩe
+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^XYY2VY VSUF-I-POTKOND_YD ;  (5-6)  Ind.Pot.Sg3: čuõutâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6) ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^VOWLower%^XYY2VY%>as K ;  (7)  Ind.Imprt.Sg3: čeâutas
Imprt+Sg3

* : VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.13.ConNeg: čiõhttu
Imprt+ConNegII, Pass+PrfPrc

* :%^VOWLower%>az K ;  (9)  Ind.Imprt.Pl3: čeâhttaz
Imprt+Pl3

* :%^XYY2VY FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) Allegro for incoative: čiõut»

* LEXICON V_SKHIYNHKKYD  sǩiâŋkkâd:sǩiâŋkk
* LEXICON V0_SKHIYNHKKYD  sǩiâŋkkâd:sǩiâŋkk

* : VSUF-INF_YD ;  (1)  Inf: sǩiâŋkkâd
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc
NomAct in MOsh

* :%^VOWLower VSUF-IND-PRS-SG3_YD ;  (2)  Ind.Prs.Sg3: sǩeäŋkk
+Ind+Prs+Sg3, +Imprt+Pl3

* +Ind+Prs+Pl3:%^VOWLower%^PAL%>e K ;  (3)  Ind.Prs.Pl3: sǩeäʹŋǩǩe
+Ind+Prs+Pl3

* :%^PALE%^PAL VSUF-IND-PRT-PL3_YD ;  (4)  Ind.Prt.Pl3: sǩieʹŋǩǩe
+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^XYY2XY VSUF-I-POTKOND_YD ;  (5-6)  Ind.Pot.Sg3: sǩiâŋkâž
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_YD ;  (5-6) ERR
+Ind+Prs+Sg1, +Ind+Prs+Sg2, +Ind+Prs+Sg4
Imprt+Sg2, Imprt+ConNeg, Ind+Prs+ConNeg, VAbess, GerTemp, GerInstr
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, Cond, +Der+Der/Caus

* +Imprt+Sg3:%^VOWLower%^XYY2XY%>as K ;  (7)  Ind.Imprt.Sg3: sǩeäŋkas
Imprt+Sg3

* : VSUF-IMPRT-CONNEGII_YD ;  (8)  Imprt.13.ConNeg: sǩiâŋkku
Imprt+ConNegII, Pass+PrfPrc

* :%^VOWLower%>az K ;  (9)  Ind.Imprt.Pl3: sǩeäŋkkaz
Imprt+Pl3

* :%^XYY2XY FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) Allegro for incoative: sǩiâŋk»

* LEXICON V_VUOIDDYD  čuõiggâd:čuõigg
* LEXICON V0_VUOIDDYD  čuõiggâd:čuõigg

* LEXICON V_LAADDYD  laaddâd:laadd
* LEXICON IV_LAADDYD  laaddâd:laadd
* LEXICON V0_LAADDYD  laaddâd:laadd

* LEXICON V_DOOIDYD  võõidâd:võõid
* LEXICON V0_DOOIDYD  võõidâd:võõid

* LEXICON V_CHIISTYD  čiistâd:čiist
* LEXICON V0_CHIISTYD  čiistâd:čiist

* LEXICON V_SLUUZHYD  sluužâd:sluuž
* LEXICON V0_SLUUZHYD  sluužâd:sluuž

* LEXICON V_PLIYSNYD  pliâsnâd:pliâsn
* LEXICON V0_PLIYSNYD  pliâsnâd:pliâsn

* LEXICON V_SUUDYD  suudâd:suud
* LEXICON V0_SUUDYD  suudâd:suud

### CLASS 1 LOW VOWEL, NO PALATALIZATION
Even-syllable stems in -AD

* LEXICON V_TEEVVAD  teevvad:teevv
* LEXICON IV_TEEVVAD  teevvad:teevv
* LEXICON TV_TEEVVAD  teevvad:teevv
* LEXICON V0_TEEVVAD  teevvad:teevv

* LEXICON V_POAOASSAD  pååssad:pååss
* LEXICON V0_POAOASSAD  pååssad:pååss

(1) +V+Inf: tättad
(2) +V+Ind+Prs+Sg3: tätt
(3) +V+Ind+Prs+Pl3: tätta
(4) +V+Ind+Prt+Pl3: tattu
(5) +V+Imprt+Sg2: täätt
(5) ERR
(7) +V+Imprt+Sg3: täättas
(8) +V+Imprt+ConNegII: tattu

* : VSUF-INF_AD ;  (1) +V+Inf: heârrad
* : VSUF-IND-PRS-SG3_AD ;  (2) +V+Ind+Prs+Sg3: heârr
* +Ind+Prs+Pl3:%^CC2CCC%>a K ;  (3) +V+Ind+Prs+Pl3: heârˈra
* :%^VOWRaise%^CC2CCC%> VSUF-IND-PRT-PL3_AD ;  (4) +V+Ind+Prt+Pl3: hiõrˈru
* +Imprt+Sg3:%^CC2C%>as K ;  (7) +V+Imprt+Sg3: heâras
* :%^VOWRaise%^CC2CCC VSUF-IMPRT-CONNEGII_AD ;  (8) +V+Imprt+ConNegII: heârˈru
* :%^CC2CCC VSUF-IMPRT-PL3_AD ;  (9) Ind.Imprt.Pl3: heârˈraz

* LEXICON V_VUAGGGAD  vuägˈgad:vuägˈg
* LEXICON IV_VUAGGGAD  vuägˈgad:vuägˈg
* LEXICON V0_VUAGGGAD  vuägˈgad:vuägˈg

* LEXICON V_LAEULLAD  läullad:läull
* LEXICON IV_LAEULLAD  läullad:läull
* LEXICON V0_LAEULLAD  läullad:läull

ExtraStrong-LowVowel-Palatalization
* : VSUF-INF_AD ;  (1) +V+Inf: läullad
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2,
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc
Ind.Prt.ConNeg, Imprt+Pl3, PrfPrc 
NomAct in MOsh

ExtraStrong-LowVowel-No-palatalization
* : VSUF-IND-PRS-SG3_AD ;  (2) +V+Ind+Prs+Sg3: läull
+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LowVowel-Palatalization
* +Ind+Prs+Pl3:%>a K ;  (3) +V+Ind+Prs+Pl3: läulla
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%> VSUF-IND-PRT-PL3_AD ;  (4) +V+Ind+Prt+Pl3: laullu
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-No-Palatalization
* :%^V2VV%^XYY2XY VSUF-IND-PRS-CONNEG_ED ;  (5) lääul
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-StableVowel-No-Palatalization
* :%^V2VV%^XYY2XY%> VSUF-I-POTKOND_AD ;   (6) +V+Pot+Sg3: lääulež
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_AD ;   (6) ERR
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LowVowel-No-palatalization
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise VSUF-IMPRT-CONNEGII_AD ;  (8) +V+Imprt+ConNegII: laullu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LowVowel-No-palatalization
* : VSUF-IMPRT-PL3_AD ;  (9) Ind.Imprt.Pl3: läullaz
Imprt+Pl3

(10) Allegro for incoative: läul»

* LEXICON V_SARNNAD  särnnad:sä%^1VOWrnn
* LEXICON IV_SARNNAD  särnnad:sä%^1VOWrnn
* LEXICON V0_SARNNAD  särnnad:sä%^1VOWrnn

* : VSUF-INF_AD ;  (1)  Inf: särnnad
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Ind+Prt+ConNeg
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc, NomAct in MOsh

* : VSUF-IND-PRS-SG3_AD ;  (2)  Ind.Prs.Sg3: särnn
+V+Ind+Prs+Sg3

* +Ind+Prs+Pl3:%>a K ;  (3)  Ind.Prs.Pl3: särnna
+Ind+Prs+Pl3

* :%^VOWRaise VSUF-IND-PRT-PL3_AD ;  (4) Ind.Prt.Pl3: sarnnu
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^V2VV%^XYY2XY VSUF-I-POTKOND_AD ;  (5-7) +Imprt+Sg2: säärn
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_AD ;  (5-7) ERR
Imprt+ConNeg, Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, Ind+Prs+Sg1, Ind+Prs+Sg2
+Ger, +VAbess, +Pot, +Cond, +Imprt+Sg3

* :%^VOWRaise VSUF-IMPRT-CONNEGII_AD ;  (8) Imprt.13.ConNeg: sarnnu
Imprt+ConNegII, Pass+PrfPrc

* : VSUF-IMPRT-PL3_AD ;  (9) särnnaz
+Imprt+Pl3

(10) Allegro for incoative: särn»

V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Ind+Prt+ConNeg
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc, NomAct in MOsh

+V+Ind+Prs+Sg3

+Ind+Prs+Pl3

+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Imprt+ConNeg, Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, Ind+Prs+Sg1, Ind+Prs+Sg2
+Ger, +VAbess, +Pot, +Cond, +Imprt+Sg3

Imprt+ConNegII, Pass+PrfPrc

+Imprt+Pl3

(10) Allegro for incoative: peit»

* LEXICON V_POAHSSAD  påhssad:på%^1VOWhss
* LEXICON V0_POAHSSAD  påhssad:på%^1VOWhss

* : VSUF-INF_AD ;  (1)  Inf: påhssad
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Ind+Prt+ConNeg
Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc, NomAct in MOsh

* : VSUF-IND-PRS-SG3_AD ;  (2)  Ind.Prs.Sg3: påhss
+V+Ind+Prs+Sg3

* +Ind+Prs+Pl3:%>a K ;  (3)  Ind.Prs.Pl3: påhssa
+Ind+Prs+Pl3

* :%^VOWRaise VSUF-IND-PRT-PL3_AD ;  (4) Ind.Prt.Pl3: pohssu
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^V2VV%^XYY2VY VSUF-I-POTKOND_AD ;  (5-7) +Imprt+Sg2: pååus
* +Err/Orth-should-be-grade-minus1: VSUF-I-POTKOND_AD ;  (5-7) ERR
Imprt+ConNeg, Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, Ind+Prs+Sg1, Ind+Prs+Sg2
+Ger, +VAbess, +Pot, +Cond, +Imprt+Sg3

* :%^VOWRaise VSUF-IMPRT-CONNEGII_AD ;  (8) Imprt.13.ConNeg: pohssu
Imprt+ConNegII, Pass+PrfPrc

* : VSUF-IMPRT-PL3_AD ;  (9) påhssaz
+Imprt+Pl3

(10) Allegro for incoative: påus»

* LEXICON V_KUAEIVVAD  kuäivvad:kuäivv
* LEXICON IV_KUAEIVVAD  kuäivvad:kuäivv
* LEXICON TV_KUAEIVVAD  kuäivvad:kuäivv
* LEXICON V0_KUAEIVVAD  kuäivvad:kuäivv

* LEXICON V_KUAESTTAD  kuästtad:kuästt
* LEXICON IV_KUAESTTAD  kuästtad:kuästt
* LEXICON TV_KUAESTTAD  kuästtad:kuästt
* LEXICON V0_KUAESTTAD  kuästtad:kuästt

(2)  Ind.Prs.Sg3: kuästt
(3)  Ind.Prs.Pl3: kuästta
(4)  Ind.Prt.Pl3: kuõsttu
(5)  Ind.Imprt.Sg2: kuäst-
(5) ERR
(7)  Imprt.Sg3: kuästas
(8)  Imprt.13.ConNeg: kuõsttu

* LEXICON V_KUYISSAD  kuâissad:kuâivv
* LEXICON V0_KUYISSAD  kuâivvad:kuâivv

* LEXICON V_VEYHSSAD  veâhssad:veâhss
* LEXICON V0_VEYHSSAD  veâhssad:veâhss

(2)  Ind.Prs.Sg3: veâhss
(3)  Ind.Prs.Pl3: veâhssa
(4)  Ind.Prt.Pl3: viõhssu
(5)  Ind.Imprt.Sg2: veâus-
(5) ERR
(7)  Ind.Imprt.Sg3: veâusas
(8)  Imprt.13.ConNeg: viõhssu

* LEXICON V_MEINNAD  meinnad:meinn
* LEXICON V0_MEINNAD  meinnad:meinn

* LEXICON V_REIDDAD  reiddad:rẹ%^1VOWidd
* LEXICON V0_REIDDAD  reiddad:rẹ%^1VOWidd

### CLASS 1 HIGH VOWEL, PALATALIZATION
* LEXICON TV_MUQTTED  muʹtted:mutt
* LEXICON V0_MUQTTED  muʹtted:mutt

Strong-HighVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: muʹtted
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* :%^VOWLower VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: mott
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^VOWLower%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: moʹtte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: muʹtte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization 
* :%^V2VV%^PAL VSUF-IND-PRS-CONNEG_ED ;  (5) muuʹtt-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^V2VV%^PAL%> VSUF-POTENTIAL_ED ;   (6) +V+Imprt+Sg2: muuʹtt
Ind+Prs+ConNeg, Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^V2VV%^VOWLower VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: moottas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* : VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: muttu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^VOWLower VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: mottaz
Imprt+Pl3

(11) Present Participle:
* :%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) +V+PrsPrc: muʹtti

(12) Weak-RaisedVowel-NoPalatalization
* :%^V2VV VSUF-CHED_ED ;   (12) +Der+Der/ched: muutt

* LEXICON V_PUUQTTED  puuʹtted:puutt
* LEXICON V0_PUUQTTED  puuʹtted:puutt

Strong-HighVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: puuʹtted
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* :%^VOWLower VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: poott
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^VV2V%^VOWLower%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: poʹtte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VV2V%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: puʹtte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization 
* :%^VOWLower%^PAL%^CC2C VSUF-IND-PRS-CONNEG_ED ;  (5) pooʹđ-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^PAL%^CC2C%> VSUF-POTENTIAL_ED ;   (6) +V+Imprt+Sg2: puuʹđ
Ind+Prs+ConNeg, Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^VOWLower%^CC2C VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: poođas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VV2V VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: puttu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^VV2V%^VOWLower VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: pottaz
Imprt+Pl3

(11) Present Participle:
* :%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) +V+PrsPrc: puuʹtti

(12) Weak-RaisedVowel-NoPalatalization
* :%^CC2C VSUF-CHED_ED ;   (12) +Der+Der/ched: puuđ-

* LEXICON V_LAQDDED  laʹdded:ladd
* LEXICON V0_LAQDDED  laʹdded:ladd
Strong-HighVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: laʹdded
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* :%^VOWLower VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: lädd
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^VOWLower%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: läʹdde
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: laʹdde
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization 
* :%^V2VV%^PAL VSUF-IND-PRS-CONNEG_ED ;  (5) laaʹdd-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^V2VV%^PAL%> VSUF-POTENTIAL_ED ;   (6) +V+Imprt+Sg2: laaʹdd
Ind+Prs+ConNeg, Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^V2VV%^VOWLower VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: lääddas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* : VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: laddu
Imprt+ConNegII, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^VOWLower VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: läddaz
Imprt+Pl3

(11) Present Participle:
* :%^PAL FOR-VSUF-PRSPRC_ED ;  (11) +V+PrsPrc: laʹddi

(12) Weak-RaisedVowel-NoPalatalization
* :%^V2VV VSUF-CHED_ED ;   (12) +Der+Der/ched: laadd-

* LEXICON V_VUEQTTED  vueʹtted:vuâtt
* LEXICON TV_VUEQTTED  vueʹtted:vuâtt
* LEXICON V0_VUEQTTED  vueʹtted:vuâtt
like: V_JUEQKHKHED

Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL VSUF-INF_ED ;		 (1) lieʹđđed 
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ; 	     		 (2) leâđđ
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PALÄ%^PAL%^CC2CCC%>e K ;      (3) leäʹđˈđe
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%^CC2CCC%> VSUF-IND-PRT-PL3_ED ;  (4) liõʹđˈđe
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PALE%^PAL%^CC2C VSUF-IND-PRS-CONNEG_ED ;  (5) lieʹđ-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr
Ger.Temp.PxSg3: jeäʹleeʹstes

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CC2C%> VSUF-POTENTIAL_ED ;  (6 lieʹđež
* +Use/NGminip+Use/NG:%^VOWRaise%^PAL%^CC2C%> VSUF-POTENTIAL_ED ;  (6 liõʹđež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^CC2C%> VSUF-CONDITIONAL_ED ;  (7) leâđ-
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8 liõđđu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization (9)
* :%^CC2CCC VSUF-IMPRT-PL3_ED ;   leâđˈđaz
Imprt+Pl3

Allegro (10) lieʹđ»

(11) Present Participle:
* :%^VOWRaise%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) liõʹđđi

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^CC2C VSUF-CHED_ED ;   (12) +Der+Der/ched: liõđ-

* LEXICON V_JUEQKHKHED  jueʹǩǩed:juâ%{ʹØ%}kk
* LEXICON IV_JUEQKHKHED  jueʹǩǩed:juâ%{ʹØ%}kk
* LEXICON V0_JUEQKHKHED  jueʹǩǩed:juâ%{ʹØ%}kk
* Yaml: **V-juekked**
Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL VSUF-INF_ED ;  (1) +V+Inf: jueʹǩǩed
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: juâkk
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PALẸ%^PAL%^CC2CCC%>e K ;  (3) +V+Ind+Prs+Pl3: juẹʹǩˈǩe
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PALÕ%^PAL%^CC2CCC%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: juõʹǩˈǩe
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization 
* :%^VOWRaise%^PALE%^PAL%^KK2GG VSUF-IND-PRS-CONNEG_ED ;  (5) jueʹjj-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALÕ%^PAL%^KK2GG%> VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: !! juõʹjjež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, 

Weak-LoweredVowel-No-palatalization
* :%^KK2GG VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: juâǥǥas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise%^CC2CCC VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: juõkˈku
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^CC2CCC VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: juâkˈkaz
Imprt+Pl3

(10) Allegro for incoative: jueʹj»
Secondary allegro for incoative: juâǥ»

(11) Present Participle:
* :%^VOWRaise%^PALÕ%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) +V+PrsPrc: juõʹǩǩi

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^KK2GG VSUF-CHED_ED ;   (12) +Der+Der/ched: juõǥǥ

* LEXICON V_KUEQDDDED  kueʹdded:kuâdˈd
* LEXICON TV_KUEQDDDED  kueʹdded:kuâdˈd
* LEXICON V0_KUEQDDDED  kueʹdded:kuâdˈd
like: V_JUEQKHKHED

Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL VSUF-INF_ED ;		 (1) kueʹdˈded 
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ; 	     		 (2) kuâdˈd
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PALE%^PAL%>e K ;      (3) kueʹdˈde
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) kuõʹdˈde
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CCC2CC VSUF-IND-PRS-CONNEG_ED ;  (5) kueʹdd-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr
Ger.Temp.PxSg3: jeäʹleeʹstes

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALÕ%^PAL%^CCC2CC%> VSUF-POTENTIAL_ED ;  (6) kuõʹddež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^CCC2CC%> VSUF-CONDITIONAL_ED ;  (7) kuâdd-
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) kuõdˈdu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization (9)
* : VSUF-IMPRT-PL3_ED ;   kuâdˈdaz
Imprt+Pl3

Allegro (10) kueʹd»

(11) Present Participle:
* :%^VOWRaise%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) kuõʹdˈdi

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^CCC2CC VSUF-CHED_ED ;   (12) +Der+Der/ched: kuõdd-

* LEXICON V_SHIEQTTTED  šieʹtted:kuâdˈd
* LEXICON V0_SHIEQTTTED  šieʹtted:šeâtˈt
like: V_SHIEQTTTED

Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL VSUF-INF_ED ;		 (1) šieʹtˈted 
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ; 	     		 (2) šeâtˈt
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PALE%^PAL%>e K ;      (3) šieʹtˈte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) šiõʹtˈte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CCC2CC VSUF-IND-PRS-CONNEG_ED ;  (5) šieʹtt-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr
Ger.Temp.PxSg3: jeäʹleeʹstes

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CCC2CC%> VSUF-POTENTIAL_ED ;  (6) šieʹttež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^CCC2CC%> VSUF-CONDITIONAL_ED ;  (7) šeâtt-
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) šiõtˈtu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization (9)
* : VSUF-IMPRT-PL3_ED ;   šeâtˈtaz
Imprt+Pl3

Allegro (10) šieʹt»

(11) Present Participle:
* :%^VOWRaise%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) šiõʹtˈti

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^CCC2CC VSUF-CHED_ED ;   (12) +Der+Der/ched: šiõtt-

* LEXICON V_JUQRDDED  juʹrdded:ju%^1VOW%{ʹØ%}rdd
* LEXICON IV_JUQRDDED  juʹrdded:ju%^1VOW%{ʹØ%}rdd
* LEXICON TV_JUQRDDED  juʹrdded:ju%^1VOW%{ʹØ%}rdd
* LEXICON V0_JUQRDDED  juʹrdded:ju%^1VOW%{ʹØ%}rdd
Strong-HighVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: juʹrdded
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* :%^VOWLower VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: jordd
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^PAL VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: juʹrdde
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^V2VV%^PAL%^XYY2XY VSUF-IND-PRS-CONNEG_ED ;  (5) juuʹrd
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^V2VV%^PAL%^XYY2XY VSUF-POTENTIAL_ED ;  (6) +V+Pot+Sg3: juuʹrdež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^V2VV%^VOWLower%^XYY2XY%> VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: joordas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* : VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: jurddu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^VOWLower VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: jorddaz 
Imprt+Pl3

(10) Allegro for incoative: juʹrd»

(11) Present Participle:
* :%^PAL FOR-VSUF-PRSPRC_ED ;  (11) +V+PrsPrc: juʹrddi

(12) Weak-RaisedVowel-NoPalatalization
* :%^V2VV%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: juurd-

* LEXICON V_PUQHTTED  puʹhtted:pu%^1VOW%{ʹØ%}h%{ʹØ%}tt
* LEXICON V0_PUQHTTED  puʹhtted:pu%^1VOW%{ʹØ%}h%{ʹØ%}tt
Strong-HighVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: puʹhtted
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* :%^VOWLower VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: pohtt
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^VOWLower%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: poʹhtte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^PAL VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: puʹhtte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PAL%^XYY2VY VSUF-IND-PRS-CONNEG_ED ;  (5) puuʹt
* +Use/NG+Err/Orth:%^V2VV%^VOWLower%^PAL%^XYY2VY VSUF-IND-PRS-CONNEG_ED ;  (5) poouʹt
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^V2VV%^PAL%^XYY2VY VSUF-POTENTIAL_ED ;  (6) +V+Pot+Sg3: puuʹtež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^V2VV%^VOWLower%^XYY2VY%> VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: pooutas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* : VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: puhttu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^VOWLower VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: pohttaz ??
Imprt+Pl3

(10) Allegro for incoative: puʹht»

(11) Present Participle:
* :%^PAL FOR-VSUF-PRSPRC_ED ;  (11) +V+PrsPrc: puʹhtti

(12) Weak-RaisedVowel-NoPalatalization
* :%^XYY2VY VSUF-CHED_ED ;   (12) +Der+Der/ched: puut-

* LEXICON V_UQVDDED  uʹvdded:u%^1VOW%{ʹØ%}v%{ʹØ%}dd
* LEXICON TV_UQVDDED  uʹvdded:u%^1VOW%{ʹØ%}v%{ʹØ%}dd
* LEXICON V0_UQVDDED  uʹvdded:u%^1VOW%{ʹØ%}v%{ʹØ%}dd
Strong-HighVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: uʹvdded
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization xyy2Vyy
* :%^VOWLower%^XYY2VYY VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: oudd
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization xyy2Vyy
* +Ind+Prs+Pl3:%^VOWLower%^PAL%^XYY2VYY%>e K ;  (3) +V+Ind+Prs+Pl3: ouʹdde
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: uʹvdde
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PAL%^XYY2VY VSUF-IND-PRS-CONNEG_ED ;   (5) uuʹd
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^PAL%^XYY2VY%> VSUF-POTENTIAL_ED ;  (6) +V+Pot+Sg3: !! uuʹdež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^V2VV%^VOWLower%^XYY2VY%> VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: ooudas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* : VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: uvddu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization xyy2Vyy
* :%^VOWLower%^XYY2VYY VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: ouddaz
Imprt+Pl3

(10) Allegro for incoative: uʹvd»

(11) Present Participle:
* :%^PAL FOR-VSUF-PRSPRC_ED ;  (11) +V+PrsPrc: uʹvddi

(12) Weak-RaisedVowel-NoPalatalization
* :%^XYY2VY VSUF-CHED_ED ;   (12) +Der+Der/ched: uud-

* LEXICON V_TIEQTTED  tieʹtted:teâtt
* LEXICON V0_TIEQTTED  tieʹtted:teâtt
* Yaml: **V-tietted**
Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL VSUF-INF_ED ;  (1) +V+Inf: tieʹtted
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: teâtt
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PALÄ%^PAL%^CC2CCC%>e K ;  (3) +V+Ind+Prs+Pl3: teäʹtˈte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%^CC2CCC%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: tiõʹtˈte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CC2C VSUF-IND-PRS-CONNEG_ED ;  (5) tieʹđ-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%^CC2C%> VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: !! tiõʹđež
* +Use/NG+Err/Orth:%^VOWRaise%^PALE%^PAL%^CC2C%> VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: !! tieʹđež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^CC2C VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: teâđas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise%^CC2CCC VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: tiõtˈtu
Imprt+ConNegII, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^CC2CCC VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: teâtˈtaz
Imprt+Pl3

(10) Allegro for incoative: tieʹđ»

(11) Present Participle:
* :%^VOWRaise%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: tiõʹtˈti
* :%^VOWRaise%^PALE%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: tieʹtˈti

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^CC2C VSUF-CHED_ED ;   (12) +Der+Der/ched: tiõđ-

* LEXICON V_KHIEQLDDED  ǩieʹldded:teâtt
* LEXICON V0_KHIEQLDDED  ǩieʹldded:teâtt
* Yaml: **V-tietted**
Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL VSUF-INF_ED ;  (1) +V+Inf: ǩieʹldded
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-Low-Vowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: teâtt
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PALÄ%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: ǩeäʹldde
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: ǩiõʹldde
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^VOWRaise%^PALE%^PAL%^XYY2XY VSUF-IND-PRS-CONNEG_ED ;  (5) tieʹđ-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^XYY2XY%> VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: !! tieʹđež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^XYY2XY VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: ǩeâldas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: ǩiõlddu
Imprt+ConNegII, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* : VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: ǩeâlddaz
Imprt+Pl3

(10) Allegro for incoative: ǩieʹld»

(11) Present Participle:
* :%^VOWRaise%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: ǩiõʹlddi
* :%^VOWRaise%^PALE%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: ǩieʹlddi

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: ǩiõld-

* LEXICON V_SUIQTTED  suiʹtted:suitt
* LEXICON V0_SUIQTTED  suiʹtted:suitt

(11) Present Participle:
* :%^PAL FOR-VSUF-PRSPRC_ED ;  (11) 

(12) Weak-RaisedVowel-NoPalatalization
* :%^V2VV%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: suuit-

* LEXICON V_VUEQRDDED  vueʹlǧǧed:vuâlgg
* LEXICON IV_VUEQRDDED  vueʹlǧǧed:vuâlgg
* LEXICON V0_VUEQRDDED  vueʹlǧǧed:vuâlgg
1.e.
1c
* Yaml: **V-juekked**
XYY-HighVowel-Palatalization
Height=0, PAL=+, V=0, C=0, âae=e
* :%^PALE%^PAL VSUF-INF_ED ;  (1) +V+Inf: vueʹlǧǧed
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

XYY-HighVowel-No-palatalization
Height=0, PAL=-, V=0, C=0, âae=e
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: vuâlgg
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

XYY-HighVowel-Palatalization !lowered
Height=-, PAL=+, V=-, C=+, âae=e
* +Ind+Prs+Pl3:%^PALE%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: vueʹlǧǧe
+V+Ind+Prs+Pl3

XYY-RaisedVowel-Palatalization
Height=+, PAL=+, V=-, C=+, âae=e
* :%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: vuõʹlǧǧe
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

2XY-StableV-Palatalization
Height=0, PAL=+, V=+, C=-, âae=e
* :%^PALE%^PAL%^XYY2XY VSUF-IND-PRS-CONNEG_ED ;  (5) +V+Imprt+Sg2: vueʹlj
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

2XY-RaisedVowel-Palatalization
Height=+, PAL=+, V=+, C=-, âae=e
* :%^VOWRaise%^PAL%^XYY2XY%> VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: !! vuõʹljež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, 

2XY-LoweredVowel-No-palatalization
Height=0, PAL=-, V=+, C=-, âae=e
* :%^XYY2XY%> VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: vuâlǥas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

XYY-RaisedVowel-No-palatalization 
Height=+, PAL=-, V=-, C=+, âae=e
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: vuõlggu
Imprt+ConNeg, Pass+PrfPrc

XYY-HighVowel-No-palatalization
Height=-, PAL=-, V=-, C=+, âae=e
* : VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: vuâlggaz
Imprt+Pl3

(10) Allegro for incoative: vueʹlj»
Height=0, PAL=+, V=-, C=-, âae=e

(11) Present Participle:
Height=+, PAL=+, V=0, C=0, âae=e
* :%^VOWRaise%^PAL FOR-VSUF-PRSPRC_ED ;  (4) +V+Act+PrsPrc: vuõʹlǧǧi
* :%^VOWRaise%^PALE%^PAL FOR-VSUF-PRSPRC_ED ;  (4) +V+Act+PrsPrc: vuõʹlǧǧi

(12) Weak-RaisedVowel-NoPalatalization
Height=+, PAL=-, V=+, C=-, âae=e
* :%^VOWRaise%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: vuõlǥ-

(13) vuõlggled, joottled -Âled be about to leave
Height=+, PAL=-, V=0, C=0, âae=e

* LEXICON V_VUEQHSSED  vueʹhssed:vuâhss
* LEXICON V0_VUEQHSSED  vueʹhssed:vuâhss
1.e.
1c
* Yaml: **V-juekked**
XYY-HighVowel-Palatalization
* :%^PALE%^PAL VSUF-INF_ED ;  (1) +V+Inf: vueʹhssed
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

XYY-HighVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: vuâhss
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

XYY-HighVowel-Palatalization
* +Ind+Prs+Pl3:%^PALE%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: vueʹhsse
+V+Ind+Prs+Pl3

XYY-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: vuõʹhsse
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

2XY-StableV-Palatalization
* :%^PALE%^PAL%^XYY2VY VSUF-IND-PRS-CONNEG_ED ;  (5) +V+Imprt+Sg2: vueuʹs
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

2XY-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%^XYY2VY%> VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: !! vuõuʹsež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot, 

2XY-LoweredVowel-No-palatalization
* :%^XYY2VY%> VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: vuâusas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

XYY-RaisedVowel-No-palatalization
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: vuõhssu
Imprt+ConNeg, Pass+PrfPrc

XYY-HighVowel-No-palatalization
* : VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: vuâhssaz
Imprt+Pl3

(10) Allegro for incoative: vueuʹs»

(11) Present Participle:
* :%^VOWRaise%^PAL FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: vuõʹhssi

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^XYY2VY VSUF-CHED_ED ;   (12) +Der+Der/ched: vuõus-

### CLASS 1 LOW VOWEL, PALATALIZATION
EVEN-SYLLABLE STEMS IN -ED

* LEXICON V_KAEQTTED  käʹtted:kätt
* LEXICON IV_KAEQTTED  käʹtted:kätt
* LEXICON TV_KAEQTTED  käʹtted:kätt
* LEXICON V0_KAEQTTED  käʹtted:kätt
ExtraStrong-LowVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: käʹtted
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

ExtraStrong-LowVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: kätt
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

Strong-LowVowel-Palatalization
* +Ind+Prs+Pl3:%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: käʹtte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: joʹtte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Strong-StableV-Palatalization
* :%^V2VV%^PAL VSUF-IND-PRS-CONNEG_ED ;  (5) +V+Imprt+Sg2: kääʹtt
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Strong-RaisedVowel-Palatalization
* :%^V2VV%^VOWRaise%^PAL VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: kaaʹttež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Strong-LowVowel-No-palatalization
* :%^V2VV VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: käättas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: sollõttu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LowVowel-No-palatalization
* : VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: kättaz
Imprt+Pl3

(10) Allegro for incoative: käʹđ»
* +Use/NGminip+Use/SpellNoSugg:%^PAL%>e FOR-ALLEGRO-DEVERBAL-DERIVATION ;  largo

(11) Present Participle:
* :%^VOWRaise%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: solõʹtti

(12) Weak-RaisedVowel-NoPalatalization
* :%^V2VV%^VOWRaise VSUF-CHED_ED ;   (12) +Der+Der/ched: solõõtt-

* LEXICON V_JOAQTTED  jååʹtted:jåått
* LEXICON IV_JOAQTTED  jååʹtted:jåått
* LEXICON TV_JOAQTTED  jååʹtted:jåått
* LEXICON V0_JOAQTTED  jååʹtted:jåått
Strong-LowVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: jååʹtted
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LowVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: jåått
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LowVowel-Palatalization
* +Ind+Prs+Pl3:%^VV2V%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: jåʹtte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VV2V%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: joʹtte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PAL%^CC2C VSUF-IND-PRS-CONNEG_ED ;  (5)
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%^CC2C VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: jooʹđež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LowVowel-No-palatalization
* :%^CC2C VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: jååđas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VV2V%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: jottu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^VV2V VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: jåttaz
Imprt+Pl3

(11) Present Participle:
* :%^VOWRaise%^PAL FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: jooʹtti

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^CC2C VSUF-CHED_ED ;   (12) +Der+Der/ched: joođ-

* LEXICON V_KHEQTTED  ǩeʹtted:ǩeâtt
* LEXICON V0_KHEQTTED  ǩeʹtted:ǩeâtt
ExtraStrong-LowVowel-Palatalization
* :%^VV2V%^PAL VSUF-INF_ED ;  (1) +V+Inf: ǩeʹtted
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

ExtraStrong-LowVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: ǩeâtt
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

Strong-LowVowel-Palatalization
* +Ind+Prs+Pl3:%^VV2V%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: ǩeʹtte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization CHECKME = 2015-10-11
* :%^VV2V%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: ǩiʹtte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Strong-StableV-Palatalization
* :%^PALE%^PAL VSUF-IND-PRS-CONNEG_ED ;  (5) +V+Imprt+Sg2: ǩeeʹtt
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Strong-RaisedVowel-Palatalization
* :%^VOWRaise%^PALI%^PAL VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: kiiʹttež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Strong-LowVowel-No-palatalization
* : VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: ǩeâttas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

* :%^VV2V%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: ǩittu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LowVowel-No-palatalization
* :%^CC2CCC VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: keâttaz
Imprt+Pl3

(10) Allegro for incoative: keʹt»

(11) Present Participle:
* :%^VV2V%^VOWRaise%^PAL%> FOR-VSUF-PRSPRC_ED  ;  (11) +V+Act+PrsPrc: ǩiʹtti

(12) Weak-RaisedVowel-NoPalatalization
* :%^V2VV%^VOWRaise VSUF-CHED_ED ;   (12) +Der+Der/ched: ǩiitt

* LEXICON IV_KOAQCCED  kååʹcced:kååcc
* LEXICON V0_KOAQCCED  kååʹcced:kååcc
Strong-LowVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: kååʹcced
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LowVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: kååcc
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LowVowel-Palatalization
* +Ind+Prs+Pl3:%^VV2V%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: kåʹcce
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VV2V%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: koʹcce
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PAL%^KK2GG VSUF-IND-PRS-CONNEG_ED ;  (5) 
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%^KK2GG VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: kooʹʒʒež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LowVowel-No-palatalization
* :%^KK2GG VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: kååʒʒas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VV2V%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: koccu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^VV2V VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: kåccaz
Imprt+Pl3

(11) Present Participle:
* :%^VOWRaise%^PAL%> FOR-VSUF-PRSPRC_ED ;  (4) +V+Act+PrsPrc: kooʹcci

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^KK2GG VSUF-CHED_ED ;   (12) +Der+Der/ched: kooʒʒ-

* LEXICON V_CEQPCCED  ceʹpcced:cepcc
* LEXICON IV_CEQPCCED  ceʹpcced:cepcc
* LEXICON TV_CEQPCCED  ceʹpcced:cepcc
* LEXICON V0_CEQPCCED  ceʹpcced:cepcc
ExtraStrong-LowVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: ceʹpcced
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

ExtraStrong-LowVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: cepcc
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc, NomAct in MOsh

ExtraStrong-LowVowel-Palatalization
* +Ind+Prs+Pl3:%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: ceʹpcce
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: ciʹpcce
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^V2VV%^PAL%^XYY2XY VSUF-IND-PRS-CONNEG_ED ;  (5) ceeʹpc-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^V2VV%^VOWRaise%^PAL%^XYY2XY%> VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: ciiʹpcež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LowVowel-No-palatalization
* :%^V2VV%^XYY2XY VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: ceepcas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: cipccu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* : VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: cepssaz
Imprt+Pl3

(10) Allegro for incoative: ceʹps»

(11) Present Participle:
* :%^VOWRaise%^PAL FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: ciʹpcci

(12) Weak-RaisedVowel-NoPalatalization
* :%^V2VV%^VOWRaise%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: ciipc-

* LEXICON V_KAQDDED  käʹdded:kädd
* LEXICON IV_KAQDDED  käʹdded:kädd
* LEXICON V0_KAQDDED  käʹdded:kädd
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: käʹdded
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc, 

* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: kädd
+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc, NomAct in MOsh

* +Ind+Prs+Pl3:%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: käʹdde
+V+Ind+Prs+Pl3

* :%^VOWRaise%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: kaʹdde
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^V2VV%^PAL VSUF-IND-PRS-CONNEG_ED ;  (5) Imprt+Sg2: kääʹdd
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

* :%^V2VV%^VOWRaise%^PAL%> VSUF-POTENTIAL_ED ;  (6) +V+Pot+Sg3: kaaʹddež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

* :%^V2VV%> VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: kääddas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: kaddu
Imprt+ConNeg, Pass+PrfPrc

* : VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: käddaz
Imprt+Pl3

(10) Allegro for inchoative: käʹd»

(11) Present Participle:
* :%^VOWRaise%^PAL FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: kaʹddi

(12) Weak-RaisedVowel-NoPalatalization
* :%^V2VV%^VOWRaise VSUF-CHED_ED ;   (12) +Der+Der/ched: kaadd-

* LEXICON V_VEAQDDDED  veäʹdˈded:veädd
* LEXICON V0_VEAQDDDED  veäʹdˈded:veädd
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: veäʹdˈded
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LowVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: veädd
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LowVowel-Palatalization
* +Ind+Prs+Pl3:%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: veäʹdˈde
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PALẸ%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: vieʹdˈde
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PALẸ%^PAL%^CCC2CC VSUF-IND-PRS-CONNEG_ED ;  (5) viẹʹdd
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CCC2CC%> VSUF-POTENTIAL_ED ;  (6) +V+Pot+Sg3: vieʹddež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^CCC2CC%> VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: veäddas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: viâdˈdu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: veädˈdaz
Imprt+Pl3

(11) Present Participle:

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^CCC2CC VSUF-CHED_ED ;   (12) +Der+Der/ched: viâdd-

* LEXICON V_KAAQKHKHED  kââʹǩǩed:kââ%{ʹØ%}kk
* LEXICON IV_KAAQKHKHED  kââʹǩǩed:kââ%{ʹØ%}kk
* LEXICON V0_KAAQKHKHED  kââʹǩǩed:kââ%{ʹØ%}kk
Strong-HighVowel-Palatalization
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: kââʹǩǩed
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: kââkk
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^VV2V%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: kâʹǩǩe
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VV2V%^VOWRaise%^PAL VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: kõʹǩǩe
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PAL%^KK2GG VSUF-IND-PRS-CONNEG_ED ;  (5) kââʹjj
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PAL%^KK2GG VSUF-POTENTIAL_ED ;  (6) +V+Pot+Sg3: kõõʹjjež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^KK2GG%> VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: kââǥǥas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VV2V%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: kõkku
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^VV2V VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: kâkkaz
Imprt+Pl3

(10) Allegro for incoative: kâʹǩ»

(11) Present Participle: 
* :%^VOWRaise%^PAL FOR-VSUF-PRSPRC_ED ;  (11) kõõʹǩǩi

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^KK2GG VSUF-CHED_ED ;   (12) +Der+Der/ched: kõõǥǥ-

* LEXICON V_PUEAQTTED  pueʹtted:puätt
* LEXICON IV_PUEAQTTED  pueʹtted:puätt
* LEXICON V0_PUEAQTTED  pueʹtted:puätt

Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALẸ%^PAL VSUF-INF_ED ;		 (1) puẹʹtted 
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ; 	     		 (2) puätt
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PAL%^CC2CCC%>e K ;      (3) puäʹtˈte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CC2CCC%> VSUF-IND-PRT-PL3_ED ;  (4) pueʹtˈte
* :%^VOWRaise%^PALÕ%^PAL%^CC2CCC%> VSUF-IND-PRT-PL3_ED ;  (4) puõʹtˈte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PAL%^CC2C VSUF-IND-PRS-CONNEG_ED ;  (5) puäʹđ-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* +Use/NGminip+Use/NG:%^VOWRaise%^PALE%^PAL%^CC2C%> VSUF-POTENTIAL_ED ;  (6 pueʹđež
* :%^VOWRaise%^PALÕ%^PAL%^CC2C%> VSUF-POTENTIAL_ED ;  (6 puõʹđež
* :%^VOWRaise%^PALÕ%^PAL%^CC2C VSUF-IND-PRT-SG3-PL1-PL2_ ;  ( puõʹđi
* +Pot+Sg3:%^PAL%^CC2C%>ež   K ;  (6   puäʹđež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^CC2C%> VSUF-CONDITIONAL_ED ;  (7) puäđ-
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3
* +Use/NGminip+Use/NG:%^PAL%^CC2C%> VSUF-CONDITIONAL_ED ;  (5 ?2 ?7) puäʹđ-

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise%^PALÕ VSUF-IMPRT-CONNEGII_ED ;  (8 puõttu
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8 puåttu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization (9)
* :%^CC2CCC VSUF-IMPRT-PL3_ED ;   puätˈtaz
Imprt+Pl3

Allegro (10)

(11) Present Participle:
* +Use/NG:%^VOWRaise%^PALE%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) pueʹtti
* :%^VOWRaise%^PALÕ%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) puõʹtti

(12) Weak-RaisedVowel-NoPalatalization
* :%^VOWRaise%^CC2C VSUF-CHED_ED ;   (12) +Der+Der/ched: puåđ

* LEXICON V_SHKUEAQTTED  škueʹtted:puätt
* LEXICON IV_SHKUEAQTTED  škueʹtted:puätt
* LEXICON TV_SHKUEAQTTED  škueʹtted:puätt
* LEXICON V0_SHKUEAQTTED  pueʹtted:puätt

Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALẸ%^PAL VSUF-INF_ED ;		 (1) puẹʹtted 
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ; 	     		 (2) puätt
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PAL%^CC2CCC%>e K ;      (3) puäʹtˈte
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CC2CCC VSUF-IND-PRT-PL3_ED ;  (4) pueʹtˈte
* +Use/NGminip+Use/NG:%^VOWRaise%^PALÕ%^PAL%^CC2CCC VSUF-IND-PRT-PL3_ED ;  (4) puõʹtˈte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PAL%^CC2C VSUF-IND-PRS-CONNEG_ED ;  (5) puäʹđ-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CC2C VSUF-POTENTIAL_ED ;  (6 pueʹđež
* +Use/NGminip+Use/NG:%^VOWRaise%^PALÕ%^PAL%^CC2C VSUF-POTENTIAL_ED ;  (6 puõʹđež
* :%^VOWRaise%^PALÕ%^PAL%^CC2C VSUF-IND-PRT-SG3-PL1-PL2_ ;  ( puõʹđi
* +Pot+Sg3:%^PAL%^CC2C%>ež   K ;  (6   puäʹđež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^CC2C VSUF-CONDITIONAL_ED ;  (7) puäđ-
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3
* +Use/NGminip+Use/NG:%^PAL%^CC2C VSUF-CONDITIONAL_ED ;  (5 ?2 ?7) puäʹđ-

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise%^PALÕ VSUF-IMPRT-CONNEGII_ED ;  (8 puõttu
* +Use/NGminip+Use/NG:%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8 puåttu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization (9)
* :%^CC2CCC VSUF-IMPRT-PL3_ED ;   puätˈtaz
Imprt+Pl3

No Allegro (10) 2015-12-04
:%^VOWLower%^PAL%^CC2CAllegro%>e FOR-ALLEGRO-DEVERBAL-DERIVATION ;

(11) Present Participle:
* +Use/NGminip+Use/NG:%^VOWRaise%^PALE%^PAL FOR-VSUF-PRSPRC_ED ;  (11) pueʹtti
* :%^VOWRaise%^PALÕ%^PAL FOR-VSUF-PRSPRC_ED ;  (11) puõʹtti

* LEXICON IV_JIEAQLLED  jieʹlled:jeä%{ʹØ%}ll
* LEXICON V0_JIEAQLLED  jieʹlled:jeä%{ʹØ%}ll
like: V_PIEAQKHKHED

Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALẸ%^PAL VSUF-INF_ED ;		 (1) jiẹʹlled 
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ; 	     		 (2) jeäll
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PAL%^CC2CCC%>e K ;      (3) jeäʹlˈle
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CC2CCC%> VSUF-IND-PRT-PL3_ED ;  (4) jieʹlˈle
* +Use/NGminip+Use/NG:%^VOWRaise%^PALÕ%^PAL%^CC2CCC%> VSUF-IND-PRT-PL3_ED ;  (4) jiõʹlˈle
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PAL%^CC2C VSUF-IND-PRS-CONNEG_ED ;  (5) jeäʹl-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr
Ger.Temp.PxSg3: jeäʹleeʹstes

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CC2C%> VSUF-POTENTIAL_ED ;  (6 jieʹlež

* :%^VOWRaise%^PALÕ%^PAL%^CC2C VSUF-IND-PRT-SG3-PL1-PL2_ ;  ( jiõʹli
* +Pot+Sg3:%^PAL%^CC2C%>ež   K ;  (6   puäʹđež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^CC2C%> VSUF-CONDITIONAL_ED ;  (7) jeäl-
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3
* +Use/NGminip+Use/NG:%^PAL%^CC2C%> VSUF-CONDITIONAL_ED ;  (5 ?2 ?7) jeäʹl-

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8 jiâllu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization (9)
* :%^CC2CCC VSUF-IMPRT-PL3_ED ;   jeälˈlaz
Imprt+Pl3

Allegro (10)
* :%^PAL%^CC2CAllegro%>e FOR-ALLEGRO-DEVERBAL-DERIVATION ;  jeäʹle

(11) Present Participle:
* :%^VOWRaise%^PALE%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) jieʹlli
* +Use/NGminip+Use/NG:%^VOWRaise%^PALÕ%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) jiõʹlli

(12)
* :%^VOWRaise%^CC2C VSUF-CHED_ED ;   (12) +Der+Der/ched: 

* LEXICON V_PIEAQKHKHED  pieʹǩǩed:peäkk
* LEXICON V0_PIEAQKHKHED  pieʹǩǩed:peäkk
* Yaml: **V-piekked**
Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALẸ%^PAL VSUF-INF_ED ;  (1) +V+Inf: piẹʹǩǩed
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: peäkk
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PAL%^CC2CCC%>e K ;  (3) +V+Ind+Prs+Pl3: peäʹǩˈǩe
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CC2CCC%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: pieʹǩˈǩe
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization 
* :%^VOWRaise%^PALẸ%^PAL%^KK2GG VSUF-IND-PRS-CONNEG_ED ;  (5) piẹʹjj-
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr
Ger.Temp.PxSg3: peäʹjjeeʹstes

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^KK2GG%> VSUF-POTENTIAL_ED ;   (6) +V+Pot+Sg3: !! pieʹjjež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^KK2GG VSUF-CONDITIONAL_ED ;  (7) +V+Imprt+Sg3: peäǥǥas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise%^CC2CCC VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: piâkˈku
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization
* :%^CC2CCC VSUF-IMPRT-PL3_ED ;  (9) Ind.Imprt.Pl3: peäkˈkaz
Imprt+Pl3

(10) Allegro for incoative: pieʹj» 2015-09-03 IS THIS CORRECT

(11) Present Participle:
* :%^VOWRaise%^PALE%^PAL%> FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: pieʹǩǩi

(12)
* :%^VOWRaise%^KK2GG VSUF-CHED_ED ;   (12) +Der+Der/ched: 

* LEXICON V_VUEAIQNNED  vueiʹnned:vuäinn
* LEXICON TV_VUEAIQNNED  vueiʹnned:vuäinn
* LEXICON V0_VUEAIQNNED  vueiʹnned:vuäinn

(11) Present Participle:
* :%^VOWRaise%^PALE%^PAL FOR-VSUF-PRSPRC_ED ;  (11) vueiʹnni

(12)
* :%^VOWRaise%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: 

* LEXICON V_VUEAQDHDHED  vueʹđđed:vuäđđ
* LEXICON V0_VUEAQDHDHED  vueʹđđed:vuäđđ
Strong-HighVowel-Palatalization
* :%^VOWRaise%^PALẸ%^PAL VSUF-INF_ED ;           (1) vuẹʹđđed
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

Strong-LoweredVowel-No-palatalization
* : VSUF-IND-PRS-SG3_ED ;                        (2) vuäđđ
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

ExtraStrong-LoweredVowel-Palatalization
* +Ind+Prs+Pl3:%^PAL%^CC2CCC%>e K ;      (3) vuäʹđˈđe
+V+Ind+Prs+Pl3

ExtraStrong-RaisedVowel-Palatalization
* :%^VOWRaise%^PALE%^PAL%^CC2CCC%> VSUF-IND-PRT-PL3_ED ;  (4) vueʹđˈđe
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

Weak-StableV-Palatalization
* :%^PAL%^CC2C VSUF-IND-PRS-CONNEG_ED ;  (5) vuäʹđ
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

Weak-RaisedVowel-Palatalization
* :%^VOWRaise%^PALÕ%^PAL%^CC2C VSUF-POTENTIAL_ED ;  (6) vuõʹđet
* +Use/NGminip+Use/NG:%^VOWRaise%^PALE%^PAL%^CC2C VSUF-POTENTIAL_ED ;  (6) vueʹđet
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

Weak-LoweredVowel-No-palatalization
* :%^CC2C%> VSUF-CONDITIONAL_ED ;  (7) vuäđ-
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

ExtraStrong-RaisedVowel-No-palatalization
* :%^VOWRaise%^PALÕ VSUF-IMPRT-CONNEGII_ED ;  (8) vuõđđu
Imprt+ConNeg, Pass+PrfPrc

ExtraStrong-LoweredVowel-No-palatalization (9)
* :%^CC2CCC VSUF-IMPRT-PL3_ED ;   vuäđˈđaz
Imprt+Pl3

Allegro (10)
vuäˈđeškuätt

(11) Present Participle:
* :%^VOWRaise%^PALE%^PAL FOR-VSUF-PRSPRC_ED ;  (11) vueʹđđi

(12)
* :%^VOWRaise%^CC2C VSUF-CHED_ED ;   (12) +Der+Der/ched: 

* LEXICON V_LEUQKHKHED  leuʹǩǩed:leukk
* LEXICON V0_LEUQKHKHED  leuʹǩǩed:leukk

(11) Present Participle:
* :%^PAL%^PALK%> FOR-VSUF-PRSPRC_ED ;  (11) leuʹǩǩi

(12)
* :%^V2VV%^VOWRaise%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: 

* LEXICON V_TAIQDDED  täiʹdded:tä%^1VOWi%{ʹØ%}dd
* LEXICON V0_TAIQDDED  täiʹdded:tä%^1VOWi%{ʹØ%}dd

* täiʹdded # examples:*
* *täiʹdded:* `täiʹdded+V+Inf` (Eng. # (1))
* *täidd:* `täiʹdded+V+Ind+Prs+Sg3` (Eng. # (2))
* *täiʹdde:* `täiʹdded+V+Ind+Prs+Pl3` (Eng. # (3))
* *taiʹdde:* `täiʹdded+V+Ind+Prt+Pl3` (Eng. # (4))
* *tääiʹd:* `täiʹdded+V+Imprt+Sg2` (Eng. # (5))
* *taaiʹdež:* `täiʹdded+V+Pot+Sg3` (Eng. # (6))
* *tääidas:* `täiʹdded+V+Imprt+Sg3` (Eng. # (7))
* *taiddu:* `täiʹdded+V+Pot+Sg3` (Eng. # (8))
* *täiddaz:* `täiʹdded+V+Imprt+Pl3` (Eng. # (9) +V+Imprt+Pl3 täiddaz)
* *täiʹdškueʹtted:* `täiʹdded+V+Der+Der/InchL+V+Inf` (Eng. # (10) Allegro)
* *taiʹddi:* `täiʹdded+V+PrsPrc` (Eng. # (11))
* *taaidčed:* `täiʹdded+V+Der+Der/ched+V+Inf` (Eng. # (12))

* : VSUF-IMPRT-PL3_ED ;   (9) +V+Imprt+Pl3 täiddaz
Imprt+Pl3

Allegro (10)
* :%^PAL%^XYY2XY FOR-ALLEGRO-DEVERBAL-DERIVATION ;  (10) täiʹd- 

(11) Present Participle:
* :%^VOWRaise%^PAL FOR-VSUF-PRSPRC_ED ;  (11) taiʹddi
(12)
* :%^V2VV%^VOWRaise%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: 

* LEXICON V_PEIQTTED  peiʹtted:pẹ%^1VOWi%{ʹØ%}tt
* LEXICON TV_PEIQTTED  peiʹtted:pẹ%^1VOWi%{ʹØ%}tt
* LEXICON V0_PEIQTTED  peiʹtted:pẹ%^1VOWi%{ʹØ%}tt

(11) Present Participle:
* :%^PAL FOR-VSUF-PRSPRC_ED ;  (11) taiʹddi
(12)
* :%^V2VV%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: peeitčed

* LEXICON V_CEAQLKHKHED  ceäʹlǩǩed:ceä%{ʹØ%}lkk
* LEXICON IV_CEAQLKHKHED  ceäʹlǩǩed:ceä%{ʹØ%}lkk
* LEXICON TV_CEAQLKHKHED  ceäʹlǩǩed:ceä%{ʹØ%}lkk
* LEXICON V0_CEAQLKHKHED  ceäʹlǩǩed:ceä%{ʹØ%}lkk
* :%^PAL VSUF-INF_ED ;  (1) +V+Inf: ceäʹlǩǩed
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

* : VSUF-IND-PRS-SG3_ED ;  (2) +V+Ind+Prs+Sg3: ceälkk
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

* +Ind+Prs+Pl3:%^PAL%>e K ;  (3) +V+Ind+Prs+Pl3: ceäʹlǩǩe
+V+Ind+Prs+Pl3

* :%^VOWRaise%^PALE%^PAL%> VSUF-IND-PRT-PL3_ED ;  (4) +V+Ind+Prt+Pl3: cieʹlǩǩe
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

* :%^VOWRaise%^PALẸ%^PAL%^XYY2XY VSUF-IND-PRS-CONNEG_ED ;  (5) +V+Imprt+Sg2: ciẹʹlǩ
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

* :%^VOWRaise%^PALE%^PAL%^XYY2XY%> VSUF-POTENTIAL_ED ;  (6) +V+Pot+Sg3: cieʹlǩi
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

* :%^XYY2XY%> VSUF-CONDITIONAL_ED ;  (7) +V+Ind+Prs+Sg1: ceälkam
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: ciâlkku
Imprt+ConNeg, Pass+PrfPrc

* : VSUF-IMPRT-PL3_ED ;   (9) +V+Imprt+Pl3 ceälkkaz
Imprt+Pl3

Allegro (10)

(11) Present Participle:
* :%^VOWRaise%^PALE%^PAL FOR-VSUF-PRSPRC_ED ;  (11) +V+Act+PrsPrc: cieʹlǩǩi
(12)
* :%^VOWRaise%^XYY2XY VSUF-CHED_ED ;   (12) +Der+Der/ched: 

* ceäʹlǩǩed # examples:*

* ceäʹlǩǩed+V+Imprt+Pl2 # (1) examples:*

* ceäʹlǩǩed+V+Ind+Prs+Sg3 # (2) examples:*

* ceäʹlǩǩed+V+Ind+Prs+Pl3 # (3) examples:*

* ceäʹlǩǩed+V+Ind+Prt+Pl3 # (4) examples:*

* ceäʹlǩǩed+V+Imprt+Sg2 # (5) examples:*

* ceäʹlǩǩed+V+Pot+Sg3 # (6) examples:*

* ceäʹlǩǩed+V+Imprt+Sg3 # (7) +V+Cond+Sg3 ceälkči, +V+Ind+Prs+Sg1 ceälkam examples:*

* ceäʹlǩǩed+V+Pass+PrfPrc # (8) examples:*

* ceäʹlǩǩed+V+Imprt+Pl3 # (9) +V+Act+PrfPrc ceälkkam examples:*

* ceäʹlǩǩed+V+Act+PrsPrc # (11) examples:*

* LEXICON V_MEAQTTTED  meäʹtted:meätˈt
* LEXICON V0_MEAQTTTED  meäʹtted:meätˈt
(1) +V+Inf: meäʹtˈted
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

(2) +V+Ind+Prs+Sg3: meätˈt
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

(3) +V+Ind+Prs+Pl3: meäʹtˈte
+V+Ind+Prs+Pl3

(4) +V+Ind+Prt+Pl3: mieʹtˈte
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

(5) +V+Imprt+Sg2:?? miẹʹtt
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

(6) +V+Pot+Sg3: ??mieʹđež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

(7) +V+Imprt+Sg3: meättas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

(8) +V+Imprt+ConNegII: miâtˈtu
Imprt+ConNeg, Pass+PrfPrc

* : VSUF-IMPRT-PL3_ED ;   +V+Imprt+Pl3 meätˈtaz
Imprt+Pl3

CHECK FORM

(11) Present Participle:
(11) +V+Act+PrsPrc: mieʹtˈti
(12)
* :%^VOWRaise%^CCC2CC VSUF-CHED_ED ;   (12) +Der+Der/ched: 

* LEXICON V_MAQHSSED  mäʹhssed:mä%^1VOWhss
* LEXICON IV_MAQHSSED  mäʹhssed:mä%^1VOWhss
* LEXICON TV_MAQHSSED  mäʹhssed:mä%^1VOWhss
* LEXICON V0_MAQHSSED  mäʹhssed:mä%^1VOW%{ʹØ%}h%{ʹØ%}ss

(1) +V+Inf: mäʹhssed
V+Inf, Ind+Prs+Pl1, Ind+Prs+Pl2, Imprt+Pl1, Imprt+Pl2
Actio, ActEss, PrsPrc

(2) +V+Ind+Prs+Sg3: mähss
+V+Ind+Prs+Sg3, Ind.Prt.ConNeg, PrfPrc

(3) +V+Ind+Prs+Pl3: mäʹhsse
+V+Ind+Prs+Pl3

(4) +V+Ind+Prt+Pl3: maʹhsse
+V+Ind+Prt+Pl3,  Ind+Prt+Sg1, Ind+Prt+Sg2, Ind+Prt+Sg4

(5) +V+Imprt+Sg2: määuʹs
Imprt+Sg2, Ind+Prs+ConNeg, Ind+Prs+Sg4, VAbess, GerTemp, GerInstr

(6) +V+Pot+Sg3: maauʹsež
Ind+Prt+Sg3, Ind+Prt+Pl1, Ind+Prt+Pl2, Pot,

(7) +V+Imprt+Sg3: määusas
Ind+Prs+Sg1, Ind+Prs+Sg2, Cond,  Imprt+Sg3

* :%^VOWRaise VSUF-IMPRT-CONNEGII_ED ;  (8) +V+Imprt+ConNegII: mahssu
Imprt+ConNeg, Pass+PrfPrc

* : VSUF-IMPRT-PL3_ED ;   (9) +V+Imprt+Pl3 mähssaz
Imprt+Pl3

(10) mäuʹs

(11) Present Participle:
(11) +V+Act+PrsPrc: maʹhssi
(12)
* :%^V2VV%^VOWRaise%^XYY2VY VSUF-CHED_ED ;   (12) +Der+Der/ched: 

DERIVED VERBS WITH PENULTIMATE VOWEL LOSS AND CHANGE

### CLASS 2 HIGH VOWEL, NO PALATALIZATION
* LEXICON V_AALGXTED   aalǥted:aalǥât
* LEXICON IV_AALGXTED   aalǥted:aalǥât
* LEXICON TV_AALGXTED   aalǥted:aalǥât
* LEXICON V0_AALGXTED   aalǥted:aalǥât
gradation: no

* LEXICON V_KULSTED  kulsted:kuulâst
* LEXICON IV_KULSTED  kulsted:kuulâst
* LEXICON V0_KULSTED  kulsted:kuulâst

* LEXICON V_OQNNSTED  oʹnnsted:oʹnnest
* LEXICON V0_OQNNSTED  oʹnnsted:oʹnnest

* LEXICON V_AGSTED  agsted:aaggâst
* LEXICON IV_AGSTED  agsted:aaggâst
* LEXICON V0_AGSTED  agsted:aaggâst

* LEXICON V_MAINSTED  mainsted:maainâst
* LEXICON IV_MAINSTED  mainsted:maainâst
* LEXICON TV_MAINSTED  mainsted:maainâst
* LEXICON V0_MAINSTED  mainsted:maainâst

* LEXICON V_NUOLSTED  nuõlsted:nuõllâst
* LEXICON V0_NUOLSTED  nuõlsted:nuõllâst

* LEXICON V_CHIOPSTED  čiõpsted:čiõppâst
* LEXICON IV_CHIOPSTED  čiõpsted:čiõppâst
* LEXICON V0_CHIOPSTED  čiõpsted:čiõppâst

* LEXICON V_TAARBSHED  taarbšed:taarbâš
* LEXICON V0_TAARBSHED  taarbšed:taarbâš

### CLASS 2 LOW VOWEL, NO PALATALIZATION
* LEXICON V_VUEJTED  vuejted:vuejat
* LEXICON V0_VUEJTED  vuejted:vuejat

* LEXICON V_KAEIGGSHED  käiggšed:käiggaš
* LEXICON IV_KAEIGGSHED  käiggšed:käiggaš
* LEXICON V0_KAEIGGSHED  käiggšed:käiggaš

* LEXICON V_JAELSTED  jälsted:jäälast
* LEXICON IV_JAELSTED  jälsted:jäälast
* LEXICON V0_JAELSTED  jälsted:jäälast

* LEXICON V_JAEMLJED  jämljed:jäämalǥ
* LEXICON V0_JAEMLJED  jämljed:jäämalǥ
inflection_type="3"

* LEXICON V_POAGXSTED  påǥsted:pååǥǥast
* LEXICON V0_POAGXSTED  påǥsted:pååǥǥast
lepsted+V+Inf
* *lẹẹppast^Pen^VV2V^Pen^CC2CAllegro^RmVow*
* *lẹ0p00st^Pen^VV2V^Pen^CC2CAllegro^RmVow*

* LEXICON V_JOARGXSTED  jårǥsted:jåårǥast
* LEXICON IV_JOARGXSTED  jårǥsted:jåårǥast
* LEXICON V0_JOARGXSTED  jårǥsted:jåårǥast

* LEXICON V_TEYPSTED  teâpsted:teâ%{ˈ1%}ppast
* LEXICON IV_TEYPSTED  teâpsted:teâ%{ˈ1%}ppast
* LEXICON TV_TEYPSTED  teâpsted:teâ%{ˈ1%}ppast
* LEXICON V0_TEYPSTED  teâpsted:teâ%{ˈ1%}ppast
gradation: no
allegro: yes
similar_to: 

* LEXICON V_JEAELSTED  jeälsted:jeä%{ˈ1%}last
* LEXICON IV_JEAELSTED  jeälsted:jeä%{ˈ1%}last
* LEXICON TV_JEAELSTED  jeälsted:jeä%{ˈ1%}last
* LEXICON V0_JEAELSTED  jeälsted:jeä%{ˈ1%}last
gradation: no
allegro: yes
similar_to: 

* LEXICON V_CVICCKHED   cviccǩed:cviccâk
* LEXICON V0_CVICCKHED   cviccǩed:cviccâk
gradation: no

* LEXICON V_MUAERSKHED  muärsǩed:muärask
* LEXICON V0_MUAERSKHED  muärsǩed:muärask
inflection_type="3"
gradation: no
allegro: yes
similar_to: 

* LEXICON V_TOINXSKHED  tõiŋsǩed:tõõiŋâsk
* LEXICON V0_TOINXSKHED  tõiŋsǩed:tõõiŋâsk
inflection_type="3"

* LEXICON V_SHORRNED  šorrned:šorran
* LEXICON IV_SHORRNED  šorrned:šorran
* LEXICON TV_SHORRNED  šorrned:šorran
* LEXICON V0_SHORRNED  šorrned:šorran
gradation: no

### CLASS 2 HIGH VOWEL, PALATALIZATION

* LEXICON V_CHIEQKHRDED  čieʹǩrded:čieʹǩǩerd
* LEXICON TV_CHIEQKHRDED  čieʹǩrded:čieʹǩǩerd
* LEXICON V0_CHIEQKHRDED  čieʹǩrded:čieʹǩǩerd

### CLASS 2 LOW VOWEL, PALATALIZATION
* LEXICON V_NJAQMMSHED  njâʹmmšed:njâʹmmeš
* LEXICON IV_NJAQMMSHED  njâʹmmšed:njâʹmmeš
* LEXICON V0_NJAQMMSHED  njâʹmmšed:njâʹmmeš

* LEXICON V_KOAQMRDED  kåʹmrded:kååʹmmerd
* LEXICON IV_KOAQMRDED  kåʹmrded:kååʹmmerd
* LEXICON TV_KOAQMRDED  kåʹmrded:kååʹmmerd
* LEXICON V0_KOAQMRDED  kåʹmrded:kååʹmmerd

* LEXICON V_LOAQNSTED  låʹnsted:lååʹnest
* LEXICON TV_LOAQNSTED  låʹnsted:lååʹnest
* LEXICON V0_LOAQNSTED  låʹnsted:lååʹnest

* LEXICON V_KHEEQRJTED  ǩeeʹrjted:ǩeeʹrjet
* LEXICON IV_KHEEQRJTED  ǩeeʹrjted:ǩeeʹrjet
* LEXICON TV_KHEEQRJTED  ǩeeʹrjted:ǩeeʹrjet
* LEXICON V0_KHEEQRJTED  ǩeeʹrjted:ǩeeʹrjet

* LEXICON V_AUQCSTED  äuʹcsted:ääuʹcest
* LEXICON V0_AUQCSTED  äuʹcsted:äuʹccest

* LEXICON V_VUAQDHSTED  vuäʹđsted:vuäʹđest
* LEXICON V0_VUAQDHSTED  vuäʹđsted:vuäʹđest

* LEXICON V_VUAQPSTED  vuäʹpsted:vuäʹppest
* LEXICON V0_VUAQPSTED  vuäʹpsted:vuäʹppest

* LEXICON V_NJAQDSTED  njâʹdsted:njââʹddest
* LEXICON V0_NJAQDSTED  njâʹdsted:njââʹddest

* LEXICON IV_AAIQJLDED  ääiʹjlded:ääiʹjeld
* LEXICON TV_AAIQJLDED  ääiʹjlded:ääiʹjeld
* LEXICON V0_AAIQJLDED  ääiʹjlded:ääiʹjeld

* LEXICON V_KAQRJSTED  käʹrjsted:kääʹrjest
* LEXICON IV_KAQRJSTED  käʹrjsted:kääʹrjest
* LEXICON V0_KAQRJSTED  käʹrjsted:kääʹrjest

### CLASS 3 HIGH VOWEL, NO PALATALIZATION

### CLASS 3 LOW VOWEL, NO PALATALIZATION
* LEXICON V_KUYDHDHDHJED  kuâđđjed:kuâđˈđ
* LEXICON IV_KUYDHDHDHJED  kuâđđjed:kuâđˈđ
* LEXICON TV_KUYDHDHDHJED  kuâđđjed:kuâđˈđ
* LEXICON V0_KUYDHDHDHJED  kuâđđjed:kuâđˈđ

* :%>%{ʼØ%}j VSUF-VUEJTED-ELSE ;  kuâđˈđjed

* LEXICON V_JEAELLLJED  jeälljed:jeälˈl
* LEXICON IV_JEAELLLJED  jeälljed:jeälˈl
* LEXICON V0_JEAELLLJED  jeälljed:jeälˈl

* :%>%{ʼØ%}j VSUF-VUEJTED-ELSE ;  jeälˈljed

### CLASS 3 HIGH VOWEL, PALATALIZATION
* LEXICON V_VOQLLJED  võʹllʼjed:võʹll
* LEXICON IV_VOQLLJED  võʹllʼjed:võʹll
* LEXICON TV_VOQLLJED  võʹllʼjed:võʹll
* LEXICON V0_VOQLLJED  võʹllʼjed:võʹll
* :e	VSUF-VUEJTED-IND-PRS-CONNEG ;	 võʹlle
* :ai VSUF-VUEJTED-IND-PRS-SG3 ;  võʹllai

### CLASS 3 LOW VOWEL, PALATALIZATION

### CLASS 3 HIGH VOWEL, NO PALATALIZATION, GH
* LEXICON V_KUOCCJED  kuõccjed:kuõcc
* LEXICON IV_KUOCCJED  kuõccjed:kuõcc
* LEXICON TV_KUOCCJED  kuõccjed:kuõcc
* LEXICON V0_KUOCCJED  kuõccjed:kuõcc

### CLASS 3 LOW VOWEL, NO PALATALIZATION, GH

### CLASS 4 HIGH VOWEL, NO PALATALIZATION

* LEXICON V_SILTTEED  siltteed:siltt
* LEXICON IV_SILTTEED  siltteed:siltt
* LEXICON TV_SILTTEED  siltteed:siltt
* LEXICON V0_SILTTEED  siltteed:siltt
* : VSUF-TEEQMEED-ELSE ;  

### CLASS 4 LOW VOWEL, NO PALATALIZATION
* : VSUF-TEEQMEED-ELSE ; 

### CLASS 4 HIGH VOWEL,  PALATALIZATION

### CLASS 4 LOW VOWEL, PALATALIZATION

* : VSUF-TEEQMEED-ELSE ; 

Not yet written

* +Ind+Prs+Sg3:%>ad K ;  teeʹmad

assuming stem kååʹmmerded

assuming stem **kååʹmmerd**

* LEXICON VSUF-IMPRT-PL3_ED  puätˈtaz

* LEXICON FOR-VSUF-PRSPRC_ED  (11) 
Vowel_raising, palatalization, Cons-grade-retension

VSUF-I-POTKOND_YD, VSUF-I-POTKOND_AD and VSUF-POTENTIAL_ED come here

* : DenominalAdjsCShort ;  (Feist 2012: 200-201) +Der+Der/teqm

* LEXICON VSUF-CONDITIONAL_ED   (7)

* LEXICON VSUF-IND-PRS-CONNEG_ED  (6)

* +Use/NGminip+Use/NG+Der+Der/st+V:%^Pen%^Allegro»%{ʼØ%}st VSUF-VUEJTED-ELSE ;  no allegro

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/verbs.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/affixes/verbs.lexc)</small>

---

# src-fst-morphology-phonology.twolc.md 


# Skolt Sámi TWOLC file

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-sms/blob/main/src/fst/phonology.twolc) 

# Introduction
The twolc rule file for Skolt Saami is divided into 5 main sections:
1. Alphabets, Sets and Definitions
1. Consonant shift rules (tbw)
1. Vowel alternation rules
1. Consonant gradation rules
1. Rules for cleaning up and composing end result

# Alphabets, sets and definitions

## Alphabet

Regular letters:

```
* a b c d e f g h i j k l m n o p q r s t u v w x y z
* A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
* ä å â õ
* Ä Å Â Õ
* č ǩ ǯ ǧ ž đ ǥ ʒ š ŋ
* Č Ǩ Ǯ Ǧ Ž Đ Ǥ Ʒ Š Ŋ
* ẹ Pedagogical purposes
* Ẹ Pedagogical purposes
* 
* æ ø ö á é í
* Æ Ø Ö Á
* É Ó Ú Í À È Ò Ù Ì Ë Ü Ï Ê Ô Û Î Ã Ý þ Ñ Ð
* é ó ú í à è ò ù ì ë ü ï ê ô û î ã ý þ ñ ð ß ª ß ç
```

Orthographic, suprasegmental markers:

* `ʹ` - MODIFIER LETTER PRIME: U+02B9 suprasegmental palatization
* `ʼ` - MODIFIER LETTER APOSTROPHE: U+02BC Syllable marker that appears in writing
* `ˈ` - MODIFIER LETTER VERTICAL LINE: U+02C8 as overlong consonant marker that does not appear in writing except for pedagogical purposes

Symbol pairs for consonant lengthening:
* __%{XC%}:m__
* __%{XC%}:n__
* __%{XC%}:v__
* __%{XC%}:d__
* __%{XC%}:r__
* __%{XC%}:l__
* __%{XC%}:k__
* __%{XC%}:ǥ__
* __%{XC%}:s__
* __%{XC%}:š__
* __%{XC%}:z__
* __%{XC%}:ž__

Symbol pairs for vowel length:
* __%{õuØ%}:0__
* __%{ouØ%}:0__
* __%{âõØ%}:0__
* __%{ẹiØ%}:0__
* __%{äaØ%}:0__
* __%{äåØ%}:0__
* __%{eiØ%}:0__
* __%{åoØ%}:0__
* __%{ẹeiØ%}:0__

Symbol pairs for vowel height, by default vowels are low:
* __%{õu%}:õ__
* __%{ou%}:o__
* __%{âõ%}:â__
* __%{ẹi%}:ẹ__
* __%{äa%}:ä__
* __%{äå%}:ä__
* __%{ei%}:e__
* __%{åo%}:å__
* __%{ẹei%}:ẹ__
* __%{âõe%}:â__
* __%{âõäe%}:â__

Trigger symbols:
* __%^Pen:0__ - for combinations 2015-09-28 Miikka
* __%^RmVow:0__ - for removing vowels e, â, a before final consonant in stem
* __%^UltRmVow:0__ - for removing vowels e, â, a after final consonant in stem
* __%^RmCns:0__ - for removing stem final consonant, e.g. final z in ǩeeʹstes:ǩeâsttez ǩeâstta
* __%^1VOW:0__ - Vow trigger
* __%^2VOW:0__ - Vow trigger
* __%^3VOW:0__ - Vow trigger
* __%^4VOW:0__ - Vow trigger
* __%^5VOW:0__ - Vow trigger
* __%^VOWLower:0__ - i>e, õ>â, â>ä, u>o, o>å
* __%^VOWRaise:0__ - e>i, ä>e
* __%^U2Õ:0__ - lowers u>õ
* __%^PAL:0__ - Palatalisation
* __%^PALNo:0__ - Palatalisation
* __%^PALI:0__ - Palatalisation
* __%^PALE:0__ - Palatalisation
* __%^PALÄ:0__ - Palatalisation
* __%^PALẸ:0__ - Palatalisation
* __%^PALÂ:0__ - Palatalisation
* __%^PALÕ:0__ - Palatalisation

Penultimate Palatalisation
* __%^PALK:0__ - causes k:ǩ and g:ǧ and ǥ:j

Miscellaneous triggers:
* %^VC:0 Voicing s:z š:ž
* %^Â:0 Indicates placement of â in stem

CHARACTERISTIC BREAKDOWN 2015-02-17

* __%^Allegro:0__ - Allegro in general shortens consonant and preceding vowel
* __%^VV2V:0__ - Shortens vowel
* __%^V2VV:0__ - Lengthens vowel
* __%^CC2C:0__ - Shortens consonant
* __%^CC2CAllegro:0__ - Shortens consonant and preceding vowel
* __%^C2CC:0__ - Lengthens consonant
* __%^CC2CCC:0__ - Strong to Extra Strong consonant
* __%^CCC2C:0__ - Extra Strong to Weak consonant
* __%^CCC2CAllegro:0__ - Extra Strong to Weak consonant
* __%^CCC2CC:0__ - Extra Strong to Strong consonant
* __%^XYY2XY:0__ - Shortens consonant cluster
* __%^XYY2VY:0__ - Consonant cluster to vowel and consonant sijdd:siid
* __%^XYY2VYY:0__ - Consonant cluster to vowel and geminate uvdd:ouʹdd
* __%^XYY2IY:0__ - Consonant cluster to i  and consonant kueʹhtt:kueiʹt
* __%^VY2XYY:0__ - Consonant cluster i/u to j/v
* __%^VYY2XYY:0__ - Consonant cluster i/u to j/v
* __%^KK2ZERO:0__ - nââʹer
* __%^KKK2ZERO:0__ - jeeʹel
* __%^KKK2GG:0__ - Geminate weakening
* __%^KKK2G:0__ - Strong Geminate allegro
* __%^KK2GG:0__ - Geminate weakening jokk:jooǥǥ
* __%^KK2GAllegro:0__ - Geminate weakening in allegro pååss:påz
* __%^K2GG:0__ - Geminate weakening čårrõs:čårrõõzz
* __%^K2GAllegro:0__ - Geminate weakening in allegro čâustõk

Removal of suprasegmentals

* __%{ʹØ%}:0__ - This is modifier letter prime
* __%{ʼØ%}:0__ - used between l, n, j and subsequent j and elsewhere
* __%{ˈ1%}:0__ - This is modifier letter verticle line after diphthongs

This introduces vertical bar after diphth before consonants
* %^Allegro:0 This introduces vertical bar after diphth before consonants

Various semi-vowel alternations
* %^J2I:0 in tuâjj:tuâi
* %^I2J:0 in agent names
* %^I2Zero:0 in agent names

Gradation triggers 2015.01.23
* %^XSt2St:0 Causes weakening from extra strong to strong
* %^XSt2W:0 Causes weakening from extra strong to weak
* %^St2W:0 Causes weakening from strong to weak
* %^W2St:0 Causes strengthening from weak to strong
* %^W2XSt:0 Causes strengthening from weak to extra strong
* %^St2XSt:0 Causes strengthening from strong to extra strong

Other vowel length and consonant length will be phased out
* %^VOWXSH:0 Extra shortens vowel in relation to consonant
* %^VOWXL:0 Extra lengthens vowel in relation to consonant in nouns, for example
* %^CXLong:0 Lengthening
* %^CLong:0 Lengthening
* %^CShort:0 Shortening

More triggers, possibly realised as a segment:

<!-- {% raw %} -->
* `X3:0` causes weak grade
* `%{VU%}:u` used with stuuʹl
* `%{Â1%}:0` used with "mainsted" to tell (a story)
* `%{A1%}:0` used with "vuejted" to drive (causative)
* `%{E1%}:0` used with "kåʹmrded" to bow
* `%{E1%}:0` archiform for MODIFIER LETTER ACUTE ACCENT used in stems where the lemma does not contain a MODIFIER LETTER ACUTE ACCENT and yet the paradigm requires one.
* `%{EÂ%}:e` archiform for ie:eâ variation
* `%^IMPSG2:0`
* `%^INDPRSSG3:0`
* `%^PenVow2a:0` Changes penultimate vowel to a; e:a â:a
* `%^FRICG:0`

Hyphen at compound word boundary
* `%^FRICG:0` Zero versus hyphen in compounding
* `%^Hyphen:0` at compound word boundary with %-
* `%^NoHyphen:0` at compound word boundary
<!-- {% endraw %} -->

Literal quotes and angles must be escaped (cf morpheme boundaries below):

* »
* «
* >
* <

Morpheme boundaries:
* Derivational prefix
* Derivational suffix
* Inflectional prefix
* Inflectional suffix
* Word boundary for both lexicalised and dynamic compounds
* (exceptional) soft hyphenation point
* Hyphen for question particle
* Compounding rules

End of alphabet definitions

## Sets

* Cns = b c d f g h j k l m n p q r s t v w x z đ ʒ ǯ č ŋ ǩ ǧ ǥ š ž
  B C D F G H J K L M N P Q R S T V W X Z Đ Ʒ Ǯ Č Ŋ Ǩ Ǧ Ǥ Š Ž ;
* CNoV = b c d f g h j k l m n p q r s t w x z đ ʒ ǯ č ŋ ǩ ǧ ǥ š ž
  B C D F G H J K L M N P Q R S T W X Z Đ Ʒ Ǯ Č Ŋ Ǩ Ǧ Ǥ Š Ž ;

* CNoJ = b c d f g h k l m n p q r s t v w x z đ ʒ ǯ č ŋ ǩ ǧ ǥ š ž
  B C D F G H K L M N P Q R S T V W X Z Đ Ʒ Ǯ Č Ŋ Ǩ Ǧ Ǥ Š Ž ;

* Vow = a e ẹ i o u å ä â õ
  A E Ẹ I O U Å Ä Â Õ ;
* VowNoIU = a e ẹ o å ä â õ
  A E Ẹ O Å Ä Â Õ ;

* CNoJV = b c d f g h k l m n p q r s t w x z đ ʒ ǯ č ŋ ǩ ǧ ǥ š ž
  B C D F G H K L M N P Q R S T W X Z Đ Ʒ Ǯ Č Ŋ Ǩ Ǧ Ǥ Š Ž ;

* CNoDLRZ = b c f g h j k m n p q s t v w x z đ ǯ č ŋ ǩ ǧ ǥ š ž
  B C F G H J K M N P Q S T V W X Z Đ Ǯ Č Ŋ Ǩ Ǧ Ǥ Š Ž ;

* Ltrs = Vow Cns ;

* Dummy = %^PAL %^PALE %^PALẸ %^PALÕ %^PALÄ %^PALK
  %^CC2C %^CCC2C %^CCC2CC %^XYY2IY %^XYY2XY
  %^KK2GG %^XYY2VY %^KKK2GG %^KKK2ZERO %^C2CC
  %^J2I %^Pen %^V2VV %^VOWLower %^RmVow
  %^PenVow2a %^RmCns %^VC %^V2VV
  %^VOWRaise %^VOWSH %^CLong %^K2GG %> ; - triggers in Sg.Nom and Sg.Gen (Note word-final right arrow bracket 2024-01-10)

## Definitions

### Short consonant cluster

Onset consonant or word boundary
`OnSetC = [[%{XC%}:Cns\|Cns:Cns] (Cns:\|%{XC%}:Cns) \|.#.\|#:\|%>\](») ;`

Penultimate consonant
`PenUltCns = [Cns:\](%{XC%}:) ;`

following morpheme or word boundary

<!-- {% raw %} -->
```
* RBound = [(%^Hyphen: %-|%^NoHyphen:|%{%-Ø%}:) (∑) #:|.#.|%>|»|%-] ;
```
<!-- {% endraw %} -->

ossible triggers before VOWLower and VOWRaise

neutral to vowel length

neutral to vowel height and backness

possible triggers before PALE PALÄ

possible triggers between stem and PALNo and PAL

possible triggers between vowel length and consonant grade

`NeutrVowHeightDiphPalAllegroPAL = [ (%^VOWRaise:\|%^VOWLower:) ( ((%^PALÂ:\|%^PALÕ:) (%^Allegro:) %^PALNo:\|%^VOWLower: %^PALÄ:\|(%^PALÕ:\|%^PALE:\|%^PALÄ:\|%^PALẸ:) (%^Allegro:) %^PAL:)\| (%^Allegro:) (%^PALÕ:\|%^PALE:\|%^PALÄ:\|%^PALẸ:\|%^PALÂ:) (%^PALNo:\](%^PAL:) ) ) ;`

possible triggers between word end and consonant grade

possible triggers between vowel length and Palatalization
`BetweenVowLengthAndPALNo = [(%^VOWLower:\|%^VOWRaise:) (%^PALÄ:\|%^PALE:\|%^PALẸ:\|%^PALÕ:\](%^PALÂ:) ) ;`

`BetweenVowHeightAndConsGrade = [((%^PALE:\|%^PALÄ:\|%^PALẸ:\|%^PALÕ:) (%^Allegro:) %^PAL:\|(%^PALÂ:\](%^PALÕ:) (%^Allegro:) %^PALNo:)) ;`

`BetweenStemAndRightArrow = [NeutrVowLenghtHeightDiphPalAllegroPAL BetweenPALNoAndMorphRightArrow] ;`

### Penultimate vowel centers possible triggers before VOWLower and VOWRaise

`PenBetweenStemAndStemFinalVoicing = [PenBetweenStemAndVowelLoss (%^RmVow:\](%^PenVow2a:)) ;`

`PenBetweenPALNoAndMorph = [(%^Pen: [(%^Allegro:) %^CC2C:\|(%^Allegro:) %^CC2CAllegro:]\|%^Pen: %^C2CC:\|%^Pen: %^XYY2XY:\|%^Pen: %^KK2GG:\|%^Pen: %^CC2CCC:\|%^Pen: %^CCC2C:\|%^Pen: %^CCC2CC:\|%^Pen: %^XYY2VY:\|%^Pen: %^XYY2VYY:\](%^Pen: %^KKK2GG:) RBound ) ;`

used in compounding Cmp/SgNom and Cmp/SgGen
`SgNomGen = [((%^PALE: %^PAL:) %^CCC2C:\|(%^PALE: %^PAL:) %^CCC2CC:\|%^PALẸ:\|[%^PALE:\|%^PALÕ:] %^PAL: %^XYY2IY:\|[%^PALẸ:\|%^PALE:] %^PAL: %^XYY2XY:\|((%^PALE:) %^PAL:) %^KK2GG:\|(%^PALE:) %^PAL:\| ((%^PALE:) %^PAL:) (%^J2I:) %^CC2C:\](%^PAL: %^XYY2VY:));`

neutral to consonant length

`CNeutrGrade = [([(%^Allegro:) %^CC2C:\|(%^Allegro:) %^CC2CAllegro:] \|[%^C2CC:] \|%^CC2CCC: \|%^KK2GG: \|%^KKK2GG: \|%^XYY2VY: \|%^XYY2VYY:\](%^CCC2CC: )) ;`

neutral to vowel and consonant length

`NeutrGrade = [VNeutrGrade \](CNeutrGrade) ; `

`NoVowRaise = \[ %^VOWRaise: \| #]* [#\](.#.) ;`

`NoCnsDummy = \[ %^CC2C: \| %^CCC2C: \| %^CCC2CC: \| %^XYY2IY: \| %^XYY2XY: \| %^KK2GG: \| %^XYY2VY: \| %^KKK2GG: \| %^KKK2ZERO: \| %^C2CC: \| %^J2I: \| %^RmCns: \| %^K2GG: \]( # )* ;`

`SurfaceDiphthong = [ :e :ä \| :e :â \| :i :õ \| :i :â \| :i :e \| :i :ẹ \| :u :â \| :u :õ \| :u :å \| :u :ä \| :u :e \]( :u :ẹ ) ;`

* X3 = C Vx Cx Cx     C Vx Vy Cx ˈ Cx
* X2 = C Vx Vx Cx Cx  C Vx Vy Cx Cx
* X1 = C Vx Vx Cx     C Vx Vy Cx

# Rules

## Vowel shortening rules

**Vowel shortening â:0** - used in

čââʹđ+N+Sg+Ill: **heart/sydän**
* *čâ^1VOWđđ>ma*
* *čâ0đđ>ma*

-â
ǩeʹtted+V+Ind+Prs+ConNeg: **cook/keittää**
* *ǩeâ{ʹØ}tt^VV2V^VOWRaise^PALI^PAL*
* *ǩi0ʹtt0000*

**Vowel shortening ẹ:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
teevvad+V+Prt+4:
* *tẹẹvv^VV2V^VOWRaise>uš*
* *ti0vv00>uš*

**Vowel shortening e:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3

eʹǩrded+V+Inf
* *eeʹǩǩerd^Pen^VV2V^Pen^CC2C^RmVow>ed*
* *e0ʹǩ00rd00000>ed*

Ââvel+N+Prop+Sg+Loc  **Ivalo**
* *Ââvel^RmVow>est*
* *Ââv0l0>est*

Jouste

**Vowel shortening å:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
jååʹtted+V+Ind+Prt+Pl3 **trekk**
* *jåå{ʹØ}tt^VV2V^VOWRaise^PAL>e*
* *jo0ʹtt000>e*
låʹǧsted
* *lååʹǧǧest^Pen^VV2V^Pen^CC2CAllegro^RmVow*
* *lå0ʹǧ00st00000*

sååbbar+N+Sg+Nom **meeting**
* *så^1VOWbbar^Pen^V2VV*
* *sååbbar00*

-å

**Vowel shortening õ:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
* *mõõ{ʹØ}nn^VV2V^PAL>e*
* *mõ0ʹnn00>e*
* *mõõ{ʹØ}nn^VV2V^VOWLower^PAL>e*
* *mâ0ʹnn000>e*
* *čõõnâst^Pen^VV2V^RmVow>ed*
* *čõ0n0st000>ed*
tõiŋsǩed+V+Inf
* *tõõiŋâsk^Pen^VV2V^RmVow^PALK>ed*
* *tõ0iŋ0sǩ0000>ed*
* ★*tõõiŋâsk^Pen^VV2V^RmVow^PALK>ed* (is not standard language)
* ★*tõ0iŋ0sk0000>ed* (is not standard language)

kõõnjâl+N+Sg+Gen **tear**
* *kõ^1VOWnnjâl^Pen^VV2V^Pen^C2CC*
* *kõ0nnjâl0000*

-õ

**Vowel shortening u:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3

mainstummuš+N+Sg+Ill: **story telling/tarinointi**
* *mainstummuš^RmVow>a*
* *mainstumm0š0>a*

juurd+N+Ess **thought**
* *ju^1VOWrdd>j>en*
* *ju0rdd>j>en*

Oulu

**Vowel shortening i:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
viikkâd+V+Ind+Prs+Pl3
* *vii{ʹØ}kk^VV2V^VOWLower^PAL>e*
* *ve0ʹǩǩ000>e*
viikkâd+V+Imprt+Pl3
* *vii{ʹØ}kk^VV2V^VOWLower>az*
* *vẹ00kk00>az*
* ★*vii{ʹØ}kk^VV2V^VOWLower>az* (is not standard language)
* ★*vẹẹ0kk00>az* (is not standard language)
iilâsǩ:ilska

prääʹzniǩ+N+Sg+Ill: **celebration/juhla**
* *prääʹzniǩ^RmVow^PALNo>a*
* *prääʹzn0k00>a*

* *žẹẹvai^RmVow^I2Zero>ǥa*
* *žẹẹv0000>ǥa*

+Sg+Ill N_HÕʹPPI
* *hõʹppi^UltRmVow>ǥa*
* *hõʹpp00>ǥa*

**Vowel shortening o:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
šoomm+N+Sg+Ill
* *šoomm^VV2V^VOWRaise>u*
* *šu0mm00>u*
ponjsted+V+Inf
* *poonjâst^Pen^VV2V^RmVow>ed*
* *po0nj0st000>ed*
poorrâd+V+Imprt+Pl3
* *poorr^VV2V^VOWLower>az*
* *på0rr00>az*

ooccâd+V+Imprt+Pl3
* *oocc^VV2V^VOWLower>az*
* *å0cc00>az*

ooumaž+N+Sg+Nom
* *o^1VOWumm^V2VV^XYY2XY>až*
* *ooum000>až*
-o

**Vowel shortening a:0 ** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
* *saa{ʹØ}kk^VV2V^PAL>e*
* *sa0ʹǩǩ00>e*

* *maainâst^Pen^VV2V>ed*
* *ma0inâst00>ed*

Aanar+N+Prop+Sg+Ill: **Inari/Enare**
* *Aanar^RmVow>a*
* *Aan0r0>a*

mättʼted+V+Inf: **teach/opettaa**
* *mätta0t^RmVow>ed*
* *mätt0ʼt0>ed*

-a

**Vowel shortening ä:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3

**%{ʼØ%} for modifier letter apostrophe** -
jieʹlli+N+Ess **animal/eläin**
* *jieʹll{ʼØ}i^I2J>en*
* *jieʹllʼj0>en*

* *koll>{ʼØ}j>ed*
* *koll>ʼj>ed*
* ★*koll>{ʼØ}j>ed* (is not standard language)
* ★*koll>0j>ed* (is not standard language)
* *valmštõõll{ʼØ}i^I2J>i*
* *valmštõõllʼj0>i*
piânˈnai+N+Ess: **dog/koira**
* *piânˈn^CCC2CC>{ʼØ}j>en*
* *piân0n0>ʼj>en*
* *jieʹll{ʼØ}i^I2J>e>st*
* *jieʹllʼj0>e>st*

-ä

**Vowel shortening y:0** - used in PX
-y

**Vowel shortening ö:0** - used in PX
-ö

**ZERO to syllable mark 0:ʼ, same as modifier letter apostrophe** - used in zeeʹtt+N+Sg+Abe: zeeʹttʼtää
mättʼted+V+Inf: **teach/opettaa**
* *mätta0t^RmVow>ed*
* *mätt0ʼt0>ed*
pueʹtted+V+Der/jed+Der/Caus+Der/NomAct+N+Ess:
* *puä{ʹØ}tt^CC2CCC>a0t^RmVow>em^RmVow>en*
* *puä0tt0>0ʼt0>0m0>en*
* ★*puä{ʹØ}tt^CC2CCC>at^RmVow>em^RmVow>en* (is not standard language)
* ★*puä0tt0>0t0>0m0>en* (is not standard language)
tåpsʼsted+V+Inf:
* *tååpsa0st^Pen^VV2V^RmVow^PALK>ed*
* *tå0ps0ʼst0000>ed*

* *ijss>0sa*
* *ijss>ʼsa*

* *kåčč>0čem*
* *kåčč>ʼčem*

* *a^1VOWutt^V2VV^XYY2XY>0taa*
* *aaut000>ʼtaa*

* *taaurõ^1VOWš{XC}^C2CC>0ses*
* *taaurõ0šš0>ʼses*

## Vowel alternation rules

### VOWEL SHIFT

### RAISING
deriving +Ind+Prt+Sg1, +Ind+Prt+Sg2 +Ind+Prt+Pl3 in teevvad:tivvu

**Vowel raising o:u** - Adding +Prt+Pl3 for ed verbs, Removing u: and i:  second element due to njeiddad njeiddu
* *šoomm^VV2V^VOWRaise>u*
* *šu0mm00>u*

**Vowel raising %{õu%}:u** - Adding
tõlvvad+V+Pass+PrfPrc: 
* *t{õu}{õuØ}lvv^VOWRaise>um*
* *tu0lvv0>um*

**Vowel raising å:o** - Adding

* *kåbll^VOWRaise*
* *kobll0*

* *kåå{ʹØ}pp^VOWRaise^PAL^CC2C>in*
* *kooʹv0000>in*
* *kå^1VOW{ʹØ}ll^V2VV^VOWRaise^PAL>in*
* *kooʹll000>in*

**Vowel raising e:i** - Adding +Prt+Pl3 for ed verbs, Removing u: and i:  second element due to njeiddad njeiddu

reâugg+N+Sg+Ill
* *reâugg^VOWRaise>u*
* *riõugg0>u*
pieʹhssed+V+Inf: ****
* *peâ{ʹØ}h{ʹØ}ss^PALE^PAL>ed*
* *pieʹh0ss00>ed*
mieʹlǩǩ+N+Sg+Nom: **milk/maito**
* *meâ{ʹØ}lkk^VOWRaise^PALE^PAL*
* *mieʹlǩǩ000*

* *jeä{ʹØ}gˈg^VOWRaise^PALẸ^PAL^CCC2CC*
* *jiẹʹǧ0ǧ0000*
* *beâ{ʹØ}sˈs^VOWRaise^PALE^PAL^CCC2CC*
* *bieʹs0s0000*
* *ceägˈg^VOWRaise>u*
* *ciâgˈg0>u*
cieʹǩǩes+N+Sg+Ill: **trick, type of ear mark/tikki, pykälä**
* *ceä{ʹØ}kˈkes^Pen^PALẸ^Pen^PAL^Pen^CCC2CC*
* *ciẹʹǩ0ǩes000000*

**Vowel raising ẹ:i** - used in
* *pẹ^1VOWss^VOWRaise>u*
* *pi0ss0>u*
* *pẹ^1VOWss^V2VV^VOWRaise>už*
* *piiss00>už*
* *tẹẹvv^VV2V^VOWRaise>uš*
* *ti0vv00>uš*
peigg+N+Sg+Ill
* ★*pẹ^1VOWigg^VOWRaise^VYY2XYY>u* (is not standard language)
* ★*pẹ0jgg00>u* (is not standard language)

**Vowel raising â:õ** - Adding +Prt+Pl3 for ed verbs, Removing u: and i:  second element due to njeiddad njeiddu
mââʹnn+N+Pl+Acc: **egg/muna**
* *mââ{ʹØ}nn^VOWRaise^PAL^CC2C>id*
* *mõõʹn0000>id*
pââʹjj+N+Pl+Gen
* *pââ{ʹØ}jj^VOWRaise^PAL^CC2C>i*
* *põõ0j000>i*
* ★*pââ{ʹØ}jj^VOWRaise^PAL^CC2C>i* (is not standard language)
* ★*pââ0j000>i* (is not standard language)
čâʹlmm+N+Pl+Acc: **eye/silmä**
* *čâ^1VOW{ʹØ}lmm^V2VV^VOWRaise^PAL^XYY2XY>id*
* *čõõʹlm00000>id*
kââʹǩǩed+V+Act+PrsPrc+Sg+Nom: **rub/hangata**
* *kââ{ʹØ}kk^VOWRaise^PAL>i*
* *kõõʹǩǩ00>i*
* ★*kââ{ʹØ}kk^VOWRaise^PAL>i* (is not standard language)
* ★*kââʹǩǩ00>i* (is not standard language)
* *ruâk0k^VOWRaise^CC2CCC>u*
* *ruõkˈk00>u*
* *čuâkˈk^VOWRaise>u*
* *čuõkˈk0>u*
kuâsˈsad+V+Ind+Prt+Pl3
* *kuâsˈs^VOWRaise>u*
* *kuõsˈs0>u*
reâugg+N+Sg+Ill
* *reâugg^VOWRaise>u*
* *riõugg0>u*
veârrad+V+Ind+Prt+Pl3
* *veâr0r^VOWRaise^CC2CCC>u*
* *viõrˈr00>u*
ǩeâikk+N+Sg+Ill: ****
* *ǩeâi{ʹØ}kk^VOWRaise>u*
* *ǩiõi0kk0>u*

**Diphthong raising beginning with u ä:å** -
kuärŋŋad+V+Ind+Prt+Pl3
* *kuärŋŋ^VOWRaise>u*
* *kuårŋŋ0>u*
* ★*kuärŋŋ^VOWRaise>u* (is not standard language)
* ★*kuõrŋŋ0>u* (is not standard language)

**Diphthong raising beginning with e:i ä:â** -
reäkkad+V+Ind+Prt+Pl3
* *reäk0k^VOWRaise^CC2CCC>u*
* *riâkˈk00>u*
ǩeäinn+N+Sg+Ill: **road/tie**
* *ǩeäinn^VOWRaise>u*
* *ǩiâinn0>u*
* ★*ǩeäinn^VOWRaise>u* (is not standard language)
* ★*ǩiäinn0>u* (is not standard language)

**Diphthong raising beginning with e:i ä:e** - used in
* *jeä{ʹØ}kˈkel^Pen^PALE^Pen^PAL^Pen^KKK2ZERO*
* *jeeʹ000el000000*
* *mõõnn^VV2V^CC2CAllegro»škuä{ʹØ}t0t^VOWRaise^PALE^PAL^CC2CCC>iǩ*
* *mõ0n000»škueʹtˈt0000>iǩ*

**Diphthong raising beginning with e:i ä:ẹ** - used in
* *čuä{ʹØ}ckk^PALẸ^PAL^XYY2XY>es*
* *čuẹʹcǩ0000>es*
* *suä{ʹØ}kk^PALẸ^PAL^KK2GG*
* *suẹʹjj000*
vuẹ'ddes+N+Sg+Nom: **root/juuri**
* *vuä{ʹØ}dˈdes^Pen^PALẸ^Pen^PAL^Pen^CCC2CC*
* *vuẹʹd0des000000*

**diphthong backing beginning with u ä:õ** - used in
* *jeä{ʹØ}l0l^VOWRaise^PALÕ^PAL^CC2CCC>e*
* *jiõʹlˈl0000>e*

**Even syllabic verbs I, diphthong raising beginning with ä:a u** - deriving läullad > laullum
* *rääuh^VOWRaise>u*
* *raauh0>u*
* *ä^1VOWldd^VOWRaise>u*
* *a0ldd0>u*
* *ä^1VOWldd^V2VV^VOWRaise^XYY2XY>u*
* *aald0000>u*
čääʹcc+N+Pl+Acc **water**
* *čää{ʹØ}cc^VOWRaise^PAL^KK2GG>id*
* *čaaʹʒʒ00>id*
mäʹhssed+V+Ind+Prt+Sg3: **pay/maksaa**
* *mä^1VOW{ʹØ}h{ʹØ}ss^V2VV^VOWRaise^PAL^XYY2VY>i*
* *maa0uʹs00000>i*
* ★*mä^1VOW{ʹØ}h{ʹØ}ss^V2VV^VOWRaise^PAL^XYY2VY>i* (is not standard language)
* ★*mää0uʹs00000>i* (is not standard language)
mäʹhssed+V+Ind+Prt+Pl3: **pay/maksaa**
* *mä^1VOW{ʹØ}h{ʹØ}ss^VOWRaise^PAL>e*
* *ma0ʹh0ss00>e*
* ★*mä^1VOW{ʹØ%}h%{ʹØ%}ss^VOWRaise^PAL>e* (is not standard language)
* ★*mä0ʹh0ss00>e* (is not standard language)
### LOWERING

**Even syllabic verbs I, vowel lowering o:å** - deriving +Ind+Prs+Sg3, +Ind+Prs+Pl3 in poorrâd
poorrâd+V+Ind+Prs+Pl3 **eat/syödä**
* *poo{ʹØ}rr^VV2V^VOWLower^PAL>e*
* *på0ʹrr000>e*
poorrâd+V+Ind+Prs+Sg3 **eat/syödä**
* *poo{ʹØ}rr^VOWLower*
* *påå0rr0*
juʹrdded+V+Cond+Sg1: joordčem
juʹrdded > joordam

**Even syllabic verbs I, vowel lowering i:e** -
viǯǯâd+V+Ind+Prs+Pl3 **fetch/noutaa**
* *vi^1VOW0ǯǯ^VOWLower^PAL>e*
* *ve0ʹǯǯ00>e*
viikkâd+V+Ind+Prs+Pl3
* *vii0kk^VV2V^VOWLower^PAL>e*
* *ve0ʹǩǩ000>e*

siõrrâd+V+Ind+Prs+Pl3: **play/leikkiä**
* *siõ0r0r^VOWLower^PALÄ^PAL^CC2CCC>e*
* *seäʹrˈr0000>e*
* *siõrr^VOWLower*
* *seârr*
* ★*siõrr^VOWLower* (is not standard language)
* ★*siârr0* (is not standard language)

cieʹǩǩes+N+Sg+Gen: **trick, type of ear mark/tikki, pykälä**
* *ciâkˈkes^Pen^VOWLower^PenVow2a^VC*
* *ceäkˈkaz0000*

**Even syllabic verbs I, vowel lowering i:ẹ ** - deriving +Ind+Prs+Sg3 in viǯǯâd
viǯǯâd+V+Imprt+Sg2 **fetch/noutaa**
* *vi^1VOWǯǯ^V2VV^VOWLower>as*
* *vẹẹǯǯ00>as*
viikkâd+V+Imprt+Pl3
* *viikk^VV2V^VOWLower>az*
* *vẹ0kk00>az*

**Vowel lowering a:ä** -

**Even syllabic verbs I, vowel lowering u:o** - deriving +Ind+Prs+Sg3, +Ind+Prs+Pl3 in uʹvdded

uʹvdded+V+Cond+Pl3 **to give**
* *u^1VOWvdd^V2VV^VOWLower^XYY2VY>če*
* *ooud0000>če*
uʹvdded+V+Ind+Prs+Sg3
* *u^1VOWvdd^VOWLower^XYY2VYY*
* *o0udd00*
vuʹvll+N+Sg+Ill: voulla
* *vu^1VOWvll^VOWLower^XYY2VYY>a*
* *vo0ull00>a*
puʹhtted+V+Cond+Pl3 **to give**
* *pu^1VOW{ʹØ}h{ʹØ}tt^VOWLower*
* *po00h0tt0*

kuullâd+V+Ind+Prs+Pl3 **hear/kuulla**
* *kuu0ll^VV2V^VOWLower^PAL^CC2C>e*
* *ko0ʹl00000>e*
juʹrdded+V+Ind+Prs+Sg1 **think**
* *ju^1VOW{ʹØ}rdd^V2VV^VOWLower^XYY2XY>am*
* *joo0rd0000>am*
juʹrdded+V+Ind+Prs+Pl3 **think**
* *ju^1VOW0rdd^VOWLower^PAL>e*
* *jo0ʹrdd00>e*

stuuʹl+N+Sg+Ill: **chair/tuoli**
* *stu^1VOW{VU}l^V2VV^VOWLower>a*
* *stooul00>a*
juʹrdded+V+Cond+Sg1: joordčem
juʹrdded > joordam

puuʹttes+A+Sg+Gen: **bright/kirkas**
* *pu^1VOWttes^Pen^VOWLower^PenVow2a^VC*
* *po0ttaz0000*
* ★*pu^1VOWttes^Pen^VOWLower^PenVow2a^VC* (is not standard language)
* ★*pu0ttaz0000* (is not standard language)

suukkâd+V+Imprt+Sg3: **row/soutaa**
* *suukk^VOWLower^KK2GG>as*
* *sooǥǥ00>as*

**Even syllabic verbs I, vowel lowering u:õ ** - deriving
* *ču^1VOWkk^V2VV^U2Õ>až*
* *čõõkk00>až*

**Even syllabic verbs I, vowel lowering õ:â ** - deriving +Ind+Prs+Sg3, +Ind+Prs+Pl3 in viǯǯâd
riõkkâd+V+Ind+Prs+Sg3 **to whip**
* *riõkˈk^VOWLower#*
* *reâkˈk0#*
* *mõõ0nn^VV2V^VOWLower^PAL>e*
* *mâ0ʹnn000>e*
* *mõõnn^VOWLower^CC2C>as*
* *mâân000>as*

vââid+N+Sg+Nom: ****
* *võ^1VOWidd^V2VV^VOWLower^XYY2XY*
* *vââid0000*
kuõskkâd+V+Ind+Prs+Sg3
* *kuõskk^VOWLower*
* *kuâskk0*
juõiggâd+V+Ind+Prs+Sg3
* *kuõigg^VOWLower*
* *kuâigg0*

### Diphthongs

**Even syllabic verbs I, diphthong opening after u å:ä** - deriving +Ind+Prs+Sg3, in kuåccâd kuäʹcce
= a>ä lowering clockwise
* *kuå0c0c^VOWLower^PAL^CC2CCC>e*
* *kuäʹcˈc000>e*
puäj+N+Sg+Nom
* *puåjˈj^VOWLower^CCC2C*
* *puåj0000*
* ★*puåjˈj^VOWLower^CCC2C* (is not standard language)
* ★*puäj0j00* (is not standard language)

**Vowel in second syllable e:a** - deriving cieʹǩǩes+N+Sg+Gen: ceäkˈkaz
cieʹǩǩes+N+Sg+Gen: **trick, type of ear mark/tikki, pykälä**
* *ciâkˈkes^Pen^VOWLower^PenVow2a^VC*
* *ceäkˈkaz0000*
puuʹttes+A+Sg+Gen

**Even syllabic verbs I, diphthong opening i:e â:ä for â:ä ** - deriving +Ind+Prs+Sg3, in čiõkkâd
* *vuâinn^VOWLower*
* *vuäinn0*
vueʹlǧǧed+Use/NG+V+Ind+Prs+Pl3 **leave/lähteä**
* *vuâ0lgg^PALÄ^PAL>a*
* *vuäʹlǧǧ00>a*
tieʹtted+V+Ind+Prs+Pl3 **know/tietää**
* *t* `e` (Eng. â {ʹØ} t ˈ t ^PALÄ ^PAL ^CC2CCC > e)
* *t* `e` (Eng. ä ʹ t ˈ t 0 0 0 > e)

**Even syllabic verbs I, diphthong opening after i:e e:â** - deriving +Ind+Prs+Sg3, in pi%{EÂ%}ʹǩǩ:peâkka

### Vowel backing

** u å:õ** - used in
= a>ä lowering clockwise

* *puått^VOWRaise>u*
* *puõtt0>u*

### Vowel Palatalization
**diphthong allophonic realization in palatalization u å:e** - deriving e from å

* *puå0v0v^PALE^PAL^CC2CCC>e*
* *pueʹvˈv000>e*

**diphthong allophonic realization in palatalization u å:ẹ** - deriving

### Vowel Lowering and Fronting

**Even syllabic verbs I, diphthong opening õ:ä after i:e** - deriving +Ind+Prs+Sg3, in čiõkkâd
siõrrâd+V+Ind+Prs+Pl3: **play/leikkiä**
* *siõ0r0r^VOWLower^PALÄ^PAL^CC2CCC>e*
* *seäʹrˈr0000>e*

### SECONDARY FRONTING

**Even syllabic verbs I, secondary vowel fronting with PAL u õ:e** - deriving +Ind+Prs+Pl3 in VIQQAD: kuõskkâd >kueʹsǩǩe

* *kuõ0skk^VOWLower^PALE^PAL>e*
* *kueʹsǩǩ000>e*

**Even syllabic verbs I, secondary u > v **

### RELATIVE VOWEL LENGTHENING

vowel lengthening and consonant shortening, %^Pen: %^V2VV and %^CShort

**Even syllabic verbs I, relative vowel lengthening %^1VOW:â** - deriving +V+Inf in TIETTED: uudd > uʹvdded
šõddâd+V+Imprt+Sg3:
* *šõ^1VOWdd^V2VV^VOWLower>as*
* *šââdd00>as*

nââʹer+N+Sg+Nom **sleep**
* *nâ^1VOW0kker^Pen^V2VV^Pen^PAL^Pen^KK2ZERO*
* *nââʹ00er000000*

radio+N+Sg+Ill
* *radio^1VOW^V2VVʹje*
* *radioo0ʹje*

**%^1VOW:ẹ relative vowel lengthening** -
sẹẹr+N+Pl+Nom: ****
* *sẹ^1VOWrr^CC2C*
* *sẹẹr00*
pess+N+Sg+Acc: **rifle/pyssy**
* *pẹ^1VOWss^V2VV*
* *pẹẹss0*
veʹrǧǧ+N+Der/lazh+A+Sg+Nom
* *vẹ^1VOW{ʹØ}rgg^V2VV^XYY2XY>laž*
* *vẹẹ0rǥ000>laž*
čẹẹuʹres+N+Sg+Nom = otter
* *čẹ^1VOWu{ʹØ}rres^Pen^V2VV^Pen^PAL^Pen^XYY2XY*
* *čẹẹuʹr0es000000*
viǯǯâd+V+Imprt+Sg2 **fetch/noutaa**
* *vi^1VOWǯǯ^V2VV^VOWLower>as*
* *vẹẹǯǯ00>as*
eelas+N+Sg+Nom:
* *ẹ^1VOWllas^Pen^V2VV^Pen^CC2C*
* *ẹẹl0as0000*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:e** - deriving +V+Inf in TIETTED: uudd > uʹvdded
* *čââʹlmtẹ^1VOW0m^V2VV^PAL*
* *čââʹlmteeʹm00*
reeʹǧǧes+A+Sg+Nom: **rich/rikas**
* *rẹ^1VOW0gges^Pen^V2VV^Pen^PAL*
* *rẹẹʹǧǧes0000*
* *pẹ^1VOWi0vv^V2VV^PAL^XYY2XY*
* *peeiʹv0000*

* *kaađnẹ^1VOW0ǩ{XC}^V2VV^PAL^C2CC*
* *kaađneeʹǩǩ000*

Jouste+N+Prop+Sg+Ill
* *Jouste^1VOW^V2VVʹje*
* *Joustee0ʹje*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:å** - deriving
sååbbar+N+Sg+Nom
* *så^1VOWbbar^Pen^V2VV*
* *sååbbar00*
* ★*så%^1VOWbbar^Pen^V2VV* (is not standard language)
* ★*så0bbar00* (is not standard language)
radio+N+Sg+Ill
* *radio^1VOW^V2VVʹje*
* *radioo0ʹje*
* *jå^1VOW{ʹØ}h{ʹØ}ss^V2VV^PAL^XYY2VY*
* *jåå0uʹs0000*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:õ** - deriving +V+Inf in TIETTED: uudd > uʹvdded
âʹlǧǧ+N+Pl+Gen: **boy/poika**
* *â^1VOW{ʹØ}lgg^V2VV^VOWRaise^PAL^XYY2XY>i*
* *õõʹlj00000>i*
čâʹlmm+N+Pl+Acc: **eye/silmä**
* *čâ^1VOW{ʹØ}lmm^V2VV^VOWRaise^PAL^XYY2XY>id*
* *čõõʹlm00000>id*
* *ču^1VOWkk^V2VV^U2Õ>až*
* *čõõkk00>až*

* *võ^1VOWrr^V2VV^CC2C*
* *võõr000*
* *sõ^1VOWll^V2VV^CC2C*
* *sõõl000*
* *mättʼtõ^1VOWs{XC}^V2VV^K2GG*
* *mättʼtõõzz00*
* *sõ^1VOWhss^V2VV^XYY2VY*
* *sõõus000*

**relative vowel lengthening %{õuØ%}:õ**

radio+N+Sg+Ill
* *radio^1VOW^V2VVʹje*
* *radioo0ʹje*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:ä** - deriving +V+Inf in TIETTED: uudd > uʹvdded
* *ä^1VOWldd^V2VV^CC2C*
* *ääld000*
* *jä^1VOWu0rr^V2VV^PAL^CC2C*
* *jääuʹr0000*
mäʹhssed+V+Ind+Prs+Sg1: **pay/maksaa**
* *mä^1VOW{ʹØ}h{ʹØ}ss^V2VV^XYY2VY>am*
* *mää0u0s000>am*
mäʹhssed+V+Ind+Prs+Sg4: **pay/maksaa**
* *mä^1VOW{ʹØ}h{ʹØ}ss^V2VV^PAL^XYY2VY>et*
* *mää0uʹs0000>et*

Määttä+N+Prop+Sg+Ill
* *Määttä^1VOW^V2VVʹje*
* *Määttää0ʹje*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:a** - deriving +V+Inf in MAINSTED: maainstam, mainstam
* *dura^1VOWk^V2VV*
* *duraak0*
* *ä^1VOWldd^V2VV^VOWRaise^CC2C>už*
* *aald0000>už*
täiʹdded+V+Ind+Prt+Sg3:
* *tä^1VOWi{ʹØ}dd^V2VV^VOWRaise^PAL^XYY2XY*

mäʹhssed+V+Ind+Prt+Sg3: **pay/maksaa**
* *mä^1VOW{ʹØ}h{ʹØ}ss^V2VV^VOWRaise^PAL^XYY2VY>i*
* *maa0uʹs00000>i*

taalkâs+N+Sg+Nom

biologia+N+Sg+Ill
* *biologia^1VOW^V2VVʹje*
* *biologiaa0ʹje*

**Relative vowel lengthening %^1VOW:o** -  simultaneous lengthening and lowering: juʹrdded > joordam juʹrdded+V+Ind+Prs+Sg1

* *u^1VOWvdd^V2VV^VOWLower^XYY2VY>če*
* *ooud0000>če*
juʹrdded+V+Ind+Prs+Sg1 **think**
* *ju^1VOWrdd^V2VV^VOWLower^XYY2XY>am*
* *joord0000>am*
* *kå^1VOW0ll^V2VV^VOWRaise^PAL>in*
* *kooʹll000>in*
* *tå^1VOWidd^V2VV^VOWRaise^XYY2XY>čed*
* *tooid0000>čed*
oolmaž+N+Sg+Nom: **person/henkilö**
* *o^1VOWlmm^V2VV^XYY2XY>až*
* *oolm000>až*
Sajos+N+Prop+Sg+Gen:Sajoozz
* *Sajo^1VOW{ʹØ}s{XC}^V2VV^K2GG*
* *Sajoo0zz00*
* ★*Sajo^1VOW{ʹØ}s{XC}^V2VV^K2GG* (is not standard language)
* ★*Sajo00zz00* (is not standard language)
toll+N+Sg+Gen: **fire/tuli**
* *to^1VOWll^V2VV^CC2C*
* *tool000*
* *to^1VOW0ll^V2VV^PAL^CC2C>e*
* *tooʹl0000>e*
* *ko^1VOWnttâr^Pen^V2VV^Pen^XYY2XY*
* *koont0âr0000*
radio+N+Sg+Ill
* *radio^1VOW^V2VVʹje*
* *radioo0ʹje*

**Even syllabic nouns I, relative vowel lengthening i** - ǩiđđ:ǩiiđ

leuʹdd+N+Pl+Gen
* *lẹ^1VOWu{ʹØ}dd^V2VV^VOWRaise^PAL^XYY2XY>i*
* *liiuʹd00000>i*
pirsted+V+Ind+Prs+ConNeg
* *piirâst*
* *piirâst*
* *pẹ^1VOWss^V2VV^VOWRaise>už*
* *piiss00>už*

* *ǩi^1VOWđđ^V2VV^CC2C*
* *ǩiiđ000*

Terhi+N+Prop+Sg+Ill
* *Terhi^1VOW^V2VVʹje*
* *Terhii0ʹje*

**Even syllabic nouns, relative vowel extra lengthening u not followed by v** - declension of nouns kunn > kuun
mainstummuš+N+Err/Orth+Sg+Gen: **story telling/tarinointi**
* *mainstummu^1VOWš{XC}^Pen^CC2C^V2VV^K2GG*
* *mainstum0uužž0000*

tuuibâl+N+Sg+Nom: ****
* *tu^1VOWibbâl^Pen^V2VV^Pen^XYY2XY*
* *tuuib0âl0000*
* *pu^1VOW0ttes^Pen^V2VV^Pen^PAL*
* *puuʹttes0000*
* ★*pu%^1VOW0ttes^Pen^V2VV^Pen^PAL* (is not standard language)
* ★*pu0ʹttes0000* (is not standard language)

vuʹvdd+N+Err/Orth+Sg+Gen: **area/alue**
* *vu^1VOW{ʹØ}v{ʹØ}dd^V2VV^PAL^XYY2XY*
* *vuuʹv0d0000*
Oulu+N+Prop+Sg+Ill
* *Oulu^1VOW^V2VVʹje*
* *Ouluu0ʹje*

**Word-final vowel ö** - 
Enontekiö+N+Prop+Sg+Ill
* *Enontekiö^1VOW^V2VVʹje*
* *Enontekiöö0ʹje*

simultaneous lengthening and raising, hmm: xfst ordering might be easier

### VOWEL DUMMY LOSS

### SEMI VOWELS

**Even syllabic nouns, for j>i** - sijdd > siid This will need a special extra-lengthening rule
* *ijss^XYY2VY>âs*
* *iis00>âs*
fiinâs+N+Sg+Nom: **fine/hieno**
* *fijnnâs>^Pen^XYY2VY*
* *fiin0âs>00*

* *sââjj^J2I^CC2C*
* *sââi000*
tuâjj+N+Sg+Acc **work**
* *tuâjj^J2I^CC2C*
* *tuâi000*

**Even syllabic verbs,  for v>u** - uvdd > ouʹdde
* *u^1VOWv0dd^PAL^XYY2VY*
* *u0uʹd000*
* *u^1VOWvdd^VOWLower^XYY2VYY*
* *o0udd00*
kuʹvǯǯ+N+Sg+Gen
* *ku^1VOWv0ǯǯ^VV2V^PAL^XYY2VY*
* *ku0uʹǯ0000*
kuʹvǯǯ+N+Sg+Gen: **/**
* *ku^1VOW{ʹØ}v{ʹØ}ǯǯ*
* *kuuʹ00ǯ0*
uudâs+N+Sg+Nom: **creature/luomus**
* *uvddâs^Pen^XYY2VY*
* *uud0âs00*

**Even syllabic nouns, for h>u** - luhtt  s s: ...
uhss+N+Der/Dim+N+Sg+Gen **door**
* *uh0ss^PAL^XYY2VY>e*
* *uuʹs000>e*

* *sä^1VOWhss^V2VV^XYY2VY>am*
* *sääus000>am*

piiutâs+N+Sg+Nom **clothing/vaate**
* *pi^1VOWhttâs^Pen^V2VV^Pen^XYY2VY*
* *piiut0âs0000*

**Even syllabic nouns, for h>i** - kueʹhtt
kueiʹt+Num+Sg+Gen **two/kaksi**
* *kuâh{ʹØ}tt^PALE^PAL^XYY2IY*
* *kueiʹt0000*
* ★*kuâh{ʹØ}tt^PALE^PAL^XYY2IY* (is not standard language)
* ★*kuâhʹt0000* (is not standard language)

**trisyllabic verbs and doer derivations, i>j** - used in
* *valmštõõll{ʼØ}i^I2J>i*
* *valmštõõllʼj0>i*
piânˈnai+N+Ess: **dog/koira**
* *piânˈn^CCC2CC>{ʼØ}j>en*
* *piân0n0>ʼj>en*

peigg+N+Sg+Ill
* *pẹ^1VOWigg^VOWRaise^VYY2XYY>u*
* *pi0jgg00>u*

### VOWELS TENSE vs LAX 2012-11-28

**Vowels for â:i** -
ǩeʹtted+V+Ind+Prs+ConNeg: **cook/keittää**
* *ǩeâ0tt^VOWRaise^PALI^PAL*
* *ǩiiʹtt000*

**Vowels for â:e** -
miârr+N+Sg+Ill
* *miâ0rr^PALE^PAL>e*
* *mieʹrr00>e*
mieʹlǩǩ+N+Sg+Nom
* *meâ0lkk^VOWRaise^PALE^PAL*
* *mieʹlǩǩ000*
* *piâ0ss^PALE^PAL*
* *pieʹss00*
* *ǩiâ0p0p^PALE^PAL^CC2CCC>e*
* *ǩieʹpˈp000>e*
* *kuâ0ll^PALE^PAL*
* *kueʹll00*
tieʹtted+V+Imprt+Sg2: **know/tietää**
* *teâ0tt^VOWRaise^PALE^PAL^CC2C*
* *tieʹđ00000*
mueʹles+N+Sg+Nom
* *muâ{ʹØ}lles^Pen^PALE^Pen^PAL^Pen^CC2C*
* *mueʹl0es000000*
kueʹtǩes+N+Sg+Nom
* *kuâ{ʹØ}tkkes^Pen^PALE^Pen^PAL^Pen^XYY2XY*
* *kueʹtǩ0es000000*

pieʹhssed+V+Inf: ****
* *peâ{ʹØ}h{ʹØ}ss^PALE^PAL>ed*
* *pieʹh0ss00>ed*
* *ǩeâ0sttes^Pen^PALE^Pen^PAL^Pen^XYY2XY*
* *ǩeeʹst0es000000*
ǩeʹtted+V+Ind+Prs+ConNeg: **cook/keittää**
* *ǩeâ0tt^PALE^PAL*
* *ǩeeʹtt00*

**Even-syllabic nouns, for â:ẹ** - used in
pieʹll+N+Sg+Nom: **half**
* *peä0ll^VOWRaise^PALẸ^PAL*
* *piẹʹll000*
* *tuâjj^PALẸ*
* *tuẹjj0*

**Palatalization for ẹ:e** - used in
reʹhtt+N+Pl+Nom
* *rẹ^1VOW{ʹØ}h{ʹØ}tt^V2VV^PAL^XYY2VY*
* *ree0uʹt0000*
peiʹvv+N+Sg+Gen: **day/päivä**
* *pẹ^1VOWi{ʹØ}vv^V2VV^PAL^CC2C*
* *peeiʹv0000*
karies+N+Sg+Nom: **caries/hammasmätä**
* *kariẹ^1VOW{ʹØ}s^PALE*
* *karie00s0*

### VOWEL and ZERO ALTERNATION

**Realization for â in a** - used in
* *ǩiõrggân^PenVow2a*
* *ǩiõrggan0*

### THE NON-ORTHOGRAPHIC SYLLABLE

**Loss of ʼ when preceded by vowel** - This is a temporary solution to  "ʼ" in võʹllʼjed, it deletes softmark when preceded by vowel

**%{A1%}:ʼ when subseqent syllable has vowel v** - This is a temporary solution to  "ʼ" in võʹllʼjed 2013-08-29

### PALATALIZATION

**%{ʹØ%}:ʹ as transfer from left of v:u and all instances of modifier letter prime** - used +Ind+Prs+Pl3, uʹvdded+V+Ind+Prs+Pl3: ouʹdde

uʹvdded+V+Ind+Prs+Pl3: **give/antaa**
* *u^1VOWv{ʹØ}dd^VOWLower^PAL^XYY2VYY>e*
* *o0uʹdd000>e*
* *u^1VOWv{ʹØ}dd^PAL^XYY2VY*
* *u0uʹd000*
* *Teäpˈpnẹ%^1VOW%{ʹØ%}d*
* *Teäpˈpne0ʹd*

täʹhtt+N+Pl+Nom: **bone/luu**
* *tä^1VOWh{ʹØ}tt^V2VV^PAL^XYY2VY*
* *tääuʹt0000*
täʹhtt+N+Pl+Gen: **bone/luu**
* *tä^1VOW{ʹØ}h{ʹØ}tt^V2VV^VOWRaise^PAL^XYY2VY>i*
* *taa0uʹt00000>i*
kueiʹt+Num+Sg+Gen **two/kaksi**
* *kuâ{ʹØ}h{ʹØ}tt^PALE^PAL^XYY2IY*
* *kue0iʹt0000*
uʹvdded+V+Ind+Prs+Pl3: **give/antaa**
* *u^1VOW{ʹØ}v{ʹØ}dd^PAL>ed*
* *u0ʹv0dd0>e*
tuʹvnn+N+Sg+Nom: ****
€ tu^1VOW{ʹØ}v{ʹØ}nn^PAL
€ tu0ʹv0nn0
täʹhtt+N+Pl+Nom: **bone/luu**
* *tä^1VOW{ʹØ}h{ʹØ}tt^PAL*
* *tääuʹt0000*

čẹẹuʹres+N+Sg+Nom = otter
* *čẹ^1VOWu{ʹØ}rres^Pen^V2VV^Pen^PAL^Pen^XYY2XY*
* *čẹẹuʹr0es000000*
siõrrâd+V+Ind+Prs+Pl3: **play/leikkiä**
* *siõ{ʹØ}r0r^VOWLower^PALÄ^PAL^CC2CCC>e*
* *seäʹrˈr0000>e*
* *saa{ʹØ}kk^VV2V^PAL>e*
* *sa0ʹǩǩ00>e*
tää%{ʹØ}ss+N+Sg+Gen: **level/taso**
* ★*tää0ss^PAL^KK2GG* (is not standard language)
* ★*tää0zz00* (is not standard language)
* *mõõ{ʹØ}nn^VV2V^VOWLower^PAL>e*
* *mâ0ʹnn000>e*
* *jåå{ʹØ}tt^VV2V^VOWRaise^PAL>e*
* *jo0ʹtt000>e*
* *kuâ{ʹØ}ll^PALE^PAL*
* *kueʹll00*
* *veä{ʹØ}kˈk^PAL*
* *veäʹǩˈǩ0*
* ★*veä{ʹØ}kˈk^PAL* (is not standard language)
* ★*veäʹkˈk0* (is not standard language)
* *stu^1VOW{VU}{ʹØ}l^PAL*
* *stu0uʹl0*
* *čââʹlmtẹ^1VOW{ʹØ}m^PAL*
* *čââʹlmte0ʹm0*
* *kä^1VOW{ʹØ}lles^Pen^V2VV^Pen^PAL*
* *kääʹlles0000*
* *jeä{ʹØ}kˈkel^Pen^PALE^Pen^PAL^Pen^KKK2ZERO*
* *jeeʹ000el000000*
* *seäh{ʹØ}tter^Pen^PALE^Pen^PAL^Pen^XYY2VY*
* *seeuʹt0er000000*

huʹvǧǧi+N+Sg+Nom: **rattle/suhistin**
* *hu^1VOW{ʹØ}v{ʹØ}ggi^Pen^PAL*
* *hu0ʹv0ǧǧi00*
The left context allows for:
Vowel shortening, and j/v > Vow

**d:đ in weak grade** - used in
* *ǩeä0dgg^VOWRaise^PALẸ^PAL^XYY2XY*
* *ǩiẹʹđj00000*

**Even-syllabic verbs I, Palatalization of g:ǧ** - used in
reäiʹǧǧ+N+Sg+Nom: **hole/reikä**
* *reäi0gg^PAL*
* *reäiʹǧǧ0*
šäʹŋǧǧ+N+Sg+Com: **pasty/piirakka**
* *šä^1VOW0ŋgg^V2VV^VOWRaise^PAL^XYY2XY>in*
* *šaaʹŋǧ00000>in*
vueʹlǧǧed+Use/NG+V+Ind+Prs+Pl3 **leave/lähteä**
* *vuâ0lgg^PALÄ^PAL>a*
* *vuäʹlǧǧ00>a*

* *veâ{ʹØ}rǧǧ^VOWRaise^PALE^PAL^PALK*
* *vieʹrǧǧ0000*

bioloog+N+Sg+Ill **biologist**
* *bioloo0g^PAL>e*
* *biolooʹǧ0>e*

huʹvǧǧi+N+Sg+Nom: **rattle/suhistin**
* *hu^1VOW{ʹØ}v{ʹØ}ggi^Pen^PAL*
* *hu0ʹv0ǧǧi00*

ääʹǧǧes+N+Sg+Nom: ****
* *ä^1VOW{ʹØ}gges^Pen^V2VV^Pen^PAL^Pen^PALK*
* *ääʹǧǧes000000*
* *a^1VOW{ʹØ}lggi^Pen^PAL^Pen^PALK*
* *a0ʹlǧǧi0000*

**Even-syllabic verbs I, Palatalization of k:ǩ here** - used in

hääʹsǩ Perhaps the stem should simply be **häskk**
* *hää0sk^PAL*
* *hääʹsǩ0*

cieʹǩǩes+N+Sg+Ill: **trick, type of ear mark/tikki, pykälä**
* *ceä{ʹØ}kˈkes^Pen^PALẸ^Pen^PAL^Pen^CCC2CC*
* *ciẹʹǩ0ǩes000000*

mieʹlǩǩ+N+Sg+Acc: **milk/maito**
* *meâ0lkk^VOWRaise^PALE^PAL^CC2C*
* *mieʹlǩ00000*

rääʹǩǩes+A+Sg+Nom **beloved/rakas**
* *rä^1VOW0kkes^Pen^V2VV^Pen^PAL*
* *rääʹǩǩes0000*
* *jo^1VOW0kk^PAL>e*
* *jo0ʹǩǩ0>e*
* *saa0kk^VV2V^PAL>e*
* *sa0ʹǩǩ00>e*
kåålvak+N+Sg+Loc
* *kåålvak^RmVow^PALK>est*
* *kåålv0ǩ00>est*

tõiŋsǩed+V+Inf
* *tõõiŋâsk^Pen^VV2V^RmVow^PALK>ed*
* *tõ0iŋ0sǩ0000>ed*
* ★*tõõiŋâsk^Pen^VV2V^RmVow^PALK>ed* (is not standard language)
* ★*tõ0iŋ0sk0000>ed* (is not standard language)

**Even-syllabic nouns I, Depalatalization of ǩ:k** - used in
* *mätkk>a*
* *mätkk>a*
kaađneǩ+N+Sg+Ill:
* *kaađnẹ^1VOW{ʹØ}ǩ{XC}^PALNo^C2CC>a*
* *kaađnẹ00kk00>a*

prääʹzniǩ+N+Sg+Ill: **celebration/juhla**
* *prääʹzniǩ^RmVow^PALNo>a*
* *prääʹzn0k00>a*
* *kaaddâšǩ^Pen^VV2V^Pen^CC2C^RmVow^PALNo>a*
* *ka0d00šk000000>a*
* ★*vieʹǩǩet%^PALNo* (is not standard language)
* ★*vieʹǩket0* (is not standard language)

**Even-syllabic nouns, removing palatalization in -est +Loc nouns** - removing palatalization in +Sg+Ill,  pieʹss:peässa
* *čââʹlmtẹ^1VOWm{XC}^C2CC>a*
* *čââʹlmtẹ0mm0>a*
stroitteʹl+N+Sg+Ill: **plant/laitos**
* *stroitteʹl^RmVow^PALNo>a*
* *stroitt00l00>a*
prääʹzniǩ+N+Sg+Ill: **celebration/juhla**
* *prääʹzniǩ^RmVow^PALNo>a*
* *prääʹzn0k00>a*

## Consonant QUANTITY CHANGE gradation rules

### Weakening Consonant Cluster

dealing with relative length changes
mõõnnâd : mõʹnne : mõõn

**Even syllabic verbs I, cg m:0** - used with  +Imp+Sg2, +Ind+Prs+ConNeg,
oolmaž+N+Sg+Nom: **person/henkilö**
* *o^1VOWlmm^V2VV^XYY2XY>až*
* *oolm000>až*
* *sää0mm^PAL^CC2C*
* *sääʹm000*
kåʹmrded+V+Ind+Prs+Sg3 **bow**
* *kååʹmmerd^PenVow2a*
* *kååʹmmard0*
mainstummuš+N+Err/Orth+Sg+Gen: **story telling/tarinointi**
* ★*mainstummu%^1VOWš{XC}^Pen^CC2C^V2VV%^K2GG* (is not standard language)
* ★*mainstummuužž0000* (is not standard language)

**Even syllabic verbs I, cg for b** - used
neiʹbb+N+Sg+Gen: **knife/veitsi**
* *nẹ^1VOWi0bb^V2VV^PAL^CC2C*
* *neeiʹb0000*
vuäʹbb+N+Sg+Loc+PxSg2
* *vuä{ʹØ}bˈb^VOWRaise^PALẸ^Allegro^PAL^CCC2CAllegro>stad*
* *vuẹʹb0000000>stad*
äʹrbb+N+Sg+Gen: **heritage/perintö**
* *ä^1VOW0rbb^V2VV^PAL^XYY2XY*
* *ääʹrb0000*
joorbâs+A+Sg+Nom
* *jo^1VOWrbbâs^Pen^V2VV^Pen^XYY2XY*
* *joorb0âs0000*
kuâbsted
* *kuâ{ˈ1}bbast^Pen^CC2CAllegro^RmVow*
* *kuâˈb00st000*

**Even syllabic verbs I, second consonant loss p:0** - used in
* *ǩiâpp^CC2C*
* *ǩiâv00*
* *vuäʹppest^Pen^CC2CAllegro^RmVow>ed*
* *vuäʹp00st000>ed*
* *ka^1VOWmppâr^Pen^V2VV^Pen^XYY2XY*
* *kaamp0âr0000*
* ★*ka%^1VOWmppâr^Pen^V2VV^Pen^XYY2XY* (is not standard language)
* ★*kaamppâr0000* (is not standard language)
riipâs+N+Sg+Nom: **snail/etana**
* *rijppâs* `^Pen:0` (Eng. ^XYY2VY:0)
* *riip0âs* `^Pen:0` (Eng. ^XYY2VY:0)

**Even syllabic verbs I, cg v:0** - used with  +Imp+Sg2, +Ind+Prs+ConNeg, teevvad > teev
* *pẹ^1VOWi0vv^V2VV^PAL^CC2C*
* *peeiʹv0000*
aasvâs+N+Sg+Nom: ****
* *a^1VOWsvvâs^Pen^V2VV^Pen^XYY2XY*
* *aasv0âs0000*
tuõvâs+N+Sg+Nom: **candle/tuohus, kynttilä**
* *tuõvˈvâs^Pen^CCC2C*
* *tuõv00âs00*
juʹvjj+N+Sg+Loc+PxSg3:
* *ju^1VOWv0jj^VV2V^PAL^XYY2VY>stes*
* *ju0uʹj0000>stes*
* *ju{ʹØ}v{ʹØ}jj^VV2V^PAL^XYY2VY>stes*
* *juʹ00j0000>stes*

**f:0** - used in

kaaʹff+N+Sg+Gen **coffee**
* *kaa0ff^PAL^CC2C*
* *kaaʹf000*

**Even syllabic verbs I, cg n:0** - used with  +Imp+Sg2, +Ind+Prs+ConNeg, jiõnn:jiõn
vueʹn+N+Sg+Nom: **mother-in-law/anoppi**
* *vuâ0nˈn^PALE^PAL^CCC2C*
* *vueʹn00000*
čuânj+N+Sg+Nom: **goose/hanhi**
* *čuõnˈnj^VOWLower^CCC2C*
* *čuân00j00*
jeäʹnn+N+Sg+Loc+PxSg1: **mother/äiti**
* *jeä0{ʹØ}nˈn^PALẸ^PAL^CCC2CAllegro>stan*
* *jiẹˈʹn00000>stan*
huânas+N+Sg+Nom: ****
* *huânˈnas^Pen^CCC2C*
* *huân00as00*

**Even syllabic nouns I, with extra lengthening of vowel ij>ii/uv>uu and dd>d** - used with  +N+Sg+Nom > +N+Sg+Gen, sijdd > siid

* *ä^1VOWldd^V2VV^XYY2XY*
* *ääld000*
* *ä^1VOWldd^V2VV^VOWRaise^XYY2XY>už*
* *aald0000>už*
* *u^1VOWv0dd^PAL^XYY2VY*
* *u0uʹd000*
juʹrdded+V+Ind+Prs+Sg1 **think**
* *ju^1VOWrdd^V2VV^VOWLower^XYY2XY>am*
* *joord0000>am*

uʹvdded+V+Ind+Prs+4:
* *u^1VOWv0dd^PAL^XYY2VY>et*
* *u0uʹd000>et*

- idd:id, +Imp+Sg2, +Ind+Prs+ConNeg double consonants following vowel and "i" at coda that become single consonants in gradation
uudâs+N+Sg+Nom: **creature/luomus**
* *uvddâs^Pen^XYY2VY*
* *uud0âs00*

**Even syllabic verbs I, cg for ʒ** - used with  pääʹʒʒelm+N+Sg+Ill: päʹʒlma
sauʒʒ+N+Pl+Nom **sheep/lammas**
* *sa^1VOWuʒʒ^V2VV^XYY2XY*
* *saauʒ000*

**ǯ:0** - used in
kuʹvǯǯ+N+Sg+Gen
* *ku^1VOW{ʹØ}v{ʹØ}ǯǯ^PAL^XYY2VY*
* *ku00uʹǯ000*

**č:0** - used in

**c:0** - used in
* *kä^1VOW{ʹØ}h{ʹØ}cces^Pen^V2VV^Pen^PAL^Pen^XYY2VY*
* *kä00uʹc0es000000*

**ž:0** - used in

väžsted+V+Inf
* *vääžžast^Pen^VV2V^Pen^CC2CAllegro^RmVow^PALK>ed*
* *vä0ž00st000000>ed*

**z:0** - used in
* *ǩeâsttez^PenVow2a^RmCns*
* *ǩeâstta000*
juzrdâd+V+Inf:
* *juuzzârd^Pen^VV2V^Pen^CC2C^RmVow*
* *ju0z00rd00000*

**Even syllabic verbs I, cg for đ** - used with  ǩiđđ:ǩiiđ
* *ǩi^1VOWđđ^V2VV^CC2C*
* *ǩiiđ000*
* *o^1VOWđđâs^Pen^V2VV^Pen^CC2C*
* *oođ0âs0000*

**Even syllabic verbs I, cg for r** - used with  võrr:võõr
* *võ^1VOWrr^V2VV^CC2C*
* *võõr000*
* *paarr^CC2C*
* *paar00*
* *jä^1VOWu0rr^V2VV^PAL^CC2C*
* *jääuʹr0000*
čårsted+V+Inf: **descriminate/syrjiä**
* *čåårrast^Pen^VV2V^Pen^CC2C^RmVow>ed*
* *čå0r00st00000>ed*
* ★*čåårrast^Pen^VV2V^Pen^CC2C^RmVow>ed* (is not standard language)
* ★*čå0rr0st00000>ed* (is not standard language)

**Even syllabic verbs I, cg for l** - used with  vuʹvll+N+Sg+Gen: vuuʹl
deriving
* *to^1VOWll^V2VV^CC2C*
* *tool000*
* *stä^1VOW0llj^V2VV^PAL^CC2C*
* *stääʹl0j000*
alttõõlli+N+NomAg+Pl+Gen
* *alttõõll{ʼØ}i^CC2C*
* *alttõõl00i0*

pääʹljes+N+Sg+Nom: **path/polku**
* *pä^1VOW0lljes^Pen^V2VV^Pen^PAL^Pen^CC2C*
* *pääʹl0jes000000*
talsted+V+Inf:
* *taallâst^Pen^VV2V^Pen^CC2C^RmVow>ed*
* *ta0l00st00000>ed*

vuʹvll+N+Sg+Gen:
* *vu^1VOWv0ll^PAL^XYY2VY*
* *vu0uʹl000*

deriving kueʹll+N+Sg+Gen: kueʹl
* *kuâ0ll^V2VV^PALE^PAL^CC2C*
* *kueʹl00000*

**j:0 ** - used in

ǩeʹrjj+N+Pl+Nom: **book/kirja**
* *ǩẹ^1VOW0rjj^V2VV^PAL^XYY2XY*
* *ǩeeʹrj0000*
tuâjj+N+Sg+Acc: **work/työ**
* *tuâjj^CC2C*
* *tuâj00*
tuâjj+N+Sg+Gen:tuâi
* *tuâjj^J2I^CC2C*
* *tuâi000*
* *po^1VOWjjâs^Pen^V2VV^Pen^CC2C*
* *pooj0âs0000*

**Even syllabic verbs I, cg for g** - used in
cõõggâlm+N+Sg+Ill
* *cõõggâlm^Pen^VV2V^Pen^CC2C^RmVow>a*
* *cõ0g00lm00000>a*
* *ǩeâlggal^Pen^XYY2XY*
* *ǩeâlǥ0al00*

äiʹǧǧ+N+Sg+Gen: **time/aika**
* *ä^1VOWi0gg^V2VV^PAL^XYY2XY*
* *ääiʹj0000*
reäiʹǧǧ+N+Pl+Nom: **hole/reikä**
* *reäi0gg^PAL^XYY2XY*
* *reäiʹj000*

**Allegro loss ǧ** - used in
* *lååʹǧǧest^Pen^VV2V^Pen^CC2CAllegro^RmVow*
* *lå0ʹǧ00st00000*

GEMINATE TO WEAK QUALITY GEMINATE
**Even syllabic nouns I, with extra lengthening of vowel V>VV and KK>ǤǤ**  - used in
used with  +N+Sg+Nom > +N+Sg+Gen for cases like
lookki > looǥǥi.

čâustõk+N+Sg+Gen
* *čâustõ^1VOW{ʹØ}k{XC}^V2VV^K2GG*
* *čâustõõ0ǥǥ00*
with allegro
čâustõk+N+Sg+Ela+PxSg3
* *čâustõ{ʹØ}k^K2GAllegro>stes*
* *čâustõ0ǥ0>stes*

* *jo^1VOWkk^V2VV^KK2GG*
* *jooǥǥ00*
puâǥǥ+N+Sg+Nom: ****
* *puõkˈk^VOWLower^KKK2GG*
* *puâǥ0ǥ00*

čuâǥǥas+N+Sg+Nom  **road**
* *čuâkˈk^KKK2GG>as*
* *čuâǥ0ǥ0>as*

loǥškueʹtted **begin to read**
* *loo{ʹØ}kk^VV2V^KK2GAllegro»škueʹtted*
* *lo00ǥ000»škueʹtted*

čõõǥǥâs
* *čõ^1VOWkkâs^Pen^V2VV^Pen^KK2GG*
* *čõõǥǥâs0000*

**Even syllabic nouns I, with extra lengthening of vowel V>VV and k:j** - used in
used with
> .
tuʹmstõk+N+Der/Dimin+N+Pl+Nom: **decision/päätös, mietintö**
* *tuʹmstõ^1VOW0k{XC}^V2VV^PAL^K2GG>e*
* *tuʹmstõõʹjj000>e*

with allegro

* *suä0kk^PALẸ^PAL^KK2GG*
* *suẹʹjj000*

* *jeä0kˈkel^Pen^PALE^Pen^PAL^Pen^KKK2GG^RmVow>až*
* *jeeʹj0j0l0000000>až*

**Even syllabic nouns I, with extra lengthening of vowel V>VV and ǩ:j** - used in
used with
> .

**š:0** - used in Allegro

šapšš+N+Sg+Gen **white fish/siika**
* *ša^1VOWpšš^V2VV^XYY2XY*
* *šaapš000*
ruõšsted+V+Inf: ****
* *ruõ{ˈ1%}ššâst^Pen^CC2CAllegro^RmVow>ed*
* *ruõˈš00st000>ed*

**Even syllabic verbs I, Voicing š:ž** - ss:zz, +Imp+Sg2, +Ind+Prs+ConNeg, double consonants at coda become voiced in gradation
lookkmõš+N+Sg+Gen
* *lookkmõ^1VOWš{XC}^V2VV^K2GG*
* *lookkmõõžž00*
with allegro

* *pååss^VV2V^KK2GAllegro»škuätt*
* *på0z000»škuätt*

mainstummuš+N+Sg+Gen:
* *mainstummuš^VC*
* *mainstummuž0*

**Even syllabic verbs I, Voicing c:ʒ** - cc:zz, +Imp+Sg2, +Ind+Prs+ConNeg, double consonants at coda become voiced in gradation
* *čää0cc^PAL^KK2GG*
* *čääʹʒʒ00*
čääʹcc+N+Sg+Loc+PxSg3
* *čää0cc^VV2V^PAL^KK2GAllegro>stes*
* *čä0ʹʒ0000>stes*
* *čää0cc^PAL^KK2GG>stes*
* *čääʹʒʒ00>stes*
* *puõcˈc^VOWLower^PALÄ^KKK2GG*
* *puäʒ0ʒ000*
* *pååss^VV2V^KK2GAllegro»škuätt*
* *på0z000»škuätt*

õõʒʒâs+N+Sg+Nom: **high water/vuoksi**
* *õ^1VOWccâs^Pen^V2VV^Pen^KK2GG*
* *õõʒʒâs0000*

**Even syllabic verbs I, Voicing č:j** - ss:zz, +Imp+Sg2, +Ind+Prs+ConNeg, double consonants at coda become voiced in gradation

* *pååss^VV2V^KK2GAllegro»škuätt*
* *på0z000»škuätt*

**Even syllabic verbs I, Voicing after long vowel or diphthong s:z s:z** - ss:zz, +Imp+Sg2, +Ind+Prs+ConNeg, double consonants at coda become voiced in gradation
tääʹss+N+Sg+Gen: **level/taso**
* *tää0ss^PAL^KK2GG*
* *tääʹzz00*
* *mättʼtõ^1VOWs{XC}^V2VV^K2GG*
* *mättʼtõõzz00*
with allegro

cieʹǩǩes+N+Sg+Gen: **trick, type of ear mark/tikki, pykälä**
* ★*ciâkˈkes^Pen^VOWLower%^PenVow2a%^VC* (is not standard language)
* ★*ceäkˈkas0000* (is not standard language)
* *pååss^VV2V^KK2GAllegro»škuätt*
* *på0z000»škuätt*

čårrõs+N+Sg+Gen
* *čårrõ^1VOW{ʹØ}s{XC}^V2VV^K2GG*
* *čårrõõ0zz00*

**Even syllabic verbs I, second consonant loss t:0** - used in
autt+N+Pl+Nom **car/auto**
* *a^1VOWutt^V2VV^CC2C*
* *aaut000*
põrtt+N+Pl+Nom **house/talo**
* *põ^1VOW{ʹØ}rtt^V2VV^XYY2XY*
* *põõ0rt000*

* *ko^1VOWnttâr^Pen^V2VV^Pen^XYY2XY*
* *koont0âr0000*
puʹtsted+V+Inf: ****
* *puuʹttest^Pen^VV2V^Pen^CC2CAllegro^RmVow*
* *pu0ʹt00st00000*
piiutâs+N+Sg+Nom **clothing/vaate**
* *pi^1VOWhttâs^Pen^V2VV^Pen^XYY2VY*
* *piiut0âs0000*
kääđas+N+Sg+Nom
* *kä^1VOWttas^Pen^V2VV^Pen^CC2C*
* *kääđ0as0000*

**Consonant loss s:0** - used in

* *sä^1VOWhss^V2VV^XYY2VY>am*
* *sääus000>am*

uhss+N+Sg+Gen **door**
* *uhss^XYY2VY*
* *uus00*

ǩeäsʼsted+V+Inf:
* *ǩeä{ˈ1}ssa0st^Pen^CC2CAllegro^RmVow^PALK>ed*
* *ǩeäˈs00ʼst0000>ed*
âʹpsted+V+Inf: **smell a little/haiskahtaa**
* *ââʹpsest^Pen^VV2V^RmVow*
* *â0ʹp00st000*

**Consonant loss ŋ:0** - used in

**Consonant loss h:0** - used in
ruʹhss+N+Sg+Loc+PxSg3:
* *ru^1VOW0hss^VV2V^PAL^XYY2VY>stes*
* *ru0ʹ0s0000>stes*
påʹhlded+V+Inf: ****
* *pååʹhheld^Pen^VV2V^Pen^CC2CAllegro^RmVow*
* *på0ʹh00ld00000*

**Even syllabic verbs I, t>đ** - tt:đ
ǩiõtt+N+Sg+Loc+PxSg1 **hand,arm/käsi**
* *ǩiõ0tt^Allegro^PAL^CC2CAllegro>stan*
* *ǩiõʹđ0000>stan*
autt+N+Pl+Nom **car/auto**
* ★*a^1VOWutt^V2VV^CC2C* (is not standard language)
* ★*aauđ000* (is not standard language)
puuttâd+V+Ind+Prt+Sg3: **end/loppua**
* *puutt^CC2C>i*
* *puuđ00>i*
kääđas+N+Sg+Nom:
* *kä%^1VOWttas^Pen^V2VV^Pen^CC2C*
* *kääđ0as0000*
* *čuâ{ʹØ}ttes^Pen^PALE^Pen^PAL^Pen^CC2C*
* *čueʹđ0es000000*

**Even syllabic nouns I, p>v** - pp:v
* *ǩiâpp^CC2C*
* *ǩiâv00*
* *heäpˈpaš^Pen^CCC2C*
* *heäv00aš00*

**Consonant quality change ǥ:j** - used in
* *lääi0ǥ^PAL*
* *lääiʹj0*
čiõʹlj+N+Sg+Nom: **back/selkä**
* *čeâ{ʹØ}lǥ^VOWRaise^PAL*
* *čiõʹlj00*

* *jäämalǥ^Pen^VV2V^RmVow^PALK>ed*
* *jä0m0lj0000>ed*

**Even syllabic verbs I, second consonant loss k:0** - used in
loǥškueʹtted **begin to read**
* *lookk^VV2V^KK2GAllegro»škueʹtted*
* *lo0ǥ000»škueʹtted*
mieʹlǩǩ+N+Sg+Acc: **milk/maito**
* *meâ0lkk^VOWRaise^PALE^PAL^CC2C*
* *mieʹlǩ00000*
* *pååss^VV2V^KK2GAllegro»škuätt*
* *på0z000»škuätt*
taalkâs+N+Sg+Nom
* *ta^1VOWlkkâs^Pen^V2VV^Pen^XYY2XY*
* *taalk0âs0000*

* *jeä{ʹØ}kˈkel^Pen^PALE^Pen^PAL^Pen^KKK2ZERO*
* *jeeʹ000el000000*
nââʹer+N+Sg+Nom sleep
* *nâ^1VOW0kker^Pen^V2VV^Pen^PAL^Pen^KK2ZERO*
* *nââʹ00er000000*

**Even syllabic verbs I, second consonant loss ǩ:0** - used in

eʹǩrded+V+Inf
* *eeʹǩǩerd^Pen^VV2V^Pen^CC2C^RmVow>ed*
* *e0ʹǩ00rd00000>ed*

**Even syllabic verbs I, second consonant loss ǥ:0** - used in

påǥsted+V+Inf
* *pååǥǥast^Pen^VV2V^Pen^CC2C^RmVow>ed*
* *på0ǥ00st00000>ed*

**Even syllabic verbs I, lgg>lǥ**
vueʹlǧǧed+V+Ind+Prs+Sg2
* *vuâ{ʹØ}lgg^XYY2XY>ak*
* *vuâ0lǥ00>ak*

* ★*vuâ{ʹØ}lgg^XYY2XY>ak* (is not standard language)
* ★*vuâ0lg00>ak* (is not standard language)
õlggâd+V+Cond+Sg3
* *õ^1VOW{ʹØ}lgg^V2VV^XYY2XY>či*
* *õõ0lǥ000>či*
* ★*õ^1VOW{ʹØ}lgg^V2VV^XYY2XY>či* (is not standard language)
* ★*õõ0lg000>či* (is not standard language)

* *ǩeâlggal^Pen^XYY2XY*
* *ǩeâlǥ0al00*
* *aaggâst^Pen^VV2V^Pen^CC2C^RmVow>ed*
* *a0g00st00000>ed*

**even syllabic verbs I, 'lgg>'lj** - used in
vueʹlǧǧed+V+Ind+Prt+Pl1
* *vuâ0lgg^VOWRaise^PAL^XYY2XY>im*
* *vuõʹlj0000>im*
* *ä^1VOWi0gg^V2VV^PAL^XYY2XY*
* *ääiʹj0000*
reäiʹǧǧ+N+Pl+Nom
* *reäi0gg^PAL^XYY2XY*
* *reäiʹj000*

## Rules for cleaning up and composing end result

* Strengthening Consonant Cluster
* V shortening and C lengthening
* %^C2CC is generally used in conjunction with a preceding %^VV2V
* In verbs this will be observed in finite forms
* In derivational morphology, e.g. -škuetted, this is not the case

**Orthographic Consonant lengthening Weak to strong %{XC%}:Cx ** - used in
* *čââʹlmtẹ^1VOWm{XC}^C2CC>a*
* *čââʹlmtẹ0mm0>a*
kaađneǩ+N+Sg+Gen 
* *kaađnẹ^1VOW{ʹØ}ǩ{XC}^PALNo^C2CC>a*
* *kaađnẹ00kk00>a*

**Orthographic Consonant lengthening Weak to strong %{XC%}:Cx for n and l** - used in

* *ma^1VOWnn^V2VV^VOWLower^CC2C*
* *mään0000*

* *puärˈr^VOWLower^CCC2C*
* *puär0000*

suâl+N+Sg+Nom **island**
* *suõlˈl^VOWLower^CCC2C*
* *suâl0000*

* *čââʹlmtẹ^1VOWm{XC}^C2CC>a*
* *čââʹlmtẹ0mm0>a*

kååvas+N+Sg+Nom: **kota**
* *kå^1VOWvvas^Pen^V2VV^Pen^CC2C*
* *kååv0as0000*

kõõnjâl+N+Sg+Nom **tear**
* *kõ^1VOWnnjâl^Pen^V2VV^Pen^CC2C*
* *kõõn0jâl0000*

suâl+N+Nom **island/saari**
* *suõlˈl^VOWLower^CCC2C*
* *suâl0000*

ǩeâlǥal+N+Sg+Nom **kilkura**
* *ǩeâlggal^Pen^XYY2XY*
* *ǩeâlǥ0al00*

* *dura^1VOWk{XC}^C2CC>a*
* *dura0kk0>a*
kaađneǩ+N+Sg+Ill:
* *kaađne^1VOWǩ{XC}^PALNo^C2CC>a*
* *kaađne0kk00>a*

čårrõs+N+Sg+Gen
* *čårrõ^1VOWs{XC}^V2VV^K2GG*
* *čårrõõzz00*

lookkmõš+N+Sg+Gen
* ★*lookkmõ^1VOWš{XC}^V2VV^K2GG* (is not standard language)
* ★*lookkmõ0žž00* (is not standard language)

čâustõk+N+Sg+Gen
* *čâustõ^1VOWk{XC}^V2VV^K2GG*
* *čâustõõǥǥ00*

čâustõk+N+Sg+Gen
* *čâustõ^1VOW0k{XC}^V2VV^PAL^K2GG*
* *čâustõõʹjj000*

## CONSONANT QUALITY CHANGE

### Pedagogical X3 length mark after diphthongs in vertical line ˈ

### Adding X3 length mark
**Consonant X3 lengthening after diphthong in vertical line ˈ character** - used in +N+Sg+Ill
**jeäll:jiâlˈlu,**
b c č ǯ d đ g ǧ k ǩ l m n p r s š t v also htˈt nˈnj
* *kuâl0l^CC2CCC>a*
* *kuâlˈl0>a*

* *ǩeä0ssa0st^Pen^CC2CAllegro^RmVow^PALK>ed*
* *ǩeäˈs00ʼst0000>ed*
* *kue0ʹstelm^Pen^Allegro^RmVow>a*
* *kueˈʹst0lm000>a*

**Diphthong extra short marker in vertical line ˈ character** - used in +N+Sg+Ill
**ciâlkâlm:ciâˈlklmest**
ciâlkâlm+N+Pl+Gen:
* *ciâ{ˈ1}lkâlm^Pen^Allegro^RmVow>i*
* *ciâˈlk0lm000>i*

### Removing X3 length mark
**Removing Consonant X3 length mark after diphthong in vertical line ˈ LEFT ARROW** - deriving
b c č ǯ d đ g ǧ k ǩ l m n p r s š t v also htˈt nˈnj
```
```

**Removing Consonant X3 length mark after diphthong in vertical line ˈ LEFT ARROW** - $ Sakssa-jânnam

**Hyphen for splitting between look-alikes** - used in Kääzzkõsraajõstuâjj-joouk

Sakssajânnam+N+Prop+Sg+Nom: (∑) **Germany/Saksa**
* *Sakssa#jânnam*
* *Sakssa#jânnam*
* ★*Sakssa#jânnam* (is not standard language)
* ★*Sakssa-jânnam* (is not standard language)

koummlo-õhtt+Num+Sg+Nom: (∑) **21**
* *koummlo#õhtt*
* *koummlo-õhtt*
* ★*koummlo#õhtt* (is not standard language)
* ★*koummlo#õhtt* (is not standard language)

tuâjj+N+Cmp/SgNom+Cmp#joukk+N+Sg+Nom:  **team/työryhmä**
* *tuâjj#joukk*
* *tuâjj-joukk*
* ★*tuâjj#joukk* (is not standard language)
* ★*tuâjj#joukk* (is not standard language)

sääʹmm+N+Cmp/SgGen+Cmp#musikk+N+Sg+Nom: **Skolt Sámi music/kolttamusiikki**
sää0mm^PAL^CC2C{-Ø}#musikk
sääʹm000-#musikk

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.twolc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/phonology.twolc)</small>

---

# src-fst-morphology-root.lexc.md 



# Skolt Sámi morphological analyser 

This file contains all definitions of symbols written by 
more than one character, and it contains the initial **Root** lexicon. 

# Definitions for **Multichar_Symbols** 
* **+NoTransl** No translation available 

## Grammatical tags 

### Tags for POS 
* **+A** = Adjective 
* **+Adp** = Adposition, i.e. Post- and Prepostion 
* **+Adv** = Adverb 
* **+CC** = Conjunction 
* **+CS** = Subjunction 
* **+Det** = Determiner 
* **+Interj** = Interjection 
* **+N** = Noun 
* **+Num** = Numeral 
* **+Po** = Postposition 
* **+Pr** = Preposition 
* **+Pron** = Pronoun 
* **+Pcle** = Particle 
* **+V** = Verb 
* **+Aux** = Auxiliary 

Pre-derivational POS tags for CG processing 
* **+Ex/N** = Noun stem before derivation 
* **+Ex/Num** = Number stem before derivation 
* **+Ex/A** = Adjective stem before derivation 
* **+Ex/V** = Verb stem before derivation 

### Tags for sub-POS 

* **+Prop** - Proper noun 
* **+Pers** - Personal Pronoun 
* **+Dem** - Demonstrative Pronoun 
* **+Interr** - Interrogative Pronoun 
* **+Refl** - Reflexive Pronoun 
* **+Recipr** - Reciprocal Pronoun 
* **+Rel** - Relative Pronoun 
* **+Indef** - Indefinitive Pronoun 
* **+Coll** - Collective numerals 
* **+Arab** - Arabic numeral 
* **+Rom** - Roman numeral 
* **+Pass** - hallat/haddat not in use 
* **+Qnt** - SHOULD THIS be here or a Sem/Qnt 
* **+Pred** 
* **+Attr** Attributive form 
* **+Distr** Distributive 
* **+Temp** 

### Types of adverbs 
* **+Parenthetic** 
* **+AssocColl** 
* **+Guess** 

### Number 
* **+Sg** Singular = õõutilååkk 
* **+Du** Dual = kuõiʹtilååkk 
* **+Pl** Plural = määŋgailååkk 

### Case 
* **+Nom** Nominative = nominativ 
* **+Gen** Genitive 
* **+Acc** Accusative 
* **+Ill** Illative 
* **+Loc** Locative 
* **+Com** Comitative 
* **+Ess** Essive 
* **+Par** Partative 
* **+Prl** Prolative 
* **+Abe** Abessive 
* **+Lat** Lative lääinas, säämas, toimmpââjas 

symbols ? 
* **+Ine** 
* **+Ela** 

### Possessive suffix 
* **+PxSg1** 
* **+PxSg2** 
* **+PxSg3** 
* **+PxPl1** 
* **+PxPl2** 
* **+PxPl3** 

### Adjective declension 
* **+Der/Comp** comparative as in other Sami languages, depricate +Comp 
* **+Der/Superl** superlative previously Der/mos Der/umus Der/ummus, depricate +Superl 
* **+Ord** - 
* **+GenAttr** Genitive attribute used as adjective? 

### Verb forms      Veʹrbbååʹbleʹǩ 
* **+Actor** 
* **+Actio** 
* **+ActEss** -men  
* **+NomAg** CHECK ME 
* **+Kin** Kin term This may need to be removed, let Sem/Hum-kin suffice 
* **+Ind** Indicative mood 
* **+Prs** Present 
* **+Prt** Preterite 
* **+Pot** Potential mood 
* **+Cond** Conditional mood 
* **+Imprt** Imperative mood 
* **+ImprtII** 
* **+Sup** 
* **+Inf** 
* **+Ger** gerund +Ess, +Loc +Instr 
* **+Instr** -eeʹl 
* **+ConNeg** 
* **+ConNegII** 
* **+Neg** 
* **+PrsPrc** 
* **+PrfPrc** 
* **+VGen** 
* **+VAbess** 

###Valence
* **+IV** Intransitive 
* **+TV** Transitive 
* **+Act** Active voice 
* **+Pass** Passive voice 

### Person-number 
* **+Sg1** first person singular 
* **+Sg2** second person singular 
* **+Sg3** third person singular 
* **+Du1** first person dual 
* **+Du2** second person dual 
* **+Du3** third person dual 
* **+Pl1** first person plural 
* **+Pl2** second person plural 
* **+Pl3** third  person plural 
* **+Sg4** impersonal fourth person, in MT a Pl4 might be needed 
* **+13** used in combination with +Imp+13+ConNeg 
* **+2** used in combination with +Imp+2+ConNeg 

### Homonymy 
* **+Hom1** 
* **+Hom2** 
* **+Hom3** 
* **+Hom4** 

### Derivation 

All non-positional derivations should be preceded by this tag, to make it possible 
to target regular expressions at all derivations in a language-independent way: 
just specify +Der|+Der1 .. +Der5 and you are set. 

* **+Der** 
* **+Der/Ord** Num»A ordinal
* **+Der/Car**  N»A -tem, -teʹmes 
* **+Der/Dimin** diminutive derivation N»N was Der/Dim, 
* **+Der/st**  V»V was diminutive subitive Der/sted, Der/âʹstted 
* **+Der/ad** ordinals to nouns 
* **+Der/i**  N»A luõss >> luõʹssi, čääʹcc >> čäccai 'rich in' Sg.Ill 
* **+Der/PALi** rupp » ruʹppi ATTR ruʹppes DEPRICATE 
* **+Der/teqm** carative derivation N»A, V»A -teʹm 
* **+Der/t** carative derivation N»A for subsequent derivation 
Noun derivation 
* **+Der/musj** deverbal derivation V»N architype mõš and mmuš was Der/MOsh 
* **+Der/vuota** A»N -vuõtt 
* **+Der/lasj**  
* **+Der/neqkh** N»N resident of place 
* **+Der1**  
* **+Der2** 
* **+Der3** 
* **+Der4** 
* **+Der5** 

Verb derivation 
* **+Der/InchL** incoative V»V -škueʹtted 
* **+Der/Caus** causative V»V, was Der/ted and Der/âʹtted 
* **+Der/jed** inchoative V»V also middle 
* **+Der/oottyd** reflexive reciprocal V»V -õõttâd 
* **+Der/oovvyd**  V»V kulsted: kulstõõvvâd 
* **+Der/oollyd**  V»V -õõllâd 
* **+Der/stoollyd**  V»V -stõõllâd 
* **+Der/stoovvyd**  V»V -stõõvvâd 
* **+Der/toovvyd** privative + translative N»V --tõõvvâd 
* **+Der/ched** frequentative V»V for ʹCCed verbs -čed 
* **+Der/NomAg** agent V»N 
* **+Der/NomAct** action V»N +Der/m 

## Tags for originating language 

The following tags are used to guide conversion to IPA: loan words 
and foreign names are usually pronounced (approximately) as in the 
originating (majority) language. Instead of trying to identify the 
correct pronunciation based on phonotactics (orthotactics actually), 
we tag all words that can't be correctly transcribed using the SME 
transcriber with source language codes. Once tagged, it is possible 
to split the lexical transducer in smaller ones according to langu- 
age, and apply different IPA conversion to each of them. 

The principle of tagging is that we only tag to the extent needed, 
and following a priority: 
1. any untagged word is pronounced with SME orthographic conventions 
1. NNO and NOB have identical pronunciation, NNO is only used if 
different in spelling from NOB 
1. SWE has mostly the same pronunciation as NOB, and is only used 
if different in spelling from NOB 
1. Occasionally even SME (the default) may be tagged, to block other 
languages from being specified, mainly during semi-automatic 
language tagging sessions 

All in all, we want to get as much correctly transcribed to IPA 
with as little work as possible. On the other hand, if more words 
are tagged than strictly needed, this should pose no problem as 
long as the IPA conversion is correct - at least some words will 
get the same pronunciation whether read as SME or NOB/NNO/SWE. 

* **+OLang/SME** - North Sámi 
* **+OLang/SMA** - South Sámi 
* **+OLang/SMN** - Inari Sámi 
* **+OLang/SMS** - Skolt Sámi 
* **+OLang/RUS** - Russian 
* **+OLang/FIN** - Finnish 
* **+OLang/SWE** - Swedish 
* **+OLang/NOB** - Norw. bokmål 
* **+OLang/NNO** - Norw. nynorsk 
* **+OLang/ENG** - English 
* **+OLang/UND** - Undefined 
* +OLang/PARA - parallelle navn, navnet skal ikke overføres til andre samisk språk

### Government tags 
* **+%<acc%>** 
* **+%<ess%>** 
* **+%<gen%>** 
* **+%<ill%>** 
* **+%<loc%>** this will be added to the preposition tagging **mâŋŋa jââđast** 
* **+%<nom%>** 

### Semantic tags 

* **+Sem/Act** = Activity 
* **+Sem/Adr** = Webadr 
* **+Sem/Amount** = Amount 
* **+Sem/Ani** Animate       (names) 
* **+Sem/Ani-fish** Animate    
* **+Sem/Aniprod** = Animal Product 
* **+Sem/Ant** Anthroponym  (names) 
* **+Sem/Body** = Bodypart 
* **+Sem/Body-abstr** = siellu, vuoig?a, jierbmi 
* **+Sem/Build** = Building 
* **+Sem/Build-part** = Part of Bulding, like the closet 
* **+Sem/Cat** = Category 
* **+Sem/Clth** = Clothes 
* **+Sem/Clth-jewl** = Jewelery 
* **+Sem/Clth-part** = part of clothes, boallu, sávdnji... 
* **+Sem/Constellation**  
* **+Sem/Ctain** = Container 
* **+Sem/Ctain-abstr** = Abstract container like bank account 
* **+Sem/Ctain-clth** = Soft container, like a rucksack 
* **+Sem/Curr** = Currency like dollár, Not Money 
* **+Sem/Dance** = Dance 
* **+Sem/Date** = Number as date
* **+Sem/Dir** = Direction like GPS-kursa 
* **+Sem/Domain** = Domain like politics, reindeerherding (a system of actions) 
* **+Sem/Drink** = Drink 
* **+Sem/Dummytag** = Dummytag 
* **+Sem/Edu** = Educational event 
* **+Sem/Event** = Event 
* **+Sem/Feat** = Feature, like Árvu 
* **+Sem/Feat-measr** = Psychological feauture 
* **+Sem/Feat-phys** = Physiological feature, ivdni, fárda 
* **+Sem/Feat-psych** = Psychological feauture 
* **+Sem/Fem** = Female name 
* **+Sem/Food** = Food 
* **+Sem/Food-med** = Medicine 
* **+Sem/Furn** = Furniture 
* **+Sem/Game** = Game 
* **+Sem/Geom** = Geometrical object 
* **+Sem/Group** = Animal or Human Group 
* **+Sem/Holiday** 
* **+Sem/Hum** = Human 
* **+Sem/Hum-abstr** = Human abstract 
* **+Sem/ID** = number as identity tag, not as amount
* **+Sem/Ideol** = Ideology 
* **+Sem/Kin** for deprication to Sem/Hum-kin 
* **+Sem/Hum-kin** = 
* **+Sem/Lang** = Language 
* **+Sem/Mal** = Male name 
* **+Sem/Manner** 
* **+Sem/Mat** = Material for producing things 
* **+Sem/Measr** = Measure 
* **+Sem/Money** = Has to do with money, like wages, not Curr(ency) 
* **+Sem/Obj**              (names) 
* **+Sem/Obj-clo** = Cloth 
* **+Sem/Obj-cogn** = Cloth 
* **+Sem/Obj-el** = (Electrical) machine or apparatus 
* **+Sem/Obj-ling** = Object with something written on it 
* **+Sem/Obj-rope** = flexible ropelike object 
* **+Sem/Obj-surfc** = Surface object 
* **+Sem/Org** Organization (names) 
* **+Sem/Part** = Feature, oassi, bealli 
* **+Sem/Perc-cogn** = Cloth 
* **+Sem/Perc-emo** = Emotional perception 
* **+Sem/Perc-phys** = Physical perception 
* **+Sem/Perc-psych** = Psychical perception 
* **+Sem/Plant** = Plant 
* **+Sem/Plant-part** = Plant part 
* **+Sem/Plc** Place name   (names) 
* **+Sem/Plc-abstr** = Abstract place 
* **+Sem/Plc-elevate** = Place 
* **+Sem/Plc-line** = Place 
* **+Sem/Plc-water** = Place 
* **+Sem/Pos** = Position (as in social position job) 
* **+Sem/Process** = Process 
* **+Sem/Prod** = Product 
* **+Sem/Prod-audio** = Audio product 
* **+Sem/Prod-cogn** = Cognition product 
* **+Sem/Prod-ling** = Linguistic product 
* **+Sem/Prod-vis** = Visual product 
* **+Sem/Rel** = Relation 
* **+Sem/Route** = Route 
* **+Sem/Rule** = Rule or convention 
* **+Sem/Semcon** = Semantic concept 
* **+Sem/Sign** = Sign (e.g. numbers, punctuation) 
* **+Sem/Sport** = Sport 
* **+Sem/State** = 
* **+Sem/State-sick** = Illness 
* **+Sem/Substnc** = Substance, like Air and Water 
* **+Sem/Sur** Surname       (names) 
* **+Sem/Symbol** = Symbol 
* **+Sem/Time** = Time 
* **+Sem/Time-clock** = Time 
* **+Sem/Tool** = Prototypical tool for repairing things 
* **+Sem/Tool-catch** = Tool used for catching (e.g. fish) 
* **+Sem/Tool-clean** = Tool used for cleaning 
* **+Sem/Tool-it** = Tool used in IT 
* **+Sem/Tool-measr** = Tool used for measuring 
* **+Sem/Tool-music** = Music instrument 
* **+Sem/Tool-write** = Writing tool 
* **+Sem/Txt** = Text (girji, lávlla...) 
* **+Sem/Veh** = Vehicle 
* **+Sem/Wpn** = Weapon 
* **+Sem/Wthr** = The Weather or the state of ground 
* **+Sem/Year** = Year

### Multiple Semantic tags: 
* **+Sem/Act_Fruit** 
* **+Sem/Act_Group** Activity and Group 
* **+Sem/Act_Plc**   A persons job is an activity, and a place as well 
* **+Sem/Act_Route** Activity and Route, ie johtolat 
* **+Sem/Amount_Build**   Amount and Building 
* **+Sem/Amount_Semcon** 
* **+Sem/Ani_Body-abstr_Hum** 
* **+Sem/Ani_Build** 
* **+Sem/Ani_Build-part** 
* **+Sem/Ani_Build_Hum_Txt** 
* **+Sem/Ani_Group** 
* **+Sem/Ani_Group_Hum** 
* **+Sem/Ani_Group_Prod-vis** 
* **+Sem/Ani_Hum** 
* **+Sem/Ani_Hum_Plc** 
* **+Sem/Ani_Hum_Time** 
* **+Sem/Ani_Plc** 
* **+Sem/Ani_Plc_Txt** 
* **+Sem/Ani_Time** 
* **+Sem/Ani_Veh** 
* **+Sem/Aniprod_Hum** 
* **+Sem/Aniprod_Obj-clo** 
* **+Sem/Aniprod_Perc-phys** 
* **+Sem/Aniprod_Plc** 
* **+Sem/Aniprod_Plc_Route** 
* **+Sem/Body-abstr_Feat-cogn** 
* **+Sem/Body-abstr_Prod-audio_Semcon** 
* **+Sem/Body_Body-abstr** 
* **+Sem/Body_Clth** 
* **+Sem/Body_Food** 
* **+Sem/Body_Group_Hum** 
* **+Sem/Body_Group_Hum_Time** 
* **+Sem/Body_Hum** 
* **+Sem/Body_Mat** 
* **+Sem/Body_Measr** 
* **+Sem/Body_Obj_Tool-catch** 
* **+Sem/Body_Plc** 
* **+Sem/Body_Plc-elevate** 
* **+Sem/Body_Time** 
* **+Sem/Build-part_Cat** 
* **+Sem/Build-part_Cat_Ctain** 
* **+Sem/Build-part_Cat_Ctain_Mat** 
* **+Sem/Build-part_Ctain** 
* **+Sem/Build-part_Ctain_Mat** 
* **+Sem/Build-part_Ctain_Obj** 
* **+Sem/Build-part_Plc** 
* **+Sem/Build_Build-part** 
* **+Sem/Build_Clth-part** 
* **+Sem/Build_Edu_Org** 
* **+Sem/Build_Event_Org** 
* **+Sem/Build_Obj** 
* **+Sem/Build_Org** 
* **+Sem/Build_Route** 
* **+Sem/Cat_Group_Hum** 
* **+Sem/Cat_Group_Hum_Plc** 
* **+Sem/Clth-jewl_Curr** 
* **+Sem/Clth-jewl_Curr_Obj** 
* **+Sem/Clth-jewl_Curr_Obj_Org** 
* **+Sem/Clth-jewl_Fruit** 
* **+Sem/Clth-jewl_Money** 
* **+Sem/Clth-jewl_Org** 
* **+Sem/Clth-jewl_Plant** 
* **+Sem/Clth_Hum** 
* **+Sem/Clth_Obj-clo** 
* **+Sem/Ctain-abstr_Org** 
* **+Sem/Ctain-clth_Plant** 
* **+Sem/Ctain-clth_Veh** 
* **+Sem/Ctain_Feat-phys** 
* **+Sem/Ctain_Furn** 
* **+Sem/Ctain_Plc** 
* **+Sem/Ctain_Tool** 
* **+Sem/Ctain_Tool-measr** 
* **+Sem/Curr_Org** 
* **+Sem/Dance_Org** 
* **+Sem/Dance_Prod-audio** 
* **+Sem/Domain_Food-med** 
* **+Sem/Domain_Hum** 
* **+Sem/Domain_Prod-audio** 
* **+Sem/Drink_Plant** 
* **+Sem/Edu_Event** 
* **+Sem/Edu_Geom** 
* **+Sem/Edu_Group_Hum** 
* **+Sem/Edu_Hum** 
* **+Sem/Edu_Mat** 
* **+Sem/Edu_Org** 
* **+Sem/Event_Food** 
* **+Sem/Event_Hum** 
* **+Sem/Event_Plc** 
* **+Sem/Event_Plc-elevate** 
* **+Sem/Event_Time** 
* **+Sem/Feat-measr_Plc** 
* **+Sem/Feat-phys_Tool-write** 
* **+Sem/Feat-phys_Veh** 
* **+Sem/Feat-phys_Wthr** 
* **+Sem/Feat-psych_Hum** 
* **+Sem/Feat-psych_Plc** 
* **+Sem/Feat_Plant** 
* **+Sem/Food_Obj-surfc** 
* **+Sem/Food_Perc-phys** 
* **+Sem/Food_Plant** 
* **+Sem/Fruit_Hum** 
* **+Sem/Game_Obj-play** 
* **+Sem/Geom_Hum_Plc** 
* **+Sem/Geom_Obj** 
* **+Sem/Group_Hum** 
* **+Sem/Group_Hum_Org** 
* **+Sem/Group_Hum_Plc** 
* **+Sem/Group_Hum_Prod-vis** 
* **+Sem/Group_Org** 
* **+Sem/Group_Prod-vis** 
* **+Sem/Group_Sign** 
* **+Sem/Group_Txt** 
* **+Sem/Hum_Lang** 
* **+Sem/Hum_Lang_Plc** 
* **+Sem/Hum_Lang_Time** 
* **+Sem/Hum_Mat_Tool** 
* **+Sem/Hum_Obj** 
* **+Sem/Hum_Org** 
* **+Sem/Hum_Plant** 
* **+Sem/Hum_Plc** 
* **+Sem/Hum_Sign** 
* **+Sem/Hum_Tool** 
* **+Sem/Hum_Tool-it** = Human 
* **+Sem/Hum_Veh** 
* **+Sem/Hum_Wthr** 
* **+Sem/Lang_Tool** 
* **+Sem/Mat_Plant** 
* **+Sem/Mat_Txt** 
* **+Sem/Measr_Sign** = Sign (e.g. numbers, punctuation) 
* **+Sem/Measr_Time** 
* **+Sem/Money_Obj** 
* **+Sem/Money_Part** 
* **+Sem/Money_Txt** 
* **+Sem/Obj-ling_Obj-surfc** 
* **+Sem/Obj-play** 
* **+Sem/Obj-play_Sport** 
* **+Sem/Obj_Semcon** 
* **+Sem/Obj_Sign** 
* **+Sem/Obj_State** 
* **+Sem/Obj_Symbol** 
* **+Sem/Obj_Veh** 
* **+Sem/Oeuvre** (not used so far (?)), note oeu- 
* **+Sem/Oeuvre-txt** (so far only Biblija, changed to Sem/Txt) 
* **+Sem/Org_Prod-audio** 
* **+Sem/Org_Prod-cogn** 
* **+Sem/Org_Prod-vis** 
* **+Sem/Org_Rule** 
* **+Sem/Org_Txt** 
* **+Sem/Org_Veh** 
* **+Sem/Part_Prod-cogn** 
* **+Sem/Part_Substnc** 
* **+Sem/Perc-emo_Wthr** 
* **+Sem/Plant_Plant-part** 
* **+Sem/Plant_Tool** 
* **+Sem/Plant_Tool-measr** 
* **+Sem/Plc-abstr_Rel_State** 
* **+Sem/Plc-abstr_Route** 
* **+Sem/Plc_Pos** 
* **+Sem/Plc_Route** 
* **+Sem/Plc_State** 
* **+Sem/Plc_Substnc** 
* **+Sem/Plc_Substnc_Wthr** 
* **+Sem/Plc_Time** 
* **+Sem/Plc_Time_Wthr** 
* **+Sem/Plc_Tool-catch** 
* **+Sem/Plc_Wthr** 
* **+Sem/Prod-audio_Txt** 
* **+Sem/Prod-cogn_Txt** 
* **+Sem/Semcon_Txt** 
* **+Sem/State-sick_Substnc** 
* **+Sem/Substnc_Wthr** 
* **+Sem/Time_Wthr** 

### Clitic 
* **+Clt** 
* **+Qst** Question particle -a 
* **+Qst/a** Question particle -a 
* **+Qst/ko** Question particle -ko might be used with Use/NG  
* **+Qst/ǥo** 
* **+Qst/go** 
* **+Foc/AA** more specifically, exactly, contrast. used with Pron and Adv 
* **+Foc/o** 
* **+Foc/i** This might be used with 
* **+Foc/han** This might be used with Use/NG 
* **+Foc/ka** This might be used with Use/NG ij-ka 
* **+Foc/kahan** 
* **+Foc/ǥa** 
* **+Foc/ga** 
* **+Foc/ki** This might be used with Use/NG 
* **+Foc/son** 
* **+Foc/jõs** 
* **+Foc/õs** 
* **+Foc/ǥõs** 
* **+Foc/mes** 
* **+Foc/ba** 
* **+Foc/âs** 
* **+Foc/ât** 
* **+Foc/tâma** 
* **+Foc/tõt** 
* **+Foc/šât** 

### Tags distinguishing different versions of the same lemma (before POS) 
In the xml the varid attribute is used in the st element with a mere numeric value 
an extra lemma attribute is inserted in the st element, e.g. lemma="tõlvvad" 
* **+v1** 
* **+v2** 
* **+v3** 
* **+v4** 
* **+v5** 
* **+v6** 
* **+v7** 
* **+v8** 
* **+v9** 
* **+v10** 
* **+v11** 
* **+v12** 
* **+v13** 
* **+v14** 
* **+v15** 
* **+v16** 
* **+v17** 
* **+v18** 
* **+v19** 
* **+v20** 
* **+v21** 
* **+v22** 
* **+v23** 
* **+v24** 

### Other tags 

* **+ABBR** = Abbreviation 
* **+ACR** = Acronym 
* **+Symbol** = independent symbols in the text stream, like £, €, © 
* **+CLB** = Clause border (full stop, comma..) 
* **+CLBfinal** = Sentence final abbreviated expression ending in full stop, the full stop is ambiguous
* **+PUNCT** = punctuation 
* **+LEFT** = left paranthesis 
* **+RIGHT** = right paranthesis 
* **+Prefix** = prefix 
* **+Dyn** = Dynamically generated (acronyms) 
* **^GUESSNOUNROOT** 

### Punctuation 
* **+HYPH** 

## Letters 

### Skolt Saami letters 
These definitions are probably not needed 
* **č** 
* **đ** 
* **š** 
* **ŧ** 
* **ž** 
* **Ʒ** 
* **ǥ** 
* **ǧ** 
* **ǩ** 
* **Ǯ** 
* **ǯ** 
* **Ǥ** 

### Archiphonemes 

These are for letters with special behaviour. 
Say that all m-s change to n in a given context, 
but not this m, because it is m2. 
In twolc these are then defined m2:m, etc, i.e. 
the m2 is an m, although it is a different m. 

## Diacritic marks 
These symbol govern the way the morphophonological rules treat the affix string. 

This project started out using arbitrary names, X1, X2..., but since they were 
hard to remember, we changed to (a bit) more transparent names (^DIADEL, ...). 
On the TODO-list: Change all X1, X2, ... to easy-to-remember names. 
Special iterations 

* **%^a2 %^ä2 %^å2 %^â2 %^e2 %^ẹ2 %^o2 %^õ2 %^i2 %^u2** 
* **%^b2 %^c2 %^č2 %^ʒ2 %^ǯ2 %^d2 %^đ2 %^f2 %^ǧ2 %^h2 %^j2** 
* **%^ǩ2 %^l2 %^m2 %^n2 %^p2 %^r2 %^s2 %^š2 %^t2 %^v2 %^z2** 
* **%^ž2** 

## Consonant lengthening 
* **%{XC%}** 

## Vowel length and height 
* **%{õuØ%}** 
* **%{ouØ%}** 
* **%{âõØ%}** 
* **%{ẹiØ%}** 
* **%{äaØ%}** 
* **%{äåØ%}** 
* **%{eiØ%}** 
* **%{åoØ%}** 
* **%{ẹeiØ%}** 

for vowel height, by default vowels are low. 
* **%{õu%}** 
* **%{ou%}** 
* **%{âõ%}** 
* **%{ẹi%}** 
* **%{äa%}** 
* **%{äå%}** 
* **%{ei%}** 
* **%{åo%}** 
* **%{ẹei%}** 
* **%{âõe%}** 
* **%{âõäe%}** 

CHARACTERISTIC BREAKDOWN 2015-02-17 
* __%^Allegro__ - Allegro in general shortens consonant and preceding vowel
* **%^VV2V** Shortens vowel 
* **%^V2VV** Lengthens vowel 
* **%^CC2C** Shortens consonant 
* **%^CC2CAllegro** Shortens consonant 
* **%^C2CC** Lengthens consonant 
* **%^CC2CCC** Strong to Extra Strong consonant 
* **%^CCC2C** Extra Strong to Weak consonant 
* **%^CCC2CAllegro** Extra Strong to Weak consonant 
* **%^CCC2CC** Extra Strong to Strong consonant 
* **%^XYY2XY** Shortens consonant cluster 
* **%^XYY2VY** Consonant cluster to vowel and consonant sijdd:siid 
* **%^XYY2VYY** Consonant cluster to vowel and geminate uvdd:ouʹdd 
* **%^XYY2IY** Consonant cluster to i  and consonant kueʹhtt:kueiʹt 
* **%^VY2XYY** Consonant cluster i/u to j/v 
* **%^VYY2XYY** Consonant cluster i/u to j/v 
* **%^KKK2GG** Geminate weakening 
* **%^KKK2G** Strong Geminate allegro 
* **%^KK2GG** Geminate weakening     jokk:jooǥǥ 
* **%^K2GG** Geminate weakening čårrõs:čårrõõzz 
* **%^KK2GAllegro** Geminate weakening    in allegro pååss:påz 
* **%^K2GAllegro** Geminate weakening    in allegro čâustõk 
* **%^APen** for combinations 2015-10-04 Jack 
* **%^Pen** for combinations 2015-09-28 Miikka 
* **%^KK2ZERO** Geminate weakening nââʹer 
* **%^J2I** in tuâjj:tuâi 
* **%^I2J** in agent names 
* **%^I2Zero** in agent names 
* **%{ʹØ%}** Modifier Letter prime 
* **%{ʼØ%}** used between l, n, j and subsequent j and elsewhere 
* **%{ˈ1%}** This is modifier letter verticle line after diphthongs 

## Gradation triggers 2015.01.23 
* **%^XSt2St** Causes weakening from extra strong to strong 
* **%^XSt2W** Causes weakening from extra strong to weak 
* **%^St2W** Causes weakening from strong to weak 
* **%^W2St** Causes strengthening from weak to strong 
* **%^W2XSt** Causes strengthening from weak to extra strong 
* **%^St2XSt** Causes strengthening from strong to extra strong 

Gradation triggers 2015.02.09 For   Consonant Clusters 
* **%^XSt2StCluster** Causes weakening from extra strong to strong in clusters 
* **%^St2XStCluster** Causes strengthening from strong to extra strong in clusters 

### Diacritic with mnemonic names 

<!-- {% raw %} -->
* **%^1VOW** vowel position and length 
* **%^2VOW** 
* **%^3VOW** 
* **%^4VOW** 
* **%^5VOW** 
* **%^CLong** 
* **%^CShort** 
* **%^CXLong** 
* **%^DIADEL** deleting diacritic 
* **%^DIAINS** inserting diacritic 
* **%^FRICG** for causing fricative ǥ vueʹlǧǧed+V+Imp+Pl3: vuâlǥǥaz 
* **%^IMPSG2** 
* **%^INDPRSSG3** 
* **%^PenVow2a** Changes penultimate vowel to a; e:a â:a 
* **%^P3** ... means what? 
* **%^PAL** for placing palatalization mark **ʹ** 
* **%^PALK** causes k:ǩ and g:ǧ 
* **%^PALNo** This is to facilitate +Sg+Nom lemma:stem equivalence; it removes palatal supersegmental 
* **%^PALI** Palatalisation causes â:i, etc. 
* **%^PALE** Palatalisation causes â:e, etc. 
* **%^PALÄ** Palatalisation causes â:ä, etc. 
* **%^PALẸ** Palatalisation causes å:ẹ suẹjj BUT suejjin (cf. 2012: 150, but ) 
* **%^PALÂ** Depalatalisation causes 0:â keâmnna 
* **%^PALÕ** Depalatalisation causes â:õ tiõttum 
* **%^RmVow** for removing vowels e, â, a before final consonant in stem 
* **%^UltRmVow** for removing vowels e, â, a after final consonant in stem 
* **%^RmCns** for removing stem final consonant, e.g. final z in ǩeeʹstes:ǩeâsttez ǩeâstta 
* **%^VC** Voicing s:z š:ž 
* **%^VOWLower** for lowering i>e, õ>â, â>ä, u>o, o>å 
* **%^U2Õ** lowers u>õ    
* **%^VOWRaise** for raising e>i, ä>e 
* **%^VOWL** for lengthening BEING PHASED OUT 
* **%^VOWXSH** for extra shortening 
* **%^VOWXL** for extralengthening 
* **%^Â** Indicates placement of â in stem 
* **%{VU%}** used with stuuʹl 
* **%{A1%}** used with vuejted 
* **%{E1%}** used with kåʹmrded 
* **%{Â1%}** used with mainsted 
* **%{Â1%}** archiform for MODIFIER LETTER ACUTE ACCENT used in stems where the lemma does not contain a MODIFIER LETTER ACUTE ACCENT and yet the paradigm requires one. 
* **%{EÂ%}** archiform for ie:eä variation, e.g. pieʹǩǩ+N+Sg+Ill:peâkka 

Hyphen at compound word boundary 
* **%{EÂ%}** - Zero versus hyphen in compounding 
* **%^Hyphen** - at compound word boundary with %- 
* **%^NoHyphen** - at compound word boundary 
<!-- {% endraw %} -->

## Escaped symbols 

Symbols that need to be escaped on the lower side (towards twolc): 
* » 
* « 
* > 
* < 

The Usage extents are marked using following tags: 

* **+Err/Orth**  substandard, not in normative fst 
* **+Err/Orth-not-apos-but-hyph**  substandard, old orth look-alikes are separated by a hyphen
* **+Err/Orth-missing-apos**  substandard, missing apostrophe
* **+Err/Orth-k-kh** substandard k, not in normative fst ǩ(, should be  kuõccjiǩ and not kuõccjik)
* **+Err/Orth-a-y** substandard a, not in normative fst â
* **+Err/Orth-o-uq** substandard o, not in normative fst uʹ (e.g. illative kuʹmppe and not komppa)
* **+Err/Orth-no-q** substandard missing ʹ as in mâiʹd-ne (->) mâid-ne
* **+Err/Orth-should-be-grade-minus1** substandard raajeeʹl (->) raajjeeʹl
* **+Err/Lex** substandard, not in normative fst, no normative lemma 
* **+Err/DerSub** substandard for derivation, not in normative fst, no normative lemma 
* **+Err/CmpSub** substandard for compounding, not in normative fst (wrong form or POS in first part) 
* **+Err/MissingHyph** substandard for compounding, not in normative fst (needs hyph) 
* **+Err/Hyph** substandard for compounding, not in normative fst (should have no hyphen) 
* **+Err/SpaceCmp** used for compounds written apart - only retained in the HFST Grammar Checker disambiguation analyser 
* **+Err/Spellrelax** used to tag spellrelaxed typos (tag is inserted via flag diacritics) 
* **+Err/GenreLeudd** 
* **+Err/Orth-nom-acc** 
* **+Err/Orth-nom-gen** 
|  **+Err/MissingSpace** | in use ins smi lexc 

* **+Use/Marg** marginal (?) 
* **+Use/-Spell** Excluded in speller 
* **+Use/SpellNoSugg** recognized but not suggested in speller 
* **+Use/Circ** circular paths (old ^C^) 
* **+Use/CircN** circular paths for the numerals (old ^N^) 
* **+Use/NG** not-generate, for ped generation isme-ped.fst 
* **+Use/NGminip** not-generate, for ped generation isme-ped.fst 
* **+Use/Ped** for use with pedagogical work 
* **+Largo** largo variant instead of allegro saaǥǥstõõllâd vs saǥstõõllâd 
* **+Allegro** never last element of compound words 
* **+MWE** never last element of compound words 
* **+Use/GC** – **only** retained in the HFST Grammar Checker disambiguation analyser
* **+Use/-GC** – **never** retained in the HFST Grammar Checker disambiguation analyser
* **+Use/TTS** – **only** retained in the HFST Text-To-Speech disambiguation tokeniser
* **+Use/-TTS** – **never** retained in the HFST Text-To-Speech disambiguation tokeniser

### Dialect tags: 

* **+Dial/P** Paatsjoki (KKS) 
* **+Dial/Pets** Petsamo 
* **+Dial/N** Nuortjärvi (KKS) 
* **+Dial/S** Suonikylä (KKS) 

* **+South**  
* **+Txt**  

Compounding 

* **+Cmp** 
* **+CmpNP/First** 
* **+CmpNP/Pref** 
* **+CmpNP/None** 
* **+CmpN/PlG** 
* **+CmpN/SgG** 
* **+CmpN/SgN** 

* **+Cmp** - Dynamic compound. This tag should always be part 
           of a dynamic compound. It is important for 
           Apertium, and useful in other cases as well. 
* **+Cmp/Attr** - Attributive 
* **+Cmp/SgNom** - Singular Nominative 
* **+Cmp/SgGen** - Singular Genitive 
* **+Cmp/PlGen** - Plural Genitiv 
* **+Cmp/SplitR** - This is a split compound with the other part to 
           the right: "Arbeids- og inkluderingsdepartementet" 
           => Arbeids- = +Cmp/SplitR 
* **+Cmp/SplitL** - This is a split compound with the other part to the left 
* **+Cmp/Sh** - testing +Cmp/Sh 
* **+Cmp/Hyph** - on dynamic compounds that have a hyphen 
* **+Cmp/NoHyph** - On compounds that COULD have had a hyphen (and usually have), but doesn't 
* **+Cmp/SoftHyph** - Tags compounds containing SOFT HYPHENS (U+00AD) 
* **+Cmp/Cit** - Tags citation compounds, which can in principle    cover any word. Requires a hyphen. 
* **+Use/PMatch** - 
* **+Use/-PMatch** - 

## Flag diacritics 

| Flag | Explanation 
| --- | ---
* **@P.AssocColl.ON@** Used with Kin terms and Ant 
* **@R.AssocColl.ON@** 
* **@C.AssocColl@** 

We have manually optimised the structure of our lexicon using following 
flag diacritics to restrict morhpological combinatorics - only allow compounds 
with verbs if the verb is further derived into a noun again: 

| Flag | Explanation 
| --- | --- 
|  **@P.NeedNoun.ON@** | (Dis)allow compounds with verbs unless nominalised 
|  **@D.NeedNoun.ON@** | (Dis)allow compounds with verbs unless nominalised 
|  **@C.NeedNoun@** | (Dis)allow compounds with verbs unless nominalised 

For languages that allow compounding, the following flag diacritics are needed 
to control position-based compounding restrictions for nominals. Their use is 
handled automatically if combined with +CmpN/xxx tags. If not used, they will 
do no harm. 

| Flag | Explanation 
| --- | --- 
|  **@P.CmpFrst.FALSE@** | Require that words tagged as such only appear first 
|  **@D.CmpPref.TRUE@** | Block such words from entering ENDLEX 
|  **@P.CmpPref.FALSE@** | Block these words from making further compounds 
|  **@D.CmpLast.TRUE@** | Block such words from entering R 
|  **@D.CmpNone.TRUE@** | Combines with the next tag to prohibit compounding 
|  **@U.CmpNone.FALSE@** | Combines with the prev tag to prohibit compounding 
|  **@P.CmpOnly.TRUE@** | Sets a flag to indicate that the word has passed R 
|  **@D.CmpOnly.FALSE@** | Disallow words coming directly from root. 

Use the following flag diacritics to control downcasing of derived proper 
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use 
these flags. There exists a ready-made regex that will do the actual down-casing 
given the proper use of these flags. 

| Flag | Explanation 
| --- | --- 
|  **@U.Cap.Obl@** | Allowing downcasing of derived names: deatnulasj. 
|  **@U.Cap.Opt@** | Allowing downcasing of derived names: deatnulasj. 
|  **@C.ErrOrth@** | tbw
|  **@R.ErrOrth.ON@** | tbw
|  **@D.ErrOrth.ON@** | tbw
|  **@P.ErrOrth.ON@** | tbw
|  **@P.Pmatch.Backtrack@** | tbw

* **@U.NUMORTH.YES@**
* **@N.NUMORTH.YES@**
* **@D.NUMORTH.YES@**

# Basic lexica, pointing to the other lexicon files 

* **LEXICON Root** 
* **Abbreviation ;** abbreviations 
* **Adposition ;** 
* **@U.Cap.Obl@ ProperNoun ;** 
* **@U.Cap.Opt@ ProperNoun ;** 

* **Subjunction ;** 
* **Conjunction ;** 
* **Interjection ;** 
* **Pronoun ;** 
* **Punctuation ;** 
* **Symbols ;** 
* **Particle ;** 
This generates from merged materials 
* **A_sms2x ;** This generates from merged materials 
* **TRAB_sms2x ;** transitive abbreviations 
* **TRNUMAB_sms2x ;** transitive abbreviations with numerals 
* **Adp_sms2x ;** adpositions 
* **Adv_sms2x ;** adverbs 
* **CC_sms2x ;** conjunctions 
* **CS_sms2x ;** subjunctions 
* **Det_sms2x ;** determiners 
* **Interj_sms2x ;** This generates from merged materials 
* **@P.AssocColl.ON@ N_Kin_sms2x ;** This generates from merged materials 
* **N_sms2x ;** This generates from merged materials 
* **+Cmp/SplitL+Use/SpellNoSugg#:%-# N_sms2x ;** This allows split compound nouns 
* **@P.AssocColl.ON@ N_Prop_sms2x ;** This generates from merged materials 
* **@U.Cap.Obl@ N_Prop_Toponyms_sms2x ;** Toponymy 
* **@U.Cap.Opt@ N_Prop_Toponyms_sms2x ;** Toponymy 
* **Num_sms2x ;** This generates from merged materials 
* **Pcle_sms2x ;** This generates from merged materials 
* **Prefix_sms2x ;** This generates from merged materials 
* **Pron_sms2x ;** This generates from merged materials 
* **V_sms2x ;** This generates from merged materials 

* **Numeral ;** This feeds Arabi numerals, borrowed from sme 

* **A_NEWWORDS ;** These are new adjectives beginning 2015-02-11 
* **ADP_NEWWORDS ;** These are new adpositions 
* **ADV_NEWWORDS ;** These are new adverbs 
* **CC_NEWWORDS ;** These are new conjunctions 
* **N_NEWWORDS ;** These are new nouns beginning 2015-01-10 
* **PCLE_NEWWORDS ;** These are particles 
* **PRON_NEWWORDS ;** These are pronouns 
* **@U.Cap.Obl@ PROP_NEWWORDS ;** These are new proper nouns beginning 2015-03-04 
* **@U.Cap.Opt@ PROP_NEWWORDS ;** These are new proper nouns beginning 2015-03-04 
* **@U.Cap.Obl@ TOPONYMS_NEWWORDS ;** 2016-02-06 
* **@U.Cap.Opt@ TOPONYMS_NEWWORDS ;** 2016-02-06 
* **V_NEWWORDS ;** These are new verbs 
* **ProperNoun-smi ;** work with smi 2018-08-23 

INCOMING _lemma:stem Contlex_ sets to be distinguished from glossing in progress 

NounRoot 

VerbRoot 

INTERJ_ 
Interjections 

* Postposition ; is still not included 
* Preposition ;  is still not included 

CONJUNCTIONS 
INTERJ_ 

CS_ Subjunction 

CS-TEMP_ 
**when** 

NUM_ 
NUM_VAHTT 

NUM_ALGG 
NUM_AUTT 
NUM_TOLL 
NUM_PAPP 
NUM_AELDD 
NUM_KUEQLL 
NUM_TAQHTT 
NUM_KAEAEUQC 
* **LEXICON NUM_KUEQHTT** kueʹhtt:kuâhtt 
NUM_KUEQHTT 
NUM_NELLJ 

NUM_AANAR 

NUM_ATOM 
NUM_JEAQNNN 

* **LEXICON NUM_LO** kuttlo:kuttl 
NUM_LO
* **LEXICON NUM-01_LO** kuttlo:kuttl 
NUM-01_LO 
* **+Der+Der/Ord+A:ååǥǥ A-ORD_NEELLJAD ;** This ordinal derivation 
* **LEXICON NUM_LOAOAI** lååi:l  THIS looks like allegro 
NUM_LOAOAI 

* **LEXICON NUM-01_LOAOAI** lååi:l  THIS looks like allegro 
NUM-01_LOAOAI 

PCLE_ is here since Pcle_sms2x.xml wants it. It does nothing.
PCLE-NEG_  is here since Pcle_sms2x.xml wants it. It adds +Neg.

Postpositions with government tagging possible 
ADP_ 
PO_tag is the lexicon adding the tag +Po
PO-ILL_ 
PO-LOC_ 
PO_ is a dummy lexicon not adding anything
ADP-GOV-LOC_ 
PO-GOV-GEN_ 

Prepositions with government tagging possible 

PR_tag is the lexicon adding the tag +Pr 
PR_ is a dummy lexicon not adding anything

PR-TEMP-GOV-LOC_ 

PREFIX/A_ 

SUF/A_ 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/root.lexc)</small>

---

# src-fst-morphology-stems-abbreviations.lexc.md 


# File containing abbreviations 

## Lexica for adding tags and periods

Splitting in 4 + 1  groups, because of the preprocessor

* **LEXICON Abbreviation   **
1. The ITRAB ;	    lexicon (intransitive abbrs) Ltd.
1. The TRNUMAB ;   lexicon (abbrs trans wrt. numerals)
1. The TRAB ;	    lexicon (transitive abbrs) tri. 
1. The SYMBOLS ;   lexicon (misc. symbols)

## The sublexica

### Dividing between abbreviations with and witout final period

ABBREVIATIONS 
these still need development 2015-09-11

* **LEXICON ab-noun   **

### The lexicons that add tags

* **LEXICON ab-nodot-noun   **  The bulk

+Adv+ABBR: RHyph ;

* **LEXICON ab-dot-noun   **  This is the lexicon for abbrs that must have a period.

+ABBR:%.%> # ;

* **LEXICON SYMBOLconnector   **

* **LEXICON SYMBOLsuff   **

## The abbreviation lexicon itself

* **LEXICON SYMBOLS   ** is for iscellaneous abbr symbols

* **LEXICON ITRAB   ** are intransitive abbreviations, A.S. etc.

*  ITRAB_sms2x ;         intransitive abbreviations
These are measurements postposed after numerals
*  TRNUMABPO_sms2x ;         postpositional transitive abbreviations with numerals preceding
*  TRABPO_sms2x ;         postpositional transitive abbreviations

This class contains homonyms, which are both intransitive
abbreviations and normal words. The abbreviation usage
is less common and thus only the occurences in the middle of
the sentnece (when next word has small letters) can be 
considered as true cases.

* **LEXICON TRNUMAB   ** contains abbreviations who are transitive in front of numerals, i.e. preposed

For abbrs for which numerals are complements, but other
words not necessarily are. This group treats arabic numerals as
if it were transitive but letters as if it were intransitive.

* ** TRNUMAB_sms2x ; ** contains abbreviations in xml preposed

* **LEXICON TRAB   ** contains preposed transitive abbreviations 

This lexicon is for abbrs that always have a constituent following it.

* ** TRAB_sms2x ; ** contains preposed transitive abbreviations xml

This class contains homonyms, which are both abbrs for 
which numerals are complements and normal words. The abbreviation usage
is less common and thus only the occurences in the middle of
the sentnece can be considered as true cases.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/abbreviations.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/abbreviations.lexc)</small>

---

# src-fst-morphology-stems-adjectives_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the xml source files.
slooman:slooman A_AANAR ;

ADD ADJECTIVES BELOW

Not added yet to wiki

2017-09-

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adjectives_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/adjectives_newwords.lexc)</small>

---

# src-fst-morphology-stems-adpositions_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the xml source files.
Mättʼtõshalltõs:Mättʼtõshalltõs PROP_SAJOS "(eng) /(fin) /(rus) " ;

ADD POSTPOSTIONS AND PREPOSITIONS BELOW

CODED BY EINO AND JASKA

POSTPOSITIONS

PREPOSITIONS

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adpositions_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/adpositions_newwords.lexc)</small>

---

# src-fst-morphology-stems-adverbs_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the xml source files.
Mättʼtõshalltõs:Mättʼtõshalltõs PROP_SAJOS "(eng) /(fin) /(rus) " ;

ADD ADVERBS BELOW

CODED BY EINO AND JASKA

perintökieli

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adverbs_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/adverbs_newwords.lexc)</small>

---

# src-fst-morphology-stems-conjunctions_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the xml source files.
Mättʼtõshalltõs:Mättʼtõshalltõs PROP_SAJOS "(eng) /(fin) /(rus) " ;

ADD PROPER ADVERBS BELOW

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/conjunctions_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/conjunctions_newwords.lexc)</small>

---

# src-fst-morphology-stems-exceptions.lexc.md 

Exceptions are quite strange word-forms. the ones that do not fit anywhere 
else. This file contains all enumerated word forms that cannot reasonably be
created from lexical data by regular inflection. Usually there should be next
to none exceptions, it's always better to have a paradigm that covers only
one or few words than an exception since these will not work nicely with e.g.
compounding scheme or possibly many end applications.

IRREGULAR ADJECTIVES

IRREGULAR DETERMINERS

IRREGULAR NOUNS

Some verbs have variant forms:

* variant forms examples:*
* *leämmaž:* `leeʹd+V+PrfPrc`
* *leämma:* `leeʹd+V+PrfPrc`

The verb of negation
* **iʹlla+V: NEG-COPULA ;** This is for 3rd person iʹlla 

PREFIXES for nouns

Spelling errors

Foreign words

FROM FORMER .lexc CONTENT

# Skolt Saami adjectives

OUR LONG-TERM GOAL IS NOT TO ADD STEMS MANUALLY TO THIS FILE
Instead we want to update the dictionary sms2X/src/a_sms2X.xml, 
from where the present lexc files will be regularly updated by 
exporting (we need a script for this).

# Skolt Saami adpositions

# Skolt Saami adverbs

# Skolt Saami Conjunctions 

The lexicon *Conjunction* lists the conjunction

# Skolt Saami Interjections 

The lexicon *ij* gives the tag **+Interj**

The lexicon *Interjection* lists the interjections
* ai ij ;            

# Skolt Saami Particles

## List of particles in the lexicon Particle

ges+Pcle:ges PCLE_ ; 

# Propernoun lexicon, Skolt Sámi specific names 

# Subjunctions

The lexicon *Subjunction* lists the subjunctions
* So far it contains only go+CS:go CS_ ;  

# Verb roots

Here are the verb types so far:

*   5 JURDDED
*  38 KALMMED
*   3 KAMRDED
*   1 LAADDAD
*   1 LEED
*  23 MAINSTED
*   4 SEDGGJED
*   8 V_SILTTEED
*   5 V_SOLLEED
*  18 V_TEEʹMEED
*  53 TEEVVAD
*  25 TIETTED
*  82 VIQQAD
*   7 VOLLJED
*   4 VOOIDAD
*   1 VUEJTED

# TEST WORDS BEYOND THIS POINT
DO NOT ADD TRANSLATIONS
DO NOT ADD NOTES

# Skolt Saami Numerals

Lexicon *Subjunction* contains *okta* only.
CODED BY JACK

BUT have most of their Contlex values THIS has a separate DB DON'T TRANSLATE

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/exceptions.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/exceptions.lexc)</small>

---

# src-fst-morphology-stems-nouns_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the xml source files.
ǩiõtt+N:ǩiõtt N_MUORR "(eng) /(fin) /(rus)" ;

ADD NOUNS BELOW
Glossing 2015-12-02

Glossing 

Newer words
Contlex value missing

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nouns_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/nouns_newwords.lexc)</small>

---

# src-fst-morphology-stems-numerals.lexc.md 


# Skolt Saami Numerals

* **LEXICON Numeral   **  initial lexica

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/numerals.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/numerals.lexc)</small>

---

# src-fst-morphology-stems-particles_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the xml source files.
Mättʼtõshalltõs:Mättʼtõshalltõs PROP_SAJOS "(eng) /(fin) /(rus) " ;

ADD PARTICLES BELOW

CODED BY EINO AND JASKA

Lemmas:stems undesignated 2015-03-06
These have been commented out 2015-11-13

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/particles_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/particles_newwords.lexc)</small>

---

# src-fst-morphology-stems-pronouns_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the xml source files.
Mättʼtõshalltõs:Mättʼtõshalltõs PROP_SAJOS "(eng) /(fin) /(rus) " ;

ADD PRONOUNS BELOW

CODED BY EINO AND JASKA

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/pronouns_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/pronouns_newwords.lexc)</small>

---

# src-fst-morphology-stems-propernouns_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the xml source files.
Mättʼtõshalltõs:Mättʼtõshalltõs PROP_SAJOS ;

ADD PROPER NOUNS BELOW
LACKING SPECIFIC DECLENSION TYPE

WITH SPECIFIC DECLENSION TYPE

First names

SURNAMES

ORGANIZATIONS

Perintökieli

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/propernouns_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/propernouns_newwords.lexc)</small>

---

# src-fst-morphology-stems-sms-propernouns.lexc.md 



# Propernoun lexicon, Skolt Sámi specific names 

The lexicon *ProperNoun* lists the proper nouns

## First part of complex names

## Ordinary person names

## Ordinary place names

## Ordinary misc names

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/sms-propernouns.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/sms-propernouns.lexc)</small>

---

# src-fst-morphology-stems-toponyms_newwords.lexc.md 

This is where new words are added as lexc entries before they are
added to the xml source files.

PLACE NAMES

* Jõnn-Pelsa+N+Prop+Sem/Plc:Jõnn-Pelsa PROP_TOP_ "(eng) /(fin) /(nob) /(rus) " ; 
* Ruäʹvv-vueiʹvv+N+Prop+Sem/Plc:Ruäʹvv-#vuäi%{ʹØ%}vv PROP_TOP_VUEAIQVV "(eng) /(fin) /(nob) /(rus) " ; 

MORE
Toponyms

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/toponyms_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/toponyms_newwords.lexc)</small>

---

# src-fst-morphology-stems-verbs_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the xml source files.
The conversion is done as follows:
1. Turn the entries into tab-separated format
2. Run them through `src/scripts/newwords-to-xml.pl`
3. Add the output to V_sms2x.xml

Lexicon V_NEWWORDS is for ad-hoc adding of new entries
- * test:test N_MUORR "for testing" ;  = dummy entry
ADD VERBS BELOW

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/verbs_newwords.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/morphology/stems/verbs_newwords.lexc)</small>

---

# src-fst-phonetics-txt2ipa.xfscript.md 



retroflex plosive, voiceless		t`  ʈ	    0288, 648 (` = ASCII 096)
retroflex plosive, voiced		d`	ɖ		0256, 598
labiodental nasal				F 	ɱ		0271, 625
retroflex nasal					n` 	ɳ		0273, 627
palatal nasal					J 	ɲ		0272, 626
velar nasal						N 	ŋ		014B, 331
uvular nasal						N\	ɴ		0274, 628

bilabial trill					B\ 	ʙ		0299, 665
uvular trill						R\ 	ʀ		0280, 640
alveolar tap						4	ɾ		027E, 638
retroflex flap					r` 	ɽ		027D, 637
bilabial fricative, voiceless	p\ 	ɸ		0278, 632
bilabial fricative, voiced		B 	β		03B2, 946
dental fricative, voiceless		T 	θ		03B8, 952
dental fricative, voiced			D 	ð		00F0, 240
postalveolar fricative, voiceless	S	ʃ		0283, 643
postalveolar fricative, voiced		Z 	ʒ		0292, 658
retroflex fricative, voiceless		s` 	ʂ		0282, 642
retroflex fricative, voiced			z` 	ʐ		0290, 656
palatal fricative, voiceless			C 	ç		00E7, 231
palatal fricative, voiced			j\ 	ʝ		029D, 669
velar fricative, voiced	        	G 	ɣ		0263, 611
uvular fricative, voiceless			X	χ		03C7, 967
uvular fricative, voiced				R 	ʁ		0281, 641
pharyngeal fricative, voiceless		X\ 	ħ		0127, 295
pharyngeal fricative, voiced			?\ 	ʕ		0295, 661
glottal fricative, voiced			h\	ɦ		0266, 614

alveolar lateral fricative, vl.		K 
alveolar lateral fricative, vd.		K\

labiodental approximant				P (or v\) 
alveolar approximant					r\ 
retroflex approximant				r\` 
velar approximant					M\

retroflex lateral approximant		l` 
palatal lateral approximant			L 
velar lateral approximant			L\
Clicks

bilabial								O\	(O = capital letter) 
dental								|\
(post)alveolar						!\ 
palatoalveolar						=\ 
alveolar lateral						|\|\
Ejectives, implosives

ejective								_>	e.g. ejective p		p_>
implosive							_<	e.g. implosive b	b_<
Vowels

close back unrounded					M
close central unrounded 				1 
close central rounded				} 
lax i								I 
lax y								Y 
lax u								U

close-mid front rounded				2 
close-mid central unrounded			@\ 
close-mid central rounded			8 
close-mid back unrounded				7

schwa								@

open-mid front unrounded				E 
open-mid front rounded				9
open-mid central unrounded			3 
open-mid central rounded				3\ 
open-mid back unrounded				V 
open-mid back rounded				O

ash (ae digraph)						{ 
open schwa (turned a)				6

open front rounded					& 
open back unrounded	        		A 
open back rounded					Q
Other symbols

voiceless labial-velar fricative		W 
voiced labial-palatal approx.		H 
voiceless epiglottal fricative		H\ 
voiced epiglottal fricative			<\ 
epiglottal plosive					>\

alveolo-palatal fricative, vl. 		s\ 
alveolo-palatal fricative, voiced	z\ 
alveolar lateral flap				l\ 
simultaneous S and x					x\ 
tie bar								_
Suprasegmentals

primary stress						" 
secondary stress						% 
long									: 
half-long							:\ 
extra-short							_X 
linking mark							-\
Tones and word accents

level extra high						_T 
level high							_H
level mid							_M 
level low							_L 
level extra low						_B
downstep								! 
upstep								^	(caret, circumflex)

contour, rising						 
contour, falling						_F 
contour, high rising					_H_T 
contour, low rising					_B_L 

contour, rising-falling				_R_F 
(NB Instead of being written as diacritics with _, all prosodic marks can alternatively be placed in a separate tier, set off by < >, as recommended for the next two symbols.)
global rise				<R> 
global fall				<F>
Diacritics

voiceless				_0	(0 = figure), e.g. n_0
voiced					_v 
aspirated				_h 
more rounded				_O	(O = letter) 
less rounded				_c 
advanced					_+
retracted				_-
centralized				_" 
syllabic					=	(or _=) e.g. n= (or n_=) 
non-syllabic				_^ 
rhoticity				`

breathy voiced			_t 
creaky voiced			_k
linguolabial				_N 
labialized				_w 
palatalized				'	(or _j) e.g. t' (or t_j) 
velarized				_G 
pharyngealized			_?\

dental					_d 
apical					_a 
laminal					_m
nasalized				~	(or _~) e.g. A~ (or A_~) 
nasal release			_n
lateral release			_l 
no audible release		_}

velarized or pharyngealized		_e 
velarized l, alternatively		5 
raised							_r 
lowered							_o 
advanced tongue root				_A 
retracted tongue root			_q

* * *

<small>This (part of) documentation was generated from [src/fst/phonetics/txt2ipa.xfscript](https://github.com/giellalt/lang-sms/blob/main/src/fst/phonetics/txt2ipa.xfscript)</small>

---

# src-fst-syllabification-hyphenation.xfscript.md 



Copy from smn starts here

Copy from smn ends here

* * *

<small>This (part of) documentation was generated from [src/fst/syllabification/hyphenation.xfscript](https://github.com/giellalt/lang-sms/blob/main/src/fst/syllabification/hyphenation.xfscript)</small>

---

# src-fst-transcriptions-transcriptor-abbrevs2text.lexc.md 



We describe here how abbreviations are in Skolt Sami are read out, e.g.
for text-to-speech systems.

For example:

* s.:syntynyt # ;  
* os.:omaa% sukua # ;  
* v.:vuosi # ;  
* v.:vuonna # ;  
* esim.:esimerkki # ; 
* esim.:esimerkiksi # ; 

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---

# src-fst-transcriptions-transcriptor-clock-digit2text.lexc.md 


This is still a dummy version, containing Skolt Saami.

**

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-clock-digit2text.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/transcriptions/transcriptor-clock-digit2text.lexc)</small>

---

# src-fst-transcriptions-transcriptor-date-digit2text.lexc.md 


The Skolt Sámi dates !
This is still a dummy version, containing South Saami.

**

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-date-digit2text.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/transcriptions/transcriptor-date-digit2text.lexc)</small>

---

# src-fst-transcriptions-transcriptor-numbers-digit2text.lexc.md 



# Skolt Saami number <-> letter transducer

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-numbers-digit2text.lexc](https://github.com/giellalt/lang-sms/blob/main/src/fst/transcriptions/transcriptor-numbers-digit2text.lexc)</small>

---

# tools-grammarcheckers-grammarchecker.cg3.md 


S K O L T   S A A M I   G R A M M A R   C H E C K E R

# DELIMITERS

# TAGS AND SETS

## Tags

This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

### Beginning and end of sentence
BOS
EOS

### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
PPUNCT
PUNCT

COMMA
¶

### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall

### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess

Err/Orth

### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

PROP-ATTR
PROP-SUR

TIME-N-SET

###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X

## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.

### Sets for Single-word sets

INITIAL

### Sets for word or not

WORD
NOT-COMMA

### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets

NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC

### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V

### Pronoun sets

### Adjectival sets and their complements

### Adverbial sets and their complements

### Sets of elements with common syntactic behaviour

### NP sets defined according to their morphosyntactic features

### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

### Border sets and their complements

### Grammarchecker sets

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-sms/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>

---

# tools-tokenisers-tokeniser-disamb-gt-desc.pmscript.md 

# Tokeniser for sms

Usage:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1. unknown word-like forms, and
2. unmatched strings
We want to give 1) a match, but let 2) be treated specially by
`hfst-tokenise -a`
Unknowns are made of:
* lower-case ASCII
* upper-case ASCII
* select extended latin symbols
* skolt specific charactesr
ASCII digits
* select symbols
* Combining diacritics as individual symbols,
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

## Unknown handling
Unknowns are tagged ?? and treated specially with `hfst-tokenise`
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.pmscript](https://github.com/giellalt/lang-sms/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.pmscript)</small>

---

# tools-tokenisers-tokeniser-gramcheck-gt-desc.pmscript.md 

# Grammar checker tokenisation for sms

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript](https://github.com/giellalt/lang-sms/blob/main/tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript)</small>

---

# tools-tokenisers-tokeniser-tts-cggt-desc.pmscript.md 

# TTS tokenisation for smj

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```sh
make
echo "ja, ja" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```sh
echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa \
boasttu olmmoš, man mielde lahtuid." \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "márffibiillagáffe" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Needs hfst-tokenise to output things differently depending on the tag they get

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-tts-cggt-desc.pmscript](https://github.com/giellalt/lang-sms/blob/main/tools/tokenisers/tokeniser-tts-cggt-desc.pmscript)</small>
