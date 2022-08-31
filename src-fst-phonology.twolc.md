
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

* __%^VV2V:0__ - Shortens vowel
* __%^V2VV:0__ - Lengthens vowel
* __%^CC2C:0__ - Shortens consonant
* __%^CC2CAllegro:0__ - Shortens consonant
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

* Dummy = %^PAL %^PALE %^PALẸ %^PALÕ %^PALÄ
  %^CC2C %^CCC2C %^CCC2CC %^XYY2IY %^XYY2XY
  %^KK2GG %^XYY2VY %^KKK2GG %^KKK2ZERO %^C2CC
  %^J2I %^Pen %^V2VV %^VOWLower %^RmVow
  %^PenVow2a %^RmCns %^VC %^V2VV
  %^VOWRaise %^VOWSH %^CLong %^K2GG ; - triggers in Sg.Nom and Sg.Gen

## Definitions

### Short consonant cluster

Onset consonant or word boundary
`OnSetC = [[%{XC%}:Cns\|Cns:Cns] (Cns:\|%{XC%}:Cns) \|.#.\|#:\|%>\](») ;`

Penultimate consonant
`PenUltCns = [Cns:\](%{XC%}:) ;`

following morpheme or word boundary

<!-- {% raw %} -->
```
* RBound = [(%^Hyphen: %-|%^NoHyphen:|%{%-Ø%}:) #:|.#.|%>|»|%-] ;
```
<!-- {% endraw %} -->

ossible triggers before VOWLower and VOWRaise

`BetweenStemAndHeight =  ( %^VV2V: \|%^V2VV:)`

possible triggers before PALE PALÄ
`BetweenStemAndPALAllo = [ BetweenStemAndHeight (%^VOWLower:](%^VOWRaise:))`

possible triggers between stem and PALNo and PAL
`BetweenStemAndPALNo = [ BetweenStemAndHeight [(%^VOWLower:\|%^VOWRaise:) (%^PALÄ:\|%^PALE:\|%^PALẸ:\|%^PALÕ:\](%^PALÂ:)] (%^Allegro:) ) ; `

possible triggers between vowel length and consonant grade
`BetweenVowLenghtAndConsGrade = [ (%^VOWRaise:\|%^VOWLower:) ( ((%^PALÂ:\|%^PALÕ:) (%^Allegro:) %^PALNo:\|%^VOWLower: %^PALÄ:\|(%^PALÕ:\|%^PALE:\|%^PALÄ:\|%^PALẸ:) (%^Allegro:) %^PAL:)\| (%^Allegro:) (%^PALÕ:\|%^PALE:\|%^PALÄ:\|%^PALẸ:\|%^PALÂ:) (%^PALNo:\](%^PAL:) ) ) ;`

possible triggers between word end and consonant grade
`BetweenStemAndConsGrade = [ BetweenStemAndHeight BetweenVowLenghtAndConsGrade ];`

possible triggers between vowel length and Palatalization
`BetweenVowLengthAndPALNo = [(%^VOWLower:\|%^VOWRaise:) (%^PALÄ:\|%^PALE:\|%^PALẸ:\|%^PALÕ:\](%^PALÂ:) ) ;`

`BetweenVowHeightAndConsGrade = [((%^PALE:\|%^PALÄ:\|%^PALẸ:\|%^PALÕ:) (%^Allegro:) %^PAL:\|(%^PALÂ:\](%^PALÕ:) (%^Allegro:) %^PALNo:)) ;`

`BetweenVowHeightAndMorph = [  ((%^PALE:\|%^PALÄ:\|%^PALẸ:\|%^PALÕ:) (%^Allegro:) %^PAL:\|(%^PALÂ:\|%^PALÕ:) (%^Allegro:) %^PALNo:) ([(%^Allegro:) %^CC2C:\|(%^Allegro:) %^CC2CAllegro:]\|%^C2CC:\|%^XYY2XY:\|%^K2GG:\|%^KK2GG:\|%^CC2CCC:\|%^CCC2C:\|%^CCC2CC:\|%^XYY2VY:\|%^XYY2VYY:\](%^KKK2GG:) RBound ) ;`

`BetweenPALNoAndMorphRightArrow = [([(%^Allegro:) %^CC2C:\|(%^Allegro:) %^CC2CAllegro:]\|%^C2CC:\|%^XYY2XY:\|%^K2GG:\|%^KK2GG:\|%^CC2CCC:\|%^CCC2C:\|%^CCC2CC:\|%^XYY2VY:\|%^XYY2VYY:\](%^KKK2GG:) ) ;`

`BetweenPALNoAndMorph = [([(%^Allegro:) %^CC2C:\|(%^Allegro:) %^CC2CAllegro:]\|%^C2CC:\|%^XYY2XY:\|%^K2GG:\|%^KK2GG:\|%^CC2CCC:\|%^CCC2C:\|%^CCC2CC:\|%^XYY2VY:\|%^XYY2VYY:\](%^KKK2GG:) RBound ) ;`

`BetweenStemAndRightArrow = [BetweenStemAndConsGrade BetweenPALNoAndMorphRightArrow] ;`

### Penultimate vowel centers possible triggers before VOWLower and VOWRaise

`PenBetweenStemAndHeight = [(%^Pen: %^VV2V: \](%^Pen: %^V2VV:)) ;`

`PenBetweenStemAndPALNo = [PenBetweenStemAndHeight (%^Pen: %^VOWRaise:\](%^Pen: %^VOWLower:) (%^Pen: %^Allegro:) ) ;`

`PenBetweenStemAndPALAllo  = [ PenBetweenStemAndHeight (%^Pen: %^VOWLower:\](%^Pen: %^VOWRaise:)) ;`

`PenBetweenStemAndConsGrade = [PenBetweenStemAndHeight ((%^Pen: %^VOWRaise:\|%^Pen: %^VOWLower:) ((%^Pen: %^PALÂ:\|%^Pen: %^PALÕ:) (%^Pen: %^Allegro:) %^Pen: %^PALNo:\|(%^Pen: %^PALÕ:\|%^Pen: %^PALE:\|%^Pen: %^PALÄ:\](%^Pen: %^PALẸ:) (%^Pen: %^Allegro:) %^Pen: %^PAL:) ) ) ;`

`PenBetweenStemAndVowelLoss = [PenBetweenStemAndHeight [(%^Pen: %^VOWRaise:\|%^Pen: %^VOWLower:\|%^Pen: %^U2Õ:) ((%^Pen: %^PALÂ:\|%^Pen: %^PALÕ:) (%^Pen: %^Allegro:) %^Pen: %^PALNo:\|(%^Pen: %^PALE:\|%^Pen: %^PALÄ:\|%^Pen: %^PALẸ:\|%^Pen: %^PALÕ:) (%^Pen: %^Allegro:) %^Pen: %^PAL:)] ([%^Pen: %^C2CC:]\|%^Pen: [(%^Allegro:) %^CC2C:\|%^Allegro:\|(%^Allegro:) %^CC2CAllegro:]\|%^Pen: %^XYY2XY:\|%^Pen: %^CC2CCC:\|%^Pen: %^CCC2CC:\|%^Pen: %^CCC2C:\](%^Pen: %^KKK2GG:)) ;`

`PenBetweenStemAndStemFinalVoicing = [PenBetweenStemAndVowelLoss (%^RmVow:\](%^PenVow2a:)) ;`

`PenBetweenPALNoAndMorph = [(%^Pen: [(%^Allegro:) %^CC2C:\|(%^Allegro:) %^CC2CAllegro:]\|%^Pen: %^C2CC:\|%^Pen: %^XYY2XY:\|%^Pen: %^KK2GG:\|%^Pen: %^CC2CCC:\|%^Pen: %^CCC2C:\|%^Pen: %^CCC2CC:\|%^Pen: %^XYY2VY:\|%^Pen: %^XYY2VYY:\](%^Pen: %^KKK2GG:) RBound ) ;`

