




# Skolt Sámi disambiguator
Note: This documentation file is still work-in-progress, and should not yet be used. Read the source file instead.

## Delimiters 


 DELIMITERS = "<.>" "<!>" "<?>" "<...>" "<¶>"; #


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


### Illative or genetive



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












