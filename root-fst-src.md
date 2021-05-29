

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
 * **+ACRO** 

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
 * **+Foc/AA** more specifically, exactly, contrast. used with Pron and Adv 
 * **+Foc/ǥo** 
 * **+Foc/go** 
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

 * **+ABBR** Abbreviation 
 * **+Symbol** = independent symbols in the text stream, like £, €, © 
 * **+ACR**  Acronym 
 * **+CLB**  Clause border (full stop, comma..) 
 * **+PUNCT**  punctuation 
 * **+LEFT**  left paranthesis 
 * **+RIGHT**  right paranthesis 
 * **^GUESSNOUNROOT** 
 * **+Dyn**  Dynamically generated (acronyms) 
 * **+Prefix**  prefix 

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
 * **%^Allegro** This introduces vertical bar after diphth before consonants 
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
 * **%^RmCns.** for removing stem final consonant, e.g. final z in ǩeeʹstes:ǩeâsttez ǩeâstta 
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
 * **+Err/Orth-k-kh** substandard k, not in normative fst ǩ 
 * **+Err/Orth-a-y** substandard a, not in normative fst â 
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
 * **+Use/GC** only retained in the HFST Grammar Checker disambiguation analyser 
 * **+Use/-GC** never retained in the HFST Grammar Checker disambiguation analyser 

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
| --- | --- @P.AssocColl.ON@ !!≈ * **+Use/-PMatch** Used with Kin terms and Ant 
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
 |  **@P.Pmatch.Backtrack@** | tbw



# Basic lexica, pointing to the other lexicon files 


 * **LEXICON Root** 
 * **Abbreviation ;** abbreviations 
 * **Adposition ;** 
 * **@U.Cap.Obl@ ProperNoun ;** 
 * **@U.Cap.Opt@ ProperNoun ;** 

 * **VerbRoot ;** 
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
 * **LEXICON NUM_KUEQHTT** kueʹhtt:kuâhtt 
NUM_KUEQHTT 
NUM_NELLJ 

NUM_AANAR 

NUM_ATOM 
NUM_JEAQNNN 



 * **LEXICON NUM_LO** kuttlo:kuttl 
NUM_LO 
 * **:ååǥǥ DET_NEELLJAD ;** This ordinal derivation 
 * **LEXICON NUM_LOAOAI** lååi:l  THIS looks like allegro 
NUM_LOAOAI 


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