used in compounding Cmp/SgNom and Cmp/SgGen
`SgNomGen = [((%^PALE: %^PAL:) %^CCC2C:\|(%^PALE: %^PAL:) %^CCC2CC:\|%^PALẸ:\|[%^PALE:\|%^PALÕ:] %^PAL: %^XYY2IY:\|[%^PALẸ:\|%^PALE:] %^PAL: %^XYY2XY:\|((%^PALE:) %^PAL:) %^KK2GG:\|(%^PALE:) %^PAL:\| ((%^PALE:) %^PAL:) (%^J2I:) %^CC2C:\](%^PAL: %^XYY2VY:));`

neutral to vowel height and backness

`NeutrHighBack = [(%^VOWLower:\](%^VOWRaise:) ) ; `

neutral to vowel length

`VNeutrGrade = [(%^VV2V: \](%^V2VV: ));`

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
* *čâ%^1VOWđđ%>ma*
* *čâ0đđ%>ma*

-â
ǩeʹtted+V+Ind+Prs+ConNeg: **cook/keittää**
* *ǩeâ%{ʹØ%}tt%^VV2V%^VOWRaise%^PALI%^PAL*
* *ǩi0ʹtt0000*

**Vowel shortening ẹ:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
teevvad+V+Prt+4:
* *tẹẹvv%^VV2V%^VOWRaise%>uš*
* *ti0vv00%>uš*

**Vowel shortening e:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3

eʹǩrded+V+Inf
* *eeʹǩǩerd%^Pen%^VV2V%^Pen%^CC2C%^RmVow%>ed*
* *e0ʹǩ00rd00000%>ed*
cieʹǩǩes+N+Sg+Ill: **trick, type of ear mark/tikki, pykälä**
* *ciâ%{ʹØ%}kˈkes%^Pen%^VOWLower%^RmVow%>a*
* *ceä0kˈk0s000%>a*

Ââvel+N+Prop+Sg+Loc  **Ivalo**
* *Ââvel%^RmVow%>est*
* *Ââv0l0%>est*

Jouste

**Vowel shortening å:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
jååʹtted+V+Ind+Prt+Pl3 **trekk**
* *jåå%{ʹØ%}tt%^VV2V%^VOWRaise%^PAL%>e*
* *jo0ʹtt000%>e*

sååbbar+N+Sg+Nom **meeting**
* *så%^1VOWbbar%^Pen%^V2VV*
* *sååbbar00*

-å

**Vowel shortening õ:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
* *mõõ%{ʹØ%}nn%^VV2V%^PAL%>e*
* *mõ0ʹnn00%>e*
* *mõõ%{ʹØ%}nn%^VV2V%^VOWLower%^PAL%>e*
* *mâ0ʹnn000%>e*
* *čõõnâst%^Pen%^VV2V%^RmVow%>ed*
* *čõ0n0st000%>ed*
tõiŋsǩed+V+Inf
* *tõõiŋâsk^Pen^VV2V^RmVow^PALK>ed*
* *tõ0iŋ0sǩ0000>ed*
* ★*tõõiŋâsk^Pen^VV2V^RmVow^PALK>ed* (is not standard language)
* ★*tõ0iŋ0sk0000>ed* (is not standard language)

kõõnjâl+N+Sg+Gen **tear**
* *kõ%^1VOWnnjâl%^Pen%^VV2V%^Pen%^C2CC*
* *kõ0nnjâl0000*

-õ

**Vowel shortening u:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3

mainstummuš+N+Sg+Ill: **story telling/tarinointi**
* *mainstummuš%^RmVow%>a*
* *mainstumm0š0%>a*

juurd+N+Ess **thought**
* *ju%^1VOWrdd%>j%>en*
* *ju0rdd%>j%>en*

Oulu

**Vowel shortening i:0** - used in +Ind+Prs+Pl3, +Ind+Prt+Pl3
viikkâd+V+Ind+Prs+Pl3
* *vii%{ʹØ%}kk%^VV2V%^VOWLower%^PAL%>e*
* *ve0ʹǩǩ000%>e*
viikkâd+V+Imprt+Pl3
* *vii%{ʹØ%}kk%^VV2V%^VOWLower%>az*
* *vẹ00kk00%>az*
* ★*vii{ʹØ}kk^VV2V^VOWLower>az* (is not standard language)
* ★*vẹẹ0kk00>az* (is not standard language)
iilâsǩ:ilska

prääʹzniǩ+N+Sg+Ill: **celebration/juhla**
* *prääʹzniǩ^RmVow^PALNo>a*
* *prääʹzn0k00%>a*

* *žẹẹvai^RmVow^I2Zero%>ǥa*
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
* *jieʹll{ʼØ%}i^I2J>e>st*
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
* *puä%{ʹØ%}tt%^CC2CCC%>a0t%^RmVow%>em%^RmVow%>en*
* *puä0tt0%>0ʼt%0%>0m0%>en*
* ★*puä%{ʹØ%}tt%^CC2CCC%>at%^RmVow%>em%^RmVow%>en* (is not standard language)
* ★*puä0tt0%>0t%0%>0m0%>en* (is not standard language)

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

mieʹlǩǩ+N+Sg+Nom: **milk/maito**
* *meâ{ʹØ}lkk^VOWRaise^PALE^PAL*
* *mieʹlǩǩ000*

* *jeä{ʹØ}gˈg^VOWRaise^PALẸ^PAL^CCC2CC*
* *jiẹʹǧ0ǧ0000*
* *beâ{ʹØ}sˈs^VOWRaise^PALE^PAL^CCC2CC*
* *bieʹs0s0000*
* *ceägˈg^VOWRaise>u*
* *ciâgˈg0>u*

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

**Diphthong raising beginning with e:i ä:ẹ** - used in
* *čuä{ʹØ}ckk^PALẸ^PAL^XYY2XY>es*
* *čuẹʹcǩ0000>es*
* *suä{ʹØ}kk^PALẸ^PAL^KK2GG*
* *suẹʹjj000*

**diphthong backing beginning with u ä:õ** - used in
* *jeä{ʹØ}l0l^VOWRaise^PALÕ^PAL^CC2CCC>e*
* *jiõʹlˈl0000>e*

**Even syllabic verbs I, diphthong raising beginning with ä:a u** - deriving läullad > laullum
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
* *mä%^1VOW%{ʹØ%}h%{ʹØ%}ss%^VOWRaise%^PAL%>e*
* *ma0ʹh0ss00%>e*
* ★*mä%^1VOW%{ʹØ%}h%{ʹØ%}ss%^VOWRaise%^PAL%>e* (is not standard language)
* ★*mä0ʹh0ss00%>e* (is not standard language)
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
* *pu^1VOW%{ʹØ%}h%{ʹØ%}tt^VOWLower*
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
* *riõkˈk%^VOWLower#*
* *reâkˈk0#*
* *mõõ0nn%^VV2V%^VOWLower%^PAL%>e*
* *mâ0ʹnn000%>e*
* *mõõnn%^VOWLower%^CC2C%>as*
* *mâân000%>as*

kuõskkâd+V+Ind+Prs+Sg3
* *kuõskk%^VOWLower*
* *kuâskk0*
juõiggâd+V+Ind+Prs+Sg3
* *kuõigg%^VOWLower*
* *kuâigg0*

### Diphthongs

