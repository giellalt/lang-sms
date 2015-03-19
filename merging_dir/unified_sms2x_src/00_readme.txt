----------------------------------------------
Issues outlined here deal with the merging of sml materials
-----
For CG: Here is an example of fin-sms representation from the V-sms2x.xml:
There are 8 Finnish entries 209-216.
In the sml-materials we have:
----
         <p id="1">Identification number for the Finnish head word</p>
         <p id="2">Finnish word</p>
         <p id="3">SUOMI-ERIKOINEN</p>
         <p id="4">Scientific terminology, such as flora and fauna</p>
         <p id="5">Back-to-front representation ATTLOK &lt; KOLTTA</p>
         <p id="6">Skolt Sami translation</p>
         <p id="7">KOLTTA-ERIKOINEN</p>
         <p id="8">Nominative plural form</p>
         <p id="9">Illative singular form</p>
         <p id="10">Attributive form</p>
         <p id="11">Dialect represented</p>
         <p id="12">English translation</p>
         <p id="13">TYPE, variety for category, i.e. terrain=maasto, fauna=eläin, flora=kasvi, bird=lintu, weather=sää, fish=kala, kin=suku, mushroom=sieni, celebration=juhla, measurement=mitta, atk, color=väri, star=tähti, weather forecast=sääennuste, spices=mauste. Must deal with the set (verb=verbi::name=nimi::name, place=nimi, paikka::saying=sanonta::)</p>
         <p id="14">Language of origin (Finnish=suomi::English=englanti::Russian=venäjä)</p>
         <p id="15">Source, i.e. dictionary. This element appears to contain a lot of irregularity; content for (1) the Finnish, (2) the Skolt Sami. There are less than 50 of these, they ought to be done by hand.</p>
         <p id="16">CHECK: this is where a flag is set for whether a word still requires checking or not.</p>
         <p id="17">Inflection information is set up here: In the case of verbs, there is only a number "800" to indicate that the word is a verb. Words that tend not to inflect, such as adverbs, postpositions, prepositions, particles etc. have the number "1000".</p>

----
   <e_u id="sms_bag_4895">
      <map stamp="fm_5456:sml_209:sml_210:sml_211:sml_212:sml_213:sml_214:sml_215:sml_216"/>
      <e id="fm_5456">
         <rev-sort_key>dâccia</rev-sort_key>
         <lg>
            <l pos="V">aiccâd</l>
            <stg>
               <st Contlex="V_">aiccâd</st>
            </stg>
         </lg>
         <mg>
            <tg xml:lang="fin">
               <t>aavistaa; havaita</t>
            </tg>
            <tg xml:lang="eng">
               <t>to suspect, anticipate</t>
            </tg>
         </mg>
         <content>
            <inc-transl>
               <c name="German">ahnen, voraussehen</c>
               <c name="Russian">предчувствовать, догадываться</c>
               <c name="Norwegian">ane, oppdage, få øye på</c>
               <c name="Finnish">aavistaa; havaita</c>
               <c name="English">to suspect, anticipate</c>
            </inc-transl>
            <inc-audio>
               <c name="ID_Audio">5457</c>
               <c name="Reader">1</c>
               <c name="Recording">1</c>
               <c name="included">yes</c>
            </inc-audio>
         </content>
      </e>
      <e id="sml_209">
         <rev-sort_key>dâccia</rev-sort_key>
         <lg>
            <l>aiccâd</l>
         </lg>
         <content>
            <p id="1"/>
            <p id="2">aavistaa</p>
            <p id="3">aistia</p>
            <p id="4"/>
            <p id="5">dâccia</p>
            <p id="6">aiccâd</p>
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
         </content>
      </e>
      <e id="sml_210">
         <rev-sort_key>dâccia</rev-sort_key>
         <lg>
            <l>aiccâd</l>
         </lg>
         <content>
            <p id="1">27069</p>
            <p id="2">vainuta</p>
            <p id="3">vaistota</p>
            <p id="4"/>
            <p id="5">dâccia</p>
            <p id="6">aiccâd</p>
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
         </content>
      </e>
      <e id="sml_211">
         <rev-sort_key>dâccia</rev-sort_key>
         <lg>
            <l>aiccâd</l>
         </lg>
         <content>
            <p id="1">27075</p>
            <p id="2">vaistota</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">dâccia</p>
            <p id="6">aiccâd</p>
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
         </content>
      </e>
      <e id="sml_212">
         <rev-sort_key>dâccia</rev-sort_key>
         <lg>
            <l>aiccâd</l>
         </lg>
         <content>
            <p id="1">249</p>
            <p id="2">aistia</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">dâccia</p>
            <p id="6">aiccâd</p>
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
         </content>
      </e>
      <e id="sml_213">
         <rev-sort_key>dâccia</rev-sort_key>
         <lg>
            <l>aiccâd</l>
         </lg>
         <content>
            <p id="1">21025</p>
            <p id="2">saada</p>
            <p id="3">vihiä</p>
            <p id="4"/>
            <p id="5">dâccia</p>
            <p id="6">aiccâd</p>
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
         </content>
      </e>
      <e id="sml_214">
         <rev-sort_key>dâccia</rev-sort_key>
         <lg>
            <l>aiccâd</l>
            <variants>
               <l_syn>hoʹhssjed</l_syn>
            </variants>
         </lg>
         <content>
            <p id="1">3464</p>
            <p id="2">hoksata</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">dâccia</p>
            <p id="6" syn="hoʹhssjed">aiccâd</p>
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
         </content>
      </e>
      <e id="sml_215">
         <rev-sort_key>dâccia</rev-sort_key>
         <lg>
            <l>aiccâd</l>
            <variants>
               <l_syn>huõmsted</l_syn>
            </variants>
         </lg>
         <content>
            <p id="1">2746</p>
            <p id="2">havaita</p>
            <p id="3">huomata</p>
            <p id="4"/>
            <p id="5">dâccia</p>
            <p id="6" syn="huõmsted">aiccâd</p>
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
         </content>
      </e>
      <e id="sml_216">
         <rev-sort_key>dâccia</rev-sort_key>
         <lg>
            <l>aiccâd</l>
            <variants>
               <l_syn>vuâmmšed</l_syn>
            </variants>
         </lg>
         <content>
            <p id="1">3703</p>
            <p id="2">huomata</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">dâccia</p>
            <p id="6" syn="vuâmmšed">aiccâd</p>
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
         </content>
      </e>
   </e_u>
