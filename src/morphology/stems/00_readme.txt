
2015-06-05
should the element infl/form structure be changed to analysis + wordform
      <infl>
        <form gloss="Pron_Rel_Sg_Gen">mõõn</form>

        <form gloss="Pron_Rel_Sg_Acc">mõõn</form>

        <form gloss="Pron_Rel_Sg_Ill">mõõzz</form>

        <form gloss="Pron_Rel_Pl_Nom">mõõk</form>

        <form gloss="Pron_Rel_Pl_Acc">mâiʹd</form>
      </infl>

OR
        <!-- Pedagogical mini paradigm -->
        <analysis>Pron_Pers_Du_Nom</analysis>
        <mini_paradigm>
            <analysis ms="Pron_Pers_Du_Nom">
                <wordform>muäna</wordform>
            </analysis>
            <analysis ms="Pron_Pers_Du_Acc">
                <wordform>muännaid</wordform>
            </analysis>
            <analysis ms="Pron_Pers_Du_Gen">
                <wordform>muännai</wordform>
            </analysis>
            <analysis ms="Pron_Pers_Du_Ill">
                <wordform>muännaid</wordform>
            </analysis>
            <analysis ms="Pron_Pers_Du_Loc">
                <wordform>muännast</wordform>
            </analysis>
            <analysis ms="Pron_Pers_Du_Com">
                <wordform>muännain</wordform>
            </analysis>
            <analysis ms="Pron_Pers_Du_Par">
                <wordform>muännaitää</wordform>
            </analysis>
            <analysis ms="Pron_Pers_Du_Ess">
                <wordform>muännan</wordform>
            </analysis>
        </mini_paradigm>

Ryan: NDS currently uses <mini_paradigm /> and <analysis /> for some paradigms.
I could change this for sma without affecting sme, but i'd prefer to keep it
consistent.

###
The state of merging in the *_sms2x.xml files:
A lot of the content has been converted into elements that can be moved or copied to the appropriate position in the merged structure.
(1) sml reference numbers have been moved into the <map/> beginning tag.
(2) <infl/> elements have been converted to <mini_paradigm/> elements
(3) material from Moshnikoff has also been adapted to the <mini_paradigm/> elements
(4) <tg/> elements have more or less been alphabetized.

## 2015-09-12
Merging has been completed in: 
N_Prop_sms2x
CC_sms2x