**Even syllabic verbs I, diphthong opening after u å:ä** - deriving +Ind+Prs+Sg3, in kuåccâd kuäʹcce
= a>ä lowering clockwise
* *kuå0c0c%^VOWLower%^PAL%^CC2CCC%>e*
* *kuäʹcˈc000%>e*
puäj+N+Sg+Nom
* *puåjˈj%^VOWLower%^CCC2C*
* *puåj0000*
* ★*puåjˈj%^VOWLower%^CCC2C* (is not standard language)
* ★*puäj0j00* (is not standard language)

**Vowel in second syllable e:a** - deriving cieʹǩǩes+N+Sg+Gen: ceäkˈkaz
cieʹǩǩes+N+Sg+Gen: **trick, type of ear mark/tikki, pykälä**
* *ciâkˈkes%^Pen%^VOWLower%^PenVow2a%^VC*
* *ceäkˈkaz0000*
puuʹttes+A+Sg+Gen

**Even syllabic verbs I, diphthong opening i:e â:ä for â:ä ** - deriving +Ind+Prs+Sg3, in čiõkkâd
* *vuâinn%^VOWLower*
* *vuäinn0*
vueʹlǧǧed+Use/NG+V+Ind+Prs+Pl3 **leave/lähteä**
* *vuâ0lgg%^PALÄ%^PAL%>a*
* *vuäʹlǧǧ00%>a*

**Even syllabic verbs I, diphthong opening after i:e e:â** - deriving +Ind+Prs+Sg3, in pi%{EÂ%}ʹǩǩ:peâkka

### Vowel backing

** u å:õ** - used in
= a>ä lowering clockwise

* *puått%^VOWRaise%>u*
* *puõtt0%>u*

### Vowel Palatalization
**diphthong allophonic realization in palatalization u å:e** - deriving e from å

* *puå0v0v%^PALE%^PAL%^CC2CCC%>e*
* *pueʹvˈv000%>e*

**diphthong allophonic realization in palatalization u å:ẹ** - deriving

### Vowel Lowering and Fronting

**Even syllabic verbs I, diphthong opening õ:ä after i:e** - deriving +Ind+Prs+Sg3, in čiõkkâd
siõrrâd+V+Ind+Prs+Pl3: **play/leikkiä**
* *siõ0r0r%^VOWLower%^PALÄ%^PAL%^CC2CCC%>e*
* *seäʹrˈr0000%>e*

### SECONDARY FRONTING

**Even syllabic verbs I, secondary vowel fronting with PAL u õ:e** - deriving +Ind+Prs+Pl3 in VIQQAD: kuõskkâd >kueʹsǩǩe

* *kuõ0skk%^VOWLower%^PALE%^PAL%>e*
* *kueʹsǩǩ000%>e*

**Even syllabic verbs I, secondary u > v **

### RELATIVE VOWEL LENGTHENING

vowel lengthening and consonant shortening, %^Pen: %^V2VV and %^CShort

**Even syllabic verbs I, relative vowel lengthening %^1VOW:â** - deriving +V+Inf in TIETTED: uudd > uʹvdded
šõddâd+V+Imprt+Sg3:
* *šõ%^1VOWdd%^V2VV%^VOWLower%>as*
* *šââdd00%>as*

nââʹer+N+Sg+Nom **sleep**
* *nâ%^1VOW0kker%^Pen%^V2VV%^Pen%^PAL%^Pen%^KK2ZERO*
* *nââʹ00er000000*

radio+N+Sg+Ill
* *radio%^1VOW%^V2VVʹje*
* *radioo0ʹje*

**%^1VOW:ẹ relative vowel lengthening** -
pess+N+Sg+Acc: **rifle/pyssy**
* *pẹ%^1VOWss%^V2VV*
* *pẹẹss0*
veʹrǧǧ+N+Der/lazh+A+Sg+Nom
* *vẹ%^1VOW%{ʹØ%}rgg%^V2VV%^XYY2XY>laž*
* *vẹẹ0rǥ000>laž*
viǯǯâd+V+Imprt+Sg2 **fetch/noutaa**
* *vi%^1VOWǯǯ%^V2VV%^VOWLower%>as*
* *vẹẹǯǯ00%>as*
eelas+N+Sg+Nom:
* *ẹ%^1VOWllas%^Pen%^V2VV%^Pen%^CC2C*
* *ẹẹl0as0000*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:e** - deriving +V+Inf in TIETTED: uudd > uʹvdded
* *čââʹlmtẹ%^1VOW0m%^V2VV%^PAL*
* *čââʹlmteeʹm00*
reeʹǧǧes+A+Sg+Nom: **rich/rikas**
* *rẹ%^1VOW0gges%^Pen%^V2VV%^Pen%^PAL*
* *rẹẹʹǧǧes0000*
* *pẹ%^1VOWi0vv%^V2VV%^PAL%^XYY2XY*
* *peeiʹv0000*

* *kaađnẹ%^1VOW0ǩ%{XC%}%^V2VV%^PAL%^C2CC*
* *kaađneeʹǩǩ000*

Jouste+N+Prop+Sg+Ill
* *Jouste%^1VOW%^V2VVʹje*
* *Joustee0ʹje*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:å** - deriving
sååbbar+N+Sg+Nom
* *så%^1VOWbbar%^Pen%^V2VV*
* *sååbbar00*
* ★*så%^1VOWbbar%^Pen%^V2VV* (is not standard language)
* ★*så0bbar00* (is not standard language)
radio+N+Sg+Ill
* *radio%^1VOW%^V2VVʹje*
* *radioo0ʹje*
* *jå%^1VOW%{ʹØ%}h%{ʹØ%}ss%^V2VV%^PAL%^XYY2VY*
* *jåå0uʹs0000*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:õ** - deriving +V+Inf in TIETTED: uudd > uʹvdded
âʹlǧǧ+N+Pl+Gen: **boy/poika**
* *â%^1VOW%{ʹØ%}lgg%^V2VV%^VOWRaise%^PAL%^XYY2XY%>i*
* *õõʹlj00000%>i*
čâʹlmm+N+Pl+Acc: **eye/silmä**
* *čâ%^1VOW%{ʹØ%}lmm%^V2VV%^VOWRaise%^PAL%^XYY2XY%>id*
* *čõõʹlm00000%>id*
* *ču%^1VOWkk%^V2VV%^U2Õ%>až*
* *čõõkk00%>až*

* *võ%^1VOWrr%^V2VV%^CC2C*
* *võõr000*
* *sõ%^1VOWll%^V2VV%^CC2C*
* *sõõl000*
* *mättʼtõ%^1VOWs%{XC%}%^V2VV%^K2GG*
* *mättʼtõõzz00*
* *sõ%^1VOWhss%^V2VV%^XYY2VY*
* *sõõus000*

**relative vowel lengthening %{õuØ%}:õ**

radio+N+Sg+Ill
* *radio%^1VOW%^V2VVʹje*
* *radioo0ʹje*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:ä** - deriving +V+Inf in TIETTED: uudd > uʹvdded
* *ä%^1VOWldd%^V2VV%^CC2C*
* *ääld000*
* *jä%^1VOWu0rr%^V2VV%^PAL%^CC2C*
* *jääuʹr0000*
mäʹhssed+V+Ind+Prs+Sg1: **pay/maksaa**
* *mä%^1VOW%{ʹØ%}h%{ʹØ%}ss%^V2VV%^XYY2VY%>am*
* *mää0u0s000%>am*
mäʹhssed+V+Ind+Prs+Sg4: **pay/maksaa**
* *mä%^1VOW%{ʹØ%}h%{ʹØ%}ss%^V2VV%^PAL%^XYY2VY%>et*
* *mää0uʹs0000%>et*

Määttä+N+Prop+Sg+Ill
* *Määttä%^1VOW%^V2VVʹje*
* *Määttää0ʹje*