==>
<e id="sml_209" inNo="">
    <lg>
        <l pos="V">aavistaa</l>
            <variants>
               <l_syn>aistia</l_syn>
            </variants>
        </lg>
    <mg>
        <tg xml:lang="sms">
            <t pos="V">aiccâd</t>
        </tg>
    </mg>
</e>
_________________
CG comments:
   - pos values are obviously found in <p id="13">verbi</p>
   - what about the infor in <p id="17">800</p>?
JR answers:
   - the info in <p id="17">800</p> indicates verb; there are more of these
_________________

<e id="sml_210" inNo="27069">
    <lg>
        <l pos="V">vainuta</l>
            <variants>
               <l_syn>vaistota</l_syn>
            </variants>
        </lg>
    <mg>
        <tg xml:lang="sms">
            <t pos="V">aiccâd</t>
        </tg>
    </mg>
</e>
<e id="sml_211" inNo="27075">
    <lg>
        <l pos="V">vaistota</l>
    </lg>
    <mg>
        <tg xml:lang="sms">
            <t pos="V">aiccâd</t>
        </tg>
    </mg>
</e>
<e id="sml_212" inNo="249">
    <lg>
        <l pos="V">aistia</l>
    </lg>
    <mg>
        <tg xml:lang="sms">
            <t pos="V">aiccâd</t>
        </tg>
    </mg>
</e>
<e id="sml_213" inNo="21025">
    <lg>
        <l pos="V">saada vihiä</l>
        </lg>
    <mg>
        <tg xml:lang="sms">
            <t pos="V">aiccâd</t>
        </tg>
    </mg>
</e>
_________________
CG comments:
 - how comes that both 'saada' and 'vihiä'
    landed here in the same elementn namely <l> 
            <p id="2">saada</p>
            <p id="3">vihiä</p>
	while with id="sml_210"

            <p id="2">vainuta</p>
            <p id="3">vaistota</p>

you got this structure

            <l pos="V">vainuta</l>
            <variants>
               <l_syn>vaistota</l_syn>
            </variants>
? (it was a long question)

 - if inconsistencies then these should be systematically check for
   and corrected BEFORE any other transformation towards a gt-like
   dictionary xml structure.
JR answers:
 - There was a problem with  'saada' and 'vihiä', namely, the first is a verb and the second is the object. This was a hand correction.
_________________

<e id="sml_214" inNo="3464">
    <lg>
        <l pos="V">hoksata</l>
        </lg>
    <mg>
        <tg xml:lang="sms">
            <t pos="V">aiccâd</t>
            <t pos="V">hoʹhssjed</t>
        </tg>
    </mg>
</e>
<e id="sml_215" inNo="2746">
    <lg>
        <l pos="V">havaita</l>
            <variants>
               <l_syn>huomata</l_syn>
            </variants>
        </lg>
    <mg>
        <tg xml:lang="sms">
            <t pos="V">aiccâd</t>
            <t pos="V">huõmsted</t>
        </tg>
    </mg>
</e>
<e id="sml_216" inNo="3703">
    <lg>
        <l pos="V">huomata</l>
        </lg>
    <mg>
        <tg xml:lang="sms">
            <t pos="V">aiccâd</t>
            <t pos="V">vuâmmšed</t>
        </tg>
    </mg>
</e>
--------------
TODO:
 - find the opposite type of <e_u>-structure:
    not many sml-entries to unify but a very complex
    structure in the t-part; try to gt-transform it