**Even syllabic verbs I, relative vowel lengthening %^1VOW:a** - deriving +V+Inf in MAINSTED: maainstam, mainstam
* *dura%^1VOWk%^V2VV*
* *duraak0*
* *ä%^1VOWldd%^V2VV%^VOWRaise%^CC2C%>už*
* *aald0000%>už*
täiʹdded+V+Ind+Prt+Sg3:
* *tä%^1VOWi%{ʹØ%}dd%^V2VV%^VOWRaise%^PAL%^XYY2XY*

mäʹhssed+V+Ind+Prt+Sg3: **pay/maksaa**
* *mä%^1VOW{ʹØ}h{ʹØ}ss%^V2VV%^VOWRaise%^PAL%^XYY2VY%>i*
* *maa0uʹs00000%>i*

taalkâs+N+Sg+Nom

biologia+N+Sg+Ill
* *biologia%^1VOW%^V2VVʹje*
* *biologiaa0ʹje*

**Relative vowel lengthening %^1VOW:o** -  simultaneous lengthening and lowering: juʹrdded > joordam juʹrdded+V+Ind+Prs+Sg1

* *u%^1VOWvdd%^V2VV%^VOWLower%^XYY2VY%>če*
* *ooud0000%>če*
juʹrdded+V+Ind+Prs+Sg1 **think**
* *ju%^1VOWrdd%^V2VV%^VOWLower%^XYY2XY%>am*
* *joord0000%>am*
* *kå%^1VOW0ll%^V2VV%^VOWRaise%^PAL%>in*
* *kooʹll000%>in*
* *tå%^1VOWidd%^V2VV%^VOWRaise%^XYY2XY%>čed*
* *tooid0000%>čed*
oolmaž+N+Sg+Nom: **person/henkilö**
* *o%^1VOWlmm%^V2VV%^XYY2XY%>až*
* *oolm000%>až*
Sajos+N+Prop+Sg+Gen:Sajoozz
* *Sajo^1VOW{ʹØ}s{XC}^V2VV^K2GG*
* *Sajoo0zz00*
* ★*Sajo^1VOW{ʹØ}s{XC}^V2VV^K2GG* (is not standard language)
* ★*Sajo00zz00* (is not standard language)
toll+N+Sg+Gen: **fire/tuli**
* *to%^1VOWll%^V2VV%^CC2C*
* *tool000*
* *to%^1VOW0ll%^V2VV%^PAL%^CC2C%>e*
* *tooʹl0000%>e*
* *ko%^1VOWnttâr%^Pen%^V2VV%^Pen%^XYY2XY*
* *koont0âr0000*
radio+N+Sg+Ill
* *radio%^1VOW%^V2VVʹje*
* *radioo0ʹje*

**Even syllabic nouns I, relative vowel lengthening i** - ǩiđđ:ǩiiđ

pirsted+V+Ind+Prs+ConNeg
* *piirâst*
* *piirâst*
* *pẹ%^1VOWss%^V2VV%^VOWRaise%>už*
* *piiss00%>už*

* *ǩi%^1VOWđđ%^V2VV%^CC2C*
* *ǩiiđ000*

Terhi+N+Prop+Sg+Ill
* *Terhi%^1VOW%^V2VVʹje*
* *Terhii0ʹje*

**Even syllabic nouns, relative vowel extra lengthening u not followed by v** - declension of nouns kunn > kuun
mainstummuš+N+Err/Orth+Sg+Gen: **story telling/tarinointi**
* *mainstummu%^1VOWš%{XC%}%^Pen%^CC2C%^V2VV%^K2GG*
* *mainstum0uužž0000*

* *pu%^1VOW0ttes%^Pen%^V2VV%^Pen%^PAL*
* *puuʹttes0000*
* ★*pu%^1VOW0ttes%^Pen%^V2VV%^Pen%^PAL* (is not standard language)
* ★*pu0ʹttes0000* (is not standard language)

vuʹvdd+N+Err/Orth+Sg+Gen: **area/alue**
* *vu%^1VOW%{ʹØ%}v%{ʹØ%}dd%^V2VV%^PAL%^XYY2XY*
* *vuuʹv0d0000*
Oulu+N+Prop+Sg+Ill
* *Oulu%^1VOW%^V2VVʹje*
* *Ouluu0ʹje*

**Word-final vowel ö** - 
Enontekiö+N+Prop+Sg+Ill
* *Enontekiö%^1VOW%^V2VVʹje*
* *Enontekiöö0ʹje*

simultaneous lengthening and raising, hmm: xfst ordering might be easier

### VOWEL DUMMY LOSS

### SEMI VOWELS

**Even syllabic nouns, for j>i** - sijdd > siid This will need a special extra-lengthening rule
* *ijss%^XYY2VY%>âs*
* *iis00%>âs*
fiinâs+N+Sg+Nom: **fine/hieno**
* *fijnnâs>^Pen^XYY2VY*
* *fiin0âs>00*

* *sââjj%^J2I%^CC2C*
* *sââi000*
tuâjj+N+Sg+Acc **work**
* *tuâjj%^J2I%^CC2C*
* *tuâi000*

**Even syllabic verbs,  for v>u** - uvdd > ouʹdde
* *u%^1VOWv0dd%^PAL%^XYY2VY*
* *u0uʹd000*
* *u%^1VOWvdd%^VOWLower%^XYY2VYY*
* *o0udd00*
kuʹvǯǯ+N+Sg+Gen
* *ku%^1VOWv0ǯǯ%^VV2V%^PAL%^XYY2VY*
* *ku0uʹǯ0000*

**Even syllabic nouns, for h>u** - luhtt  s s: ...
uhss+N+Der/Dim+N+Sg+Gen **door**
* *uh0ss%^PAL%^XYY2VY%>e*
* *uuʹs000%>e*

* *sä%^1VOWhss%^V2VV%^XYY2VY%>am*
* *sääus000%>am*

piiutâs+N+Sg+Nom **clothing/vaate**
* *pi%^1VOWhttâs%^Pen%^V2VV%^Pen%^XYY2VY*
* *piiut0âs0000*

**Even syllabic nouns, for h>i** - kueʹhtt
kueiʹt+Num+Sg+Gen **two/kaksi**
* *kuâh0tt%^PALE%^PAL%^XYY2IY*
* *kueiʹt0000*

**trisyllabic verbs and doer derivations, i>j** - used in
* *valmštõõll%{ʼØ%}i%^I2J%>i*
* *valmštõõllʼj0%>i*
piânˈnai+N+Ess: **dog/koira**
* *piânˈn%^CCC2CC%>%{ʼØ%}j%>en*
* *piân0n0%>ʼj%>en*

peigg+N+Sg+Ill
* *pẹ%^1VOWigg%^VOWRaise%^VYY2XYY%>u*
* *pi0jgg00%>u*

### VOWELS TENSE vs LAX 2012-11-28

**Vowels for â:i** -
ǩeʹtted+V+Ind+Prs+ConNeg: **cook/keittää**
* *ǩeâ0tt%^VOWRaise%^PALI%^PAL*
* *ǩiiʹtt000*

**Vowels for â:e** -
miârr+N+Sg+Ill
* *miâ0rr%^PALE%^PAL%>e*
* *mieʹrr00%>e*
mieʹlǩǩ+N+Sg+Nom
* *meâ0lkk%^VOWRaise%^PALE%^PAL*
* *mieʹlǩǩ000*
* *piâ0ss%^PALE%^PAL*
* *pieʹss00*
* *ǩiâ0p0p%^PALE%^PAL%^CC2CCC%>e*
* *ǩieʹpˈp000%>e*
* *kuâ0ll%^PALE%^PAL*
* *kueʹll00*
tieʹtted+V+Imprt+Sg2: **know/tietää**
* *teâ0tt%^VOWRaise%^PALE%^PAL%^CC2C*
* *tieʹđ00000*
mueʹles+N+Sg+Nom
* *muâ%{ʹØ%}lles%^Pen%^PALE%^Pen%^PAL%^Pen%^CC2C*
* *mueʹl0es000000*
* *ǩeâ0sttes%^Pen%^PALE%^Pen%^PAL%^Pen%^XYY2XY*
* *ǩeeʹst0es000000*
ǩeʹtted+V+Ind+Prs+ConNeg: **cook/keittää**
* *ǩeâ0tt%^PALE%^PAL*
* *ǩeeʹtt00*

**Even-syllabic nouns, for â:ẹ** - used in
pieʹll+N+Sg+Nom: **half**
* *peä0ll%^VOWRaise%^PALẸ%^PAL*
* *piẹʹll000*
* *tuâjj^PALẸ*
* *tuẹjj0*

**Palatalization for ẹ:e** - used in
reʹhtt+N+Pl+Nom
* *rẹ%^1VOW%{ʹØ%}h%{ʹØ%}tt%^V2VV%^PAL%^XYY2VY*
* *ree0uʹt0000*
peiʹvv+N+Sg+Gen: **day/päivä**
* *pẹ%^1VOWi%{ʹØ%}vv%^V2VV%^PAL%^CC2C*
* *peeiʹv0000*
karies+N+Sg+Nom: **caries/hammasmätä**
* *kariẹ%^1VOW%{ʹØ%}s%^PALE*
* *karie00s0*

### VOWEL and ZERO ALTERNATION

**Realization for â in a** - used in
* *ǩiõrggân%^PenVow2a*
* *ǩiõrggan0*

### THE NON-ORTHOGRAPHIC SYLLABLE

**Loss of ʼ when preceded by vowel** - This is a temporary solution to  "ʼ" in võʹllʼjed, it deletes softmark when preceded by vowel

**%{A1%}:ʼ when subseqent syllable has vowel v** - This is a temporary solution to  "ʼ" in võʹllʼjed 2013-08-29

### PALATALIZATION

**0:ʹ as transfer from left of v:u** - used +Ind+Prs+Pl3, uʹvdded+V+Ind+Prs+Pl3: ouʹdde
uʹvdded+V+Ind+Prs+Pl3: **give/antaa**
* *u%^1VOWv0dd%^VOWLower%^PAL%^XYY2VYY%>e*
* *o0uʹdd000%>e*
* *u%^1VOWv0dd%^PAL%^XYY2VY*
* *u0uʹd000*

täʹhtt+N+Pl+Nom: **bone/luu**
* *tä%^1VOWh0tt%^V2VV%^PAL%^XYY2VY*
* *tääuʹt0000*
täʹhtt+N+Pl+Gen: **bone/luu**
* *tä%^1VOWh0tt%^V2VV%^VOWRaise%^PAL%^XYY2VY%>i*
* *taauʹt00000%>i*
kueiʹt+Num+Sg+Gen **two/kaksi**
* *kuâh0tt%^PALE%^PAL%^XYY2IY*
* *kueiʹt0000*
siõrrâd+V+Ind+Prs+Pl3: **play/leikkiä**
* *siõ0r0r%^VOWLower%^PALÄ%^PAL%^CC2CCC%>e*
* *seäʹrˈr0000%>e*
* *saa0kk%^VV2V%^PAL%>e*
* *sa0ʹǩǩ00%>e*
tääʹss+N+Sg+Gen: **level/taso**
* ★*tää0ss%^PAL%^KK2GG* (is not standard language)
* ★*tää0zz00* (is not standard language)
* *mõõ0nn%^VV2V%^VOWLower%^PAL%>e*
* *mâ0ʹnn000%>e*
* *jåå0tt%^VV2V%^VOWRaise%^PAL%>e*
* *jo0ʹtt000%>e*
* *kuâ0ll%^PALE%^PAL*
* *kueʹll00*
* *stu%^1VOW%{VU%}0l%^PAL*
* *stu0uʹl0*
* *čââʹlmtẹ%^1VOW0m%^PAL*
* *čââʹlmte0ʹm0*
* *kä%^1VOW0lles%^Pen%^V2VV%^Pen%^PAL*
* *kääʹlles0000*
* *jeä0kˈkel%^Pen%^PALE%^Pen%^PAL%^Pen%^KKK2ZERO*
* *jeeʹ000el000000*
* *seäh0tter%^Pen%^PALE%^Pen%^PAL%^Pen%^XYY2VY*
* *seeuʹt0er000000*
The left context allows for:
Vowel shortening, and j/v > Vow

**%{ʹØ%}:ʹ as transfer from left of v:u and all instances of modifier letter prime** - used +Ind+Prs+Pl3, uʹvdded+V+Ind+Prs+Pl3: ouʹdde
uʹvdded+V+Ind+Prs+Pl3: **give/antaa**
* *u%^1VOWv%{ʹØ%}dd%^VOWLower%^PAL%^XYY2VYY%>e*
* *o0uʹdd000%>e*
* *u%^1VOWv%{ʹØ%}dd%^PAL%^XYY2VY*
* *u0uʹd000*

täʹhtt+N+Pl+Nom: **bone/luu**
* *tä%^1VOWh%{ʹØ%}tt%^V2VV%^PAL%^XYY2VY*
* *tääuʹt0000*
täʹhtt+N+Pl+Gen: **bone/luu**
* *tä%^1VOW%{ʹØ%}h%{ʹØ%}tt%^V2VV%^VOWRaise%^PAL%^XYY2VY%>i*
* *taa0uʹt00000%>i*
kueiʹt+Num+Sg+Gen **two/kaksi**
* *kuâh%{ʹØ%}tt%^PALE%^PAL%^XYY2IY*
* *kueiʹt0000*
uʹvdded+V+Ind+Prs+Pl3: **give/antaa**
* *u%^1VOW%{ʹØ%}v%{ʹØ%}dd%^PAL%>ed*
* *u0ʹv0dd0%>e*
täʹhtt+N+Pl+Nom: **bone/luu**
* *tä%^1VOW%{ʹØ%}h%{ʹØ%}tt%^PAL*
* *tääuʹt0000*

siõrrâd+V+Ind+Prs+Pl3: **play/leikkiä**
* *siõ%{ʹØ%}r0r%^VOWLower%^PALÄ%^PAL%^CC2CCC%>e*
* *seäʹrˈr0000%>e*
* *saa%{ʹØ%}kk%^VV2V%^PAL%>e*
* *sa0ʹǩǩ00%>e*
tää%{ʹØ%}ss+N+Sg+Gen: **level/taso**
* ★*tää0ss%^PAL%^KK2GG* (is not standard language)
* ★*tää0zz00* (is not standard language)
* *mõõ%{ʹØ%}nn%^VV2V%^VOWLower%^PAL%>e*
* *mâ0ʹnn000%>e*
* *jåå%{ʹØ%}tt%^VV2V%^VOWRaise%^PAL%>e*
* *jo0ʹtt000%>e*
* *kuâ%{ʹØ%}ll%^PALE%^PAL*
* *kueʹll00*
* *stu%^1VOW%{VU%}%{ʹØ%}l%^PAL*
* *stu0uʹl0*
* *čââʹlmtẹ%^1VOW%{ʹØ%}m%^PAL*
* *čââʹlmte0ʹm0*
* *kä%^1VOW%{ʹØ%}lles%^Pen%^V2VV%^Pen%^PAL*
* *kääʹlles0000*
* *jeä%{ʹØ%}kˈkel%^Pen%^PALE%^Pen%^PAL%^Pen%^KKK2ZERO*
* *jeeʹ000el000000*
* *seäh%{ʹØ%}tter%^Pen%^PALE%^Pen%^PAL%^Pen%^XYY2VY*
* *seeuʹt0er000000*
The left context allows for:
Vowel shortening, and j/v > Vow