Here some examples:

      <e id="sml_26739">
         <rev-sort_key>rruš</rev-sort_key>
         <lg>
            <l>šurr</l>
            <variants>
               <l_syn>jõnn</l_syn>
            </variants>
         </lg>
         <content>
            <p id="1">23259</p>
            <p id="2">suuri</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">rruš</p>
            <p b_info="(-šuur, -šuʹrre)" id="6" syn="jõnn (attr.)">šurr</p>
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
            <p id="17">1.111</p>
         </content>
      </e>
      <e id="sml_7741">
         <rev-sort_key>sârõõk</rev-sort_key>
         <lg>
            <l>kõõrâs</l>
         </lg>
         <content>
            <p id="1"/>
            <p id="2">voimakas</p>
            <p id="3">ankara, kova</p>
            <p id="4"/>
            <p id="5">sârõõk</p>
            <p b_info="(kõrrâz)" id="6">kõõrâs</p>
            <p id="7"/>
            <p id="8"/>
            <p id="9"/>
            <p id="10">kõrr</p>
            <p id="11"/>
            <p id="12"/>
            <p id="13"/>
            <p id="14"/>
            <p id="15"/>
            <p id="16"/>
            <p id="17">1.2</p>
         </content>
      </e>

      <e id="sml_7692">
         <rev-sort_key>sâmlõõk</rev-sort_key>
         <lg>
            <l>kõõlmâs</l>
            <variants>
               <l_var>kõõumâs</l_var>
            </variants>
         </lg>
         <content>
            <p id="1">24005</p>
            <p id="2">tajuton: tajuttomaksi</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">sâmlõõk</p>
            <p id="6" var="kõõumâs">kõõlmâs</p>
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
         </content>
       </e>


      <e id="sml_7784">
         <rev-sort_key>sâmuõõk</rev-sort_key>
         <lg>
            <l>kõõumâs</l>
            <variants>
               <l_attr>kõumm</l_attr>
               <l_var>kõõlmâs</l_var>
            </variants>
         </lg>
         <content>
            <p id="1">10111</p>
            <p id="2">kylmä</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">sâmuõõk</p>
            <p attr="#kõumm" id="6" var="kõõlmâs">kõõumâs</p>
            <p id="7"/>
            <p id="8"/>
            <p id="9"/>
            <p id="10">kõlmm</p>
            <p id="11"/>
            <p id="12"/>
            <p id="13"/>
            <p id="14"/>
            <p id="15"/>
            <p id="16"/>
            <p id="17">1.2</p>
         </content>
      </e>


      <e id="sml_27701">
         <rev-sort_key>sâduiit</rev-sort_key>
         <lg>
            <l>tiiudâs</l>
         </lg>
         <content>
            <p id="1">26266</p>
            <p id="2">täysinäinen</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">sâduiit</p>
            <p b_info="(tiuddâz, tiuddsa, #tiudd-)" id="6">tiiudâs</p>
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
            <p id="17">1.2</p>
         </content>
      </e>

      <e id="sml_29179">
         <rev-sort_key>cclʹåt</rev-sort_key>
         <lg>
            <l>tåʹlcc</l>
            <variants>
               <l_syn>mieʹrres</l_syn>
            </variants>
         </lg>
         <content>
            <p id="1">25986</p>
            <p id="2">tylsä</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">cclʹåt</p>
            <p b_info="(#tååʹlces)" id="6" syn="mieʹrres (attr.)">tåʹlcc</p>
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
            <p id="17">3.11</p>
         </content>
      </e>


      <e id="sml_574">
         <rev-sort_key>ǩelʹââ</rev-sort_key>
         <lg>
            <l>ââʹleǩ</l>
            <variants>
               <l_syn>seenai</l_syn>
               <l_var>ââʹliǩ</l_var>
            </variants>
         </lg>
         <content>
            <p id="1">22166</p>
            <p id="2">sininen</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">ǩelʹââ</p>
            <p id="6" syn="seenai" var="ââʹliǩ">ââʹleǩ</p>
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
            <p id="17">1.2</p>
         </content>
      </e>

      <e id="sml_26739">
         <rev-sort_key>rruš</rev-sort_key>
         <lg>
            <l>šurr</l>
            <variants>
               <l_syn>jõnn</l_syn>
            </variants>
         </lg>
         <content>
            <p id="1">23259</p>
            <p id="2">suuri</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">rruš</p>
            <p b_info="(-šuur, -šuʹrre)" id="6" syn="jõnn (attr.)">šurr</p>
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
            <p id="17">1.111</p>
         </content>
      </e>


      <e id="sml_29039">
         <rev-sort_key>anäut</rev-sort_key>
         <lg>
            <l>tuäna</l>
            <variants>
               <l_syn>tåna</l_syn>
               <l_syn>tååna</l_syn>
            </variants>
         </lg>
         <content>
            <p id="1">24528</p>
            <p id="2">te kaksi</p>
            <p id="3"/>
            <p id="4"/>
            <p id="5">anäut</p>
            <p b_info="(tuännaid)" id="6" syn="tåna ~ tååna (tånnaid)">tuäna</p>
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
         </content>
      </e>

 CG comment:
  - as orientation
    1. check all <p id="N">-elements systematically for
        regularities/irregularities

    2. check all attributes in <p id="6"> systematically and give a
        description of what they mean and how to be transformed into
        the gt-like dict-structure