**d:đ in weak grade** - used in
* *ǩeä0dgg%^VOWRaise%^PALẸ%^PAL%^XYY2XY*
* *ǩiẹʹđj00000*

**Even-syllabic verbs I, Palatalization of g:ǧ** - used in
reäiʹǧǧ+N+Sg+Nom: **hole/reikä**
* *reäi0gg%^PAL*
* *reäiʹǧǧ0*
šäʹŋǧǧ+N+Sg+Com: **pasty/piirakka**
* *šä%^1VOW0ŋgg%^V2VV%^VOWRaise%^PAL%^XYY2XY%>in*
* *šaaʹŋǧ00000%>in*
vueʹlǧǧed+Use/NG+V+Ind+Prs+Pl3 **leave/lähteä**
* *vuâ0lgg%^PALÄ%^PAL%>a*
* *vuäʹlǧǧ00%>a*

bioloog+N+Sg+Ill **biologist**
* *bioloo0g%^PAL%>e*
* *biolooʹǧ0%>e*

**Even-syllabic verbs I, Palatalization of k:ǩ here** - used in

hääʹsǩ Perhaps the stem should simply be **häskk**
* *hää0sk%^PAL*
* *hääʹsǩ0*
mieʹlǩǩ+N+Sg+Acc: **milk/maito**
* *meâ0lkk%^VOWRaise%^PALE%^PAL%^CC2C*
* *mieʹlǩ00000*

rääʹǩǩes+A+Sg+Nom **beloved/rakas**
* *rä%^1VOW0kkes%^Pen%^V2VV%^Pen%^PAL*
* *rääʹǩǩes0000*
* *jo%^1VOW0kk%^PAL%>e*
* *jo0ʹǩǩ0%>e*
* *saa0kk%^VV2V%^PAL%>e*
* *sa0ʹǩǩ00%>e*
kåålvak+N+Sg+Loc
* *kåålvak%^RmVow%^PALK%>est*
* *kåålv0ǩ00%>est*

tõiŋsǩed+V+Inf
* *tõõiŋâsk^Pen^VV2V^RmVow^PALK>ed*
* *tõ0iŋ0sǩ0000>ed*
* ★*tõõiŋâsk^Pen^VV2V^RmVow^PALK>ed* (is not standard language)
* ★*tõ0iŋ0sk0000>ed* (is not standard language)

**Even-syllabic nouns I, Depalatalization of ǩ:k** - used in
* *mätkk%>a*
* *mätkk%>a*
kaađneǩ+N+Sg+Ill:
* *kaađnẹ^1VOW{ʹØ}ǩ{XC}^PALNo^C2CC>a*
* *kaađnẹ00kk00%>a*

prääʹzniǩ+N+Sg+Ill: **celebration/juhla**
* *prääʹzniǩ%^RmVow%^PALNo%>a*
* *prääʹzn0k00%>a*
* *kaaddâšǩ%^Pen%^VV2V%^Pen%^CC2C%^RmVow%^PALNo%>a*
* *ka0d00šk000000%>a*

**Even-syllabic nouns, removing palatalization in -est +Loc nouns** - removing palatalization in +Sg+Ill,  pieʹss:peässa
* *čââʹlmtẹ%^1VOWm%{XC%}%^C2CC%>a*
* *čââʹlmtẹ0mm0%>a*
stroitteʹl+N+Sg+Ill: **plant/laitos**
* *stroitteʹl%^RmVow%^PALNo%>a*
* *stroitt00l00%>a*
prääʹzniǩ+N+Sg+Ill: **celebration/juhla**
* *prääʹzniǩ%^RmVow%^PALNo%>a*
* *prääʹzn0k00%>a*

## Consonant QUANTITY CHANGE gradation rules

### Weakening Consonant Cluster

dealing with relative length changes
mõõnnâd : mõʹnne : mõõn

**Even syllabic verbs I, cg m:0** - used with  +Imp+Sg2, +Ind+Prs+ConNeg,
oolmaž+N+Sg+Nom: **person/henkilö**
* *o%^1VOWlmm%^V2VV%^XYY2XY%>až*
* *oolm000%>až*
* *sää0mm%^PAL%^CC2C*
* *sääʹm000*
kåʹmrded+V+Ind+Prs+Sg3 **bow**
* *kååʹmmerd%^PenVow2a*
* *kååʹmmard0*
mainstummuš+N+Err/Orth+Sg+Gen: **story telling/tarinointi**
* ★*mainstummu%^1VOWš%{XC%}%^Pen%^CC2C%^V2VV%^K2GG* (is not standard language)
* ★*mainstummuužž0000* (is not standard language)

**Even syllabic verbs I, cg for b** - used
neiʹbb+N+Sg+Gen: **knife/veitsi**
* *nẹ%^1VOWi0bb%^V2VV%^PAL%^CC2C*
* *neeiʹb0000*
vuäʹbb+N+Sg+Loc+PxSg2
* *vuä%{ʹØ%}bˈb%^VOWRaise%^PALẸ%^Allegro%^PAL%^CCC2CAllegro%>stad*
* *vuẹʹb0000000%>stad*
äʹrbb+N+Sg+Gen: **heritage/perintö**
* *ä%^1VOW0rbb%^V2VV%^PAL%^XYY2XY*
* *ääʹrb0000*
joorbâs+A+Sg+Nom
* *jo%^1VOWrbbâs%^Pen%^V2VV%^Pen%^XYY2XY*
* *joorb0âs0000*

**Even syllabic verbs I, second consonant loss p:0** - used in
* *ǩiâpp%^CC2C*
* *ǩiâv00*
* *vuäʹppest%^Pen%^CC2CAllegro%^RmVow%>ed*
* *vuäʹp00st000%>ed*
* *ka%^1VOWmppâr%^Pen%^V2VV%^Pen%^XYY2XY*
* *kaamp0âr0000*
* ★*ka%^1VOWmppâr%^Pen%^V2VV%^Pen%^XYY2XY* (is not standard language)
* ★*kaamppâr0000* (is not standard language)

**Even syllabic verbs I, cg v:0** - used with  +Imp+Sg2, +Ind+Prs+ConNeg, teevvad > teev
* *pẹ%^1VOWi0vv%^V2VV%^PAL%^CC2C*
* *peeiʹv0000*
tuõvâs+N+Sg+Nom: **candle/tuohus, kynttilä**
* *tuõvˈvâs%^Pen%^CCC2C*
* *tuõv00âs00*
juʹvjj+N+Sg+Loc+PxSg3:
* *ju%^1VOWv0jj%^VV2V%^PAL%^XYY2VY%>stes*
* *ju0uʹj0000%>stes*

**f:0** - used in

kaaʹff+N+Sg+Gen **coffee**
* *kaa0ff%^PAL%^CC2C*
* *kaaʹf000*

**Even syllabic verbs I, cg n:0** - used with  +Imp+Sg2, +Ind+Prs+ConNeg, jiõnn:jiõn
vueʹn+N+Sg+Nom: **mother-in-law/anoppi**
* *vuâ0nˈn%^PALE%^PAL%^CCC2C*
* *vueʹn00000*
jeäʹnn+N+Sg+Loc+PxSg1: **mother/äiti**
* *jeä0%{ʹØ%}nˈn%^PALẸ%^PAL%^CCC2CAllegro%>stan*
* *jiẹˈʹn00000%>stan*

**Even syllabic nouns I, with extra lengthening of vowel ij>ii/uv>uu and dd>d** - used with  +N+Sg+Nom > +N+Sg+Gen, sijdd > siid

* *ä%^1VOWldd%^V2VV%^XYY2XY*
* *ääld000*
* *ä%^1VOWldd%^V2VV%^VOWRaise%^XYY2XY%>už*
* *aald0000%>už*
* *u%^1VOWv0dd%^PAL%^XYY2VY*
* *u0uʹd000*
juʹrdded+V+Ind+Prs+Sg1 **think**
* *ju%^1VOWrdd%^V2VV%^VOWLower%^XYY2XY%>am*
* *joord0000%>am*

uʹvdded+V+Ind+Prs+4:
* *u%^1VOWv0dd%^PAL%^XYY2VY%>et*
* *u0uʹd000%>et*

- idd:id, +Imp+Sg2, +Ind+Prs+ConNeg double consonants following vowel and "i" at coda that become single consonants in gradation

**Even syllabic verbs I, cg for ʒ** - used with  pääʹʒʒelm+N+Sg+Ill: päʹʒlma
sauʒʒ+N+Pl+Nom **sheep/lammas**
* *sa%^1VOWuʒʒ%^V2VV%^XYY2XY*
* *saauʒ000*

**ǯ:0** - used in
kuʹvǯǯ+N+Sg+Gen
* *ku%^1VOWv0ǯǯ%^PAL%^XYY2VY*
* *ku0uʹǯ000*

**č:0** - used in

**c:0** - used in

**ž:0** - used in

väžsted+V+Inf
* *vääžžast^Pen^VV2V^Pen^CC2CAllegro^RmVow^PALK>ed*
* *vä0ž00st000000>ed*

**z:0** - used in
* *ǩeâsttez%^PenVow2a%^RmCns*
* *ǩeâstta000*

**Even syllabic verbs I, cg for đ** - used with  ǩiđđ:ǩiiđ
* *ǩi%^1VOWđđ%^V2VV%^CC2C*
* *ǩiiđ000*
* *o%^1VOWđđâs%^Pen%^V2VV%^Pen%^CC2C*
* *oođ0âs0000*

**Even syllabic verbs I, cg for r** - used with  võrr:võõr
* *võ%^1VOWrr%^V2VV%^CC2C*
* *võõr000*
* *paarr%^CC2C*
* *paar00*
* *jä%^1VOWu0rr%^V2VV%^PAL%^CC2C*
* *jääuʹr0000*
čårsted+V+Inf: **descriminate/syrjiä**
* *čåårrast%^Pen%^VV2V%^Pen%^CC2C%^RmVow%>ed*
* *čå0r00st00000%>ed*
* ★*čåårrast%^Pen%^VV2V%^Pen%^CC2C%^RmVow%>ed* (is not standard language)
* ★*čå0rr0st00000%>ed* (is not standard language)

**Even syllabic verbs I, cg for l** - used with  vuʹvll+N+Sg+Gen: vuuʹl
deriving
* *to%^1VOWll%^V2VV%^CC2C*
* *tool000*
* *stä%^1VOW0llj%^V2VV%^PAL%^CC2C*
* *stääʹl0j000*
alttõõlli+N+NomAg+Pl+Gen
* *alttõõll{ʼØ}i%^CC2C*
* *alttõõl00i0*

pääʹljes+N+Sg+Nom: **path/polku**
* *pä%^1VOW0lljes%^Pen%^V2VV%^Pen%^PAL%^Pen%^CC2C*
* *pääʹl0jes000000*
talsted+V+Inf:
* *taallâst%^Pen%^VV2V%^Pen%^CC2C%^RmVow%>ed*
* *ta0l00st00000%>ed*

vuʹvll+N+Sg+Gen:
* *vu%^1VOWv0ll%^PAL%^XYY2VY*
* *vu0uʹl000*

deriving kueʹll+N+Sg+Gen: kueʹl
* *kuâ0ll%^V2VV%^PALE%^PAL%^CC2C*
* *kueʹl00000*

**j:0 ** - used in

ǩeʹrjj+N+Pl+Nom: **book/kirja**
* *ǩẹ%^1VOW0rjj%^V2VV%^PAL%^XYY2XY*
* *ǩeeʹrj0000*
tuâjj+N+Sg+Acc: **work/työ**
* *tuâjj%^CC2C*
* *tuâj00*
tuâjj+N+Sg+Gen:tuâi
* *tuâjj%^J2I%^CC2C*
* *tuâi000*
* *po%^1VOWjjâs%^Pen%^V2VV%^Pen%^CC2C*
* *pooj0âs0000*

**Even syllabic verbs I, cg for g** - used in
cõõggâlm+N+Sg+Ill
* *cõõggâlm%^Pen%^VV2V%^Pen%^CC2C%^RmVow%>a*
* *cõ0g00lm00000%>a*
* *ǩeâlggal%^Pen%^XYY2XY*
* *ǩeâlǥ0al00*

äiʹǧǧ+N+Sg+Gen: **time/aika**
* *ä%^1VOWi0gg%^V2VV%^PAL%^XYY2XY*
* *ääiʹj0000*
reäiʹǧǧ+N+Pl+Nom: **hole/reikä**
* *reäi0gg%^PAL%^XYY2XY*
* *reäiʹj000*

GEMINATE TO WEAK QUALITY GEMINATE
**Even syllabic nouns I, with extra lengthening of vowel V>VV and KK>ǤǤ**  - used in
used with  +N+Sg+Nom > +N+Sg+Gen for cases like
lookki > looǥǥi.

čâustõk+N+Sg+Gen
* *čâustõ%^1VOW%{ʹØ%}k%{XC%}%^V2VV%^K2GG*
* *čâustõõ0ǥǥ00*
with allegro
čâustõk+N+Sg+Ela+PxSg3
* *čâustõ%{ʹØ%}k%^K2GAllegro%>stes*
* *čâustõ0ǥ0%>stes*

* *jo%^1VOWkk%^V2VV%^KK2GG*
* *jooǥǥ00*
čuâǥǥas+N+Sg+Nom  **road**
* *čuâkˈk%^KKK2GG%>as*
* *čuâǥ0ǥ0%>as*

loǥškueʹtted **begin to read**
* *loo%{ʹØ%}kk%^VV2V%^KK2GAllegro»škueʹtted*
* *lo00ǥ000»škueʹtted*

čõõǥǥâs
* *čõ%^1VOWkkâs%^Pen%^V2VV%^Pen%^KK2GG*
* *čõõǥǥâs0000*

**Even syllabic nouns I, with extra lengthening of vowel V>VV and k:j** - used in
used with
> .
tuʹmstõk+N+Der/Dimin+N+Pl+Nom: **decision/päätös, mietintö**
* *tuʹmstõ%^1VOW0k%{XC%}%^V2VV%^PAL%^K2GG%>e*
* *tuʹmstõõʹjj000%>e*

with allegro

* *suä0kk%^PALẸ%^PAL%^KK2GG*
* *suẹʹjj000*

* *jeä0kˈkel%^Pen%^PALE%^Pen%^PAL%^Pen%^KKK2GG%^RmVow%>až*
* *jeeʹj0j0l0000000%>až*

**Even syllabic nouns I, with extra lengthening of vowel V>VV and ǩ:j** - used in
used with
> .

**Even syllabic verbs I, Voicing š:ž** - ss:zz, +Imp+Sg2, +Ind+Prs+ConNeg, double consonants at coda become voiced in gradation
lookkmõš+N+Sg+Gen
* *lookkmõ%^1VOWš%{XC%}%^V2VV%^K2GG*
* *lookkmõõžž00*
with allegro

* *pååss%^VV2V%^KK2GAllegro»škuätt*
* *på0z000»škuätt*

mainstummuš+N+Sg+Gen:
* *mainstummuš%^VC*
* *mainstummuž0*

**Even syllabic verbs I, Voicing c:ʒ** - cc:zz, +Imp+Sg2, +Ind+Prs+ConNeg, double consonants at coda become voiced in gradation
* *čää0cc%^PAL%^KK2GG*
* *čääʹʒʒ00*
čääʹcc+N+Sg+Loc+PxSg3
* *čää0cc%^VV2V%^PAL%^KK2GAllegro%>stes*
* *čä0ʹʒ0000%>stes*
* *čää0cc%^PAL%^KK2GG%>stes*
* *čääʹʒʒ00%>stes*
* *puõcˈc%^VOWLower%^PALÄ%^KKK2GG*
* *puäʒ0ʒ000*
* *pååss%^VV2V%^KK2GAllegro»škuätt*
* *på0z000»škuätt*

õõʒʒâs+N+Sg+Nom: **high water/vuoksi**
* *õ%^1VOWccâs%^Pen%^V2VV%^Pen%^KK2GG*
* *õõʒʒâs0000*

**Even syllabic verbs I, Voicing č:j** - ss:zz, +Imp+Sg2, +Ind+Prs+ConNeg, double consonants at coda become voiced in gradation

* *pååss%^VV2V%^KK2GAllegro»škuätt*
* *på0z000»škuätt*

**Even syllabic verbs I, Voicing after long vowel or diphthong s:z s:z** - ss:zz, +Imp+Sg2, +Ind+Prs+ConNeg, double consonants at coda become voiced in gradation
tääʹss+N+Sg+Gen: **level/taso**
* *tää0ss%^PAL%^KK2GG*
* *tääʹzz00*
* *mättʼtõ%^1VOWs%{XC%}%^V2VV%^K2GG*
* *mättʼtõõzz00*
with allegro

cieʹǩǩes+N+Sg+Gen: **trick, type of ear mark/tikki, pykälä**
* ★*ciâkˈkes%^Pen%^VOWLower%^PenVow2a%^VC* (is not standard language)
* ★*ceäkˈkas0000* (is not standard language)
* *pååss%^VV2V%^KK2GAllegro»škuätt*
* *på0z000»škuätt*

čårrõs+N+Sg+Gen
* *čårrõ%^1VOW%{ʹØ%}s%{XC%}%^V2VV%^K2GG*
* *čårrõõ0zz00*

**Even syllabic verbs I, second consonant loss t:0** - used in
autt+N+Pl+Nom **car/auto**
* *a%^1VOWutt%^V2VV%^CC2C*
* *aaut000*
põrtt+N+Pl+Nom **house/talo**
* *põ%^1VOW%{ʹØ%}rtt%^V2VV%^XYY2XY*
* *põõ0rt000*

* *ko%^1VOWnttâr%^Pen%^V2VV%^Pen%^XYY2XY*
* *koont0âr0000*
piiutâs+N+Sg+Nom **clothing/vaate**
* *pi%^1VOWhttâs%^Pen%^V2VV%^Pen%^XYY2VY*
* *piiut0âs0000*

**Even syllabic verbs I, third consonant loss** - lgg:lǥ, Vow Ca Cx Cx:0, +Imp+Sg2, +Ind+Prs+ConNeg, double consonants following consonant at coda that become single consonants in gradation

šapšš+N+Sg+Gen **white fish/siika**
* *ša%^1VOWpšš%^V2VV%^XYY2XY*
* *šaapš000*

**Consonant loss s:0** - used in

* *sä%^1VOWhss%^V2VV%^XYY2VY%>am*
* *sääus000%>am*

uhss+N+Sg+Gen **door**
* *uhss%^XYY2VY*
* *uus00*

ǩeäsʼsted+V+Inf:
* *ǩeä%{ˈ1%}ssast^Pen^CC2CAllegro^RmVow^PALK>ed*
* *ǩeäˈs00st0000>ed*
âʹpsted+V+Inf: **smell a little/haiskahtaa**
* *ââʹpsest%^Pen%^VV2V%^RmVow*
* *â0ʹp00st000*

**Consonant loss ŋ:0** - used in

**Consonant loss h:0** - used in
ruʹhss+N+Sg+Loc+PxSg3:
* *ru%^1VOW0hss%^VV2V%^PAL%^XYY2VY%>stes*
* *ru0ʹ0s0000%>stes*

**Even syllabic verbs I, t>đ** - tt:đ
ǩiõtt+N+Sg+Loc+PxSg1 **hand,arm/käsi**
* *ǩiõ0tt%^Allegro%^PAL%^CC2CAllegro%>stan*
* *ǩiõʹđ0000%>stan*
autt+N+Pl+Nom **car/auto**
* ★*a%^1VOWutt%^V2VV%^CC2C* (is not standard language)
* ★*aauđ000* (is not standard language)
puuttâd+V+Ind+Prt+Sg3: **end/loppua**
* *puutt%^CC2C%>i*
* *puuđ00%>i*
kääđas+N+Sg+Nom:
kä%^1VOWttas%^Pen%^V2VV%^Pen%^CC2C
kääđ0as0000

**Even syllabic nouns I, p>v** - pp:v
* *ǩiâpp%^CC2C*
* *ǩiâv00*
* *heäpˈpaš%^Pen%^CCC2C*
* *heäv00aš00*

**Consonant quality change ǥ:j** - used in
* *lääi0ǥ%^PAL*
* *lääiʹj0*
čiõʹlj+N+Sg+Nom: **back/selkä**
* *čeâ%{ʹØ%}lǥ%^VOWRaise%^PAL*
* *čiõʹlj00*

* *jäämalǥ%^Pen%^VV2V%^RmVow%^PALK%>ed*
* *jä0m0lj0000%>ed*

**Even syllabic verbs I, second consonant loss k:0** - used in
loǥškueʹtted **begin to read**
* *lookk%^VV2V%^KK2GAllegro»škueʹtted*
* *lo0ǥ000»škueʹtted*
mieʹlǩǩ+N+Sg+Acc: **milk/maito**
* *meâ0lkk%^VOWRaise%^PALE%^PAL%^CC2C*
* *mieʹlǩ00000*
* *pååss%^VV2V%^KK2GAllegro»škuätt*
* *på0z000»škuätt*
taalkâs+N+Sg+Nom
* *ta%^1VOWlkkâs%^Pen%^V2VV%^Pen%^XYY2XY*
* *taalk0âs0000*

* *jeä0kˈkel%^Pen%^PALE%^Pen%^PAL%^Pen%^KKK2ZERO*
* *jeeʹ000el000000*
nââʹer+N+Sg+Nom sleep
* *nâ%^1VOW0kker%^Pen%^V2VV%^Pen%^PAL%^Pen%^KK2ZERO*
* *nââʹ00er000000*

**Even syllabic verbs I, second consonant loss ǩ:0** - used in

eʹǩrded+V+Inf
* *eeʹǩǩerd%^Pen%^VV2V%^Pen%^CC2C%^RmVow%>ed*
* *e0ʹǩ00rd00000%>ed*

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
* *kaađnẹ%^1VOW{ʹØ}ǩ{XC}%^PALNo%^C2CC>a*
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
* *kuâl0l%^CC2CCC%>a*
* *kuâlˈl0%>a*

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

tuâjj+N+Cmp/SgNom+Cmp#joukk+N+Sg+Nom:  **team/työryhmä**
* *tuâjj#joukk*
* *tuâjj%-joukk*
* ★*tuâjj#joukk* (is not standard language)
* ★*tuâjj#joukk* (is not standard language)
sääʹmm+N+Cmp/SgGen+Cmp#musikk+N+Sg+Nom: **Skolt Sámi music/kolttamusiikki**
sää0mm%PAL%^CC2C%{-Ø%}#musikk
sääʹm000%-#musikk

* * *

<small>This (part of) documentation was generated from [src/fst/phonology.twolc](https://github.com/giellalt/lang-sms/blob/main/src/fst/phonology.twolc)</small>

---

