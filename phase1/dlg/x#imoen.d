/* CONTENTS */
/* Friend talks */
///* Friend talk 1 */
///* Friend talk 2 */
/* Beregost talk */
/* At the Elfsong */
/* Script - at waking after Dream 1 */
/* At waking after dream 2 */
/* Tarnesh scroll */
/* Firewine Bridge */
/* Quayle */
/* Imoen's artifact */
/* Yeslick's story */
/* NPC Banters */
/* Pink Xan dialogues */
///* Random banter, the one that could formerly occur only in chapter 3 */
///* Imoen turns Xan pink */
///* Xan's initial complaint */
///* Xan Complains a second time */

APPEND ~%IMOEN_JOINED%~

///* Friend talk 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ImFriendTalk","GLOBAL",2)~ THEN BEGIN IMPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#ImFriendTalk","GLOBAL",3) SetGlobal("X#ImFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#ImFriendTalkTime","GLOBAL",1800)~ GOTO IMPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#ImFriendTalk","GLOBAL",3) SetGlobal("X#ImFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#ImFriendTalkTime","GLOBAL",1800)~ GOTO IMPC1.1
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#ImFriendTalk","GLOBAL",3) SetGlobal("X#ImFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#ImFriendTalkTime","GLOBAL",1800)~ GOTO IMPC1.2
IF ~~ THEN REPLY @4 DO ~SetGlobal("X#ImFriendTalk","GLOBAL",3) SetGlobal("X#ImFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#ImFriendTalkTime","GLOBAL",1800)~ GOTO IMPC1Gorion
END

IF ~~ IMPC1Gorion
SAY @5
= @6
IF ~~ THEN REPLY @7 GOTO IMPC1.3.1
IF ~~ THEN REPLY @8 GOTO IMPC1.3.1
IF ~~ THEN REPLY @9 GOTO IMPC1.3
END

IF ~~ THEN BEGIN IMPC1.1
SAY @10
IF ~~ THEN REPLY @7 GOTO IMPC1.3.1
IF ~~ THEN REPLY @11 GOTO IMPC1.3
IF ~~ THEN REPLY @9 GOTO IMPC1.3
END

IF ~~ THEN BEGIN IMPC1.2
SAY @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC1.3
SAY @13
= @14
= @15
IF ~~ THEN REPLY @16 GOTO IMPC1.4
IF ~~ THEN REPLY @17 GOTO IMPC1.5
END

IF ~~ THEN BEGIN IMPC1.3.1
SAY @18
= @14
= @15
IF ~~ THEN REPLY @16 GOTO IMPC1.4
IF ~~ THEN REPLY @17 GOTO IMPC1.5
END

IF ~~ THEN BEGIN IMPC1.4
SAY @19
IF ~~ THEN GOTO IMPC1.5
END

IF ~~ THEN BEGIN IMPC1.5
SAY @20
IF ~~ THEN GOTO IMPC1.6
END

IF ~~ THEN BEGIN IMPC1.6
SAY @21
IF ~~ THEN EXIT
END

///* Friend talk 2 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ImFriendTalk","GLOBAL",4)~ THEN BEGIN IMPC2
SAY @22
IF ~~ THEN REPLY @23 DO ~SetGlobal("X#ImFriendTalk","GLOBAL",5) SetGlobal("X#ImFriendCheck","GLOBAL",0)~ GOTO IMPC2.1
IF ~~ THEN REPLY @24 DO ~SetGlobal("X#ImFriendTalk","GLOBAL",5) SetGlobal("X#ImFriendCheck","GLOBAL",0)~ GOTO IMPC2.2
IF ~~ THEN REPLY @25 DO ~SetGlobal("X#ImFriendTalk","GLOBAL",5) SetGlobal("X#ImFriendCheck","GLOBAL",0)~ GOTO IMPC2.3
IF ~~ THEN REPLY @26 DO ~SetGlobal("X#ImFriendTalk","GLOBAL",5) SetGlobal("X#ImFriendCheck","GLOBAL",0)~ GOTO IMPC2.4
END

IF ~~ THEN BEGIN IMPC2.1
SAY @27
IF ~~ THEN GOTO IMPC2.5
END

IF ~~ THEN BEGIN IMPC2.2
SAY @28
IF ~~ THEN GOTO IMPC2.5
END

IF ~~ THEN BEGIN IMPC2.3
SAY @29
IF ~~ THEN GOTO IMPC2.5
END

IF ~~ THEN BEGIN IMPC2.4
SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC2.5
SAY @31
IF ~~ THEN REPLY @32 GOTO IMPC2.6
IF ~~ THEN REPLY @26 DO ~SetGlobal("X#IMPC2","LOCALS",1)~ GOTO IMPC2.4
END

IF ~~ THEN BEGIN IMPC2.6
SAY @33
IF ~~ THEN REPLY @34 GOTO IMPC2.7
IF ~~ THEN REPLY @35 GOTO IMPC2.4
IF ~~ THEN REPLY @26 GOTO IMPC2.4
END

IF ~~ THEN BEGIN IMPC2.7
SAY @36
IF ~~ THEN EXIT
END

/* Beregost talk */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#ImoenBereg","GLOBAL",1)~ THEN BEGIN IMPC3
SAY @37
IF ~~ THEN REPLY @38 DO ~SetGlobal("X#ImoenBereg","GLOBAL",2)~ GOTO IMPC3.1
IF ~~ THEN REPLY @39 DO ~SetGlobal("X#ImoenBereg","GLOBAL",2)~ GOTO IMPC3.2
IF ~~ THEN REPLY @40 DO ~SetGlobal("X#ImoenBereg","GLOBAL",2)~ GOTO IMPC3.3
IF ~~ THEN REPLY @41 DO ~SetGlobal("X#ImoenBereg","GLOBAL",2)~ GOTO IMPC3.4
IF ~~ THEN REPLY @42 DO ~SetGlobal("X#ImoenBereg","GLOBAL",2)~ GOTO IMPC3.15
END

IF ~~ THEN BEGIN IMPC3.1
SAY @43
IF ~~ THEN REPLY @44 GOTO IMPC3.6
IF ~~ THEN REPLY @45 GOTO IMPC3.7
IF ~~ THEN REPLY @46 GOTO IMPC3.8
END

IF ~~ THEN BEGIN IMPC3.2
SAY @47
IF ~~ THEN REPLY @48 GOTO IMPC3.7
IF ~Gender(Player1,MALE)~ THEN REPLY @49 GOTO IMPC3.8
IF ~Gender(Player1,FEMALE)~ THEN REPLY @50 GOTO IMPC3.8
IF ~~ THEN REPLY @51 GOTO IMPC3.8
END

IF ~~ THEN BEGIN IMPC3.3
SAY @52
IF ~~ THEN GOTO IMPC3.10
END

IF ~~ THEN BEGIN IMPC3.4
SAY @53
IF ~~ THEN GOTO IMPC3.10
END

IF ~~ THEN BEGIN IMPC3.6
SAY @54
IF ~~ THEN GOTO IMPC3.3
END

IF ~~ THEN BEGIN IMPC3.7
SAY @55
IF ~~ THEN GOTO IMPC3.3
END

IF ~~ THEN BEGIN IMPC3.8
SAY @56
IF ~~ THEN GOTO IMPC3.3
END

IF ~~ THEN BEGIN IMPC3.9
SAY @57
IF ~~ THEN GOTO IMPC3.3
END

IF ~~ THEN BEGIN IMPC3.10
SAY @58
IF ~~ THEN GOTO IMPC3.11
END

IF ~~ THEN BEGIN IMPC3.11
SAY @59
IF ~~ THEN REPLY @60 GOTO IMPC3.12
IF ~~ THEN REPLY @61 GOTO IMPC3.15
END

IF ~~ THEN BEGIN IMPC3.12
SAY @62
IF ~~ THEN REPLY @63 GOTO IMPC3.13
IF ~~ THEN REPLY @64 GOTO IMPC3.14
IF ~~ THEN REPLY @61 GOTO IMPC3.15
END

IF ~~ THEN BEGIN IMPC3.13
SAY @65
IF ~~ THEN GOTO IMPC3.14
END

IF ~~ THEN BEGIN IMPC3.14
SAY @66
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC3.15
SAY @67
IF ~~ THEN EXIT
END

/* At the Elfsong */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ImoenGift","GLOBAL",2)~ THEN BEGIN IMPC4
SAY @68 
IF ~~ THEN REPLY @69 DO ~SetGlobal("X#ImoenGift","GLOBAL",3)~ GOTO IMPC4.1
IF ~~ THEN REPLY @70 DO ~SetGlobal("X#ImoenGift","GLOBAL",3)~ GOTO IMPC4.1
IF ~~ THEN REPLY @71 DO ~SetGlobal("X#ImoenGift","GLOBAL",3)~ GOTO IMPC4.1
IF ~~ THEN REPLY @72 DO ~SetGlobal("X#ImoenGift","GLOBAL",3)~ GOTO IMPC4.2
END

IF ~~ THEN BEGIN IMPC4.2
SAY @73
IF ~~ THEN GOTO IMPC4.1
END

IF ~~ THEN BEGIN IMPC4.1
SAY @74
IF ~~ THEN REPLY @75 GOTO IMPC4.3
IF ~~ THEN REPLY @76 GOTO IMPC4.4
IF ~~ THEN REPLY @77 GOTO IMPC4.5
END

IF ~~ THEN BEGIN IMPC4.3
SAY @78
IF ~~ THEN GOTO IMPC4.6
END

IF ~~ THEN BEGIN IMPC4.4
SAY @79
IF ~~ THEN GOTO IMPC4.6
END

IF ~~ THEN BEGIN IMPC4.5
SAY @80
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC4.6
SAY @81
IF ~~ THEN GOTO IMPC4.7
END

IF ~~ THEN BEGIN IMPC4.7
SAY @82
IF ~~ THEN REPLY @83 GOTO IMPC4.8
IF ~~ THEN REPLY @84 GOTO IMPC4.8
IF ~~ THEN REPLY @85 GOTO IMPC4.8
END

IF ~~ THEN BEGIN IMPC4.8
SAY @86
IF ~~ THEN GOTO IMPC4.9
END

IF ~~ THEN BEGIN IMPC4.9
SAY @87
IF ~~ THEN GOTO IMPC4.10
END

IF ~~ THEN BEGIN IMPC4.10
SAY @88
IF ~~ THEN GOTO IMPC4.11
END

IF ~~ THEN BEGIN IMPC4.11
SAY @89
IF ~~ THEN REPLY @90 GOTO IMPC4.12
IF ~~ THEN REPLY @91 GOTO IMPC4.13
IF ~~ THEN REPLY @92 GOTO IMPC4.13
IF ~~ THEN REPLY @93 GOTO IMPC4.13
END

IF ~~ THEN BEGIN IMPC4.12
SAY @94
IF ~~ THEN GOTO IMPC4.14
END

IF ~~ THEN BEGIN IMPC4.13
SAY @95
IF ~~ THEN GOTO IMPC4.14
END

IF ~~ THEN BEGIN IMPC4.14
SAY @96
IF ~~ THEN DO ~GiveItemCreate("X#IAMUL",Player1,1,1,0)~ EXIT
END

/* Script - at waking after Dream 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ImoenDreamResponse2","GLOBAL",1)~ THEN BEGIN IMPC5
SAY @97 
IF ~~ THEN REPLY @98 DO ~SetGlobal("X#ImoenDreamResponse2","GLOBAL",2)~ GOTO IMPC5.1
IF ~~ THEN REPLY @99 DO ~SetGlobal("X#ImoenDreamResponse2","GLOBAL",2)~ GOTO IMPC5.2
IF ~~ THEN REPLY @100 DO ~SetGlobal("X#ImoenDreamResponse2","GLOBAL",2)~ GOTO IMPC5.3
IF ~~ THEN REPLY @101 DO ~SetGlobal("X#ImoenDreamResponse2","GLOBAL",2)~ GOTO IMPC5.4
END

IF ~~ THEN BEGIN IMPC5.1
SAY @102
IF ~~ THEN GOTO IMPC5.5
END

IF ~~ THEN BEGIN IMPC5.2
SAY @103
IF ~~ THEN GOTO IMPC5.5
END

IF ~~ THEN BEGIN IMPC5.3
SAY @104
IF ~~ THEN GOTO IMPC5.5
END

IF ~~ THEN BEGIN IMPC5.4
SAY @105
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC5.5
SAY @106
IF ~~ THEN REPLY @107 GOTO IMPC5.4
IF ~ReputationGT(Player1,9)~ THEN REPLY @108 GOTO IMPC5.6
IF ~ReputationLT(Player1,10)~ THEN REPLY @108 GOTO IMPC5.7
IF ~ReputationGT(Player1,9)~ THEN REPLY @109 GOTO IMPC5.6
IF ~ReputationLT(Player1,10)~ THEN REPLY @109 GOTO IMPC5.7
END

IF ~~ THEN BEGIN IMPC5.6
SAY @110
IF ~~ THEN REPLY @111 GOTO IMPC5.9
IF ~~ THEN REPLY @112 GOTO IMPC5.8
IF ~OR(8) Class(Player1,PALADIN) Class(Player1,DRUID) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_CLERIC) Class(Player1,CLERIC_MAGE) Class(Player1,RANGER) Class(Player1,CLERIC_THIEF) Class(Player1,CLERIC_RANGER)~ THEN REPLY @113 GOTO IMPC5.8
END

IF ~~ THEN BEGIN IMPC5.7
SAY @114
IF ~~ THEN REPLY @111 GOTO IMPC5.9
IF ~~ THEN REPLY @115 GOTO IMPC5.8
IF ~~ THEN REPLY @116 GOTO IMPC5.9
IF ~OR(6) Class(Player1,MAGE_THIEF) Class(Player1,BARD) Class(Player1,MAGE) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,CLERIC_MAGE)~ THEN REPLY @117 GOTO IMPC5.8
END

IF ~~ THEN BEGIN IMPC5.8
SAY @118
IF ~~ THEN GOTO IMPC5.9
END

IF ~~ THEN BEGIN IMPC5.9
SAY @119
IF ~~ THEN EXIT
END

/* At waking after dream 2 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ImoenDreamResponse4","GLOBAL",1)~ THEN BEGIN IMPC6
SAY @120 
IF ~~ THEN REPLY @121 DO ~SetGlobal("X#ImoenDreamResponse4","GLOBAL",2)~ GOTO IMPC6.1
IF ~~ THEN REPLY @122 DO ~SetGlobal("X#ImoenDreamResponse4","GLOBAL",2)~ GOTO IMPC6.1
IF ~~ THEN REPLY @123 DO ~SetGlobal("X#ImoenDreamResponse4","GLOBAL",2)~ GOTO IMPC6.2
IF ~~ THEN REPLY @124 DO ~SetGlobal("X#ImoenDreamResponse4","GLOBAL",2)~ GOTO IMPC6.3
END

IF ~~ THEN BEGIN IMPC6.1
SAY @125
IF ~ReputationGT(Player1,9)~ THEN REPLY @126 GOTO IMPC6.5
IF ~ReputationLT(Player1,10)~ THEN REPLY @126 GOTO IMPC6.4
IF ~~ THEN REPLY @127 GOTO IMPC6.3
END

IF ~~ THEN BEGIN IMPC6.2
SAY @128
IF ~~ THEN REPLY @129 GOTO IMPC6.6
IF ~~ THEN REPLY @130 EXIT
IF ~~ THEN REPLY @131 GOTO IMPC6.3
END

IF ~~ THEN BEGIN IMPC6.3
SAY @132
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC6.6
SAY @133
IF ~~ THEN REPLY @134 GOTO IMPC6.1
IF ~~ THEN REPLY @135 GOTO IMPC6.1
IF ~~ THEN REPLY @136 GOTO IMPC6.3
END

IF ~~ THEN BEGIN IMPC6.4
SAY @137
IF ~~ THEN GOTO IMPC6.7
END

IF ~~ THEN BEGIN IMPC6.5
SAY @138
IF ~~ THEN GOTO IMPC6.7
END

IF ~~ THEN BEGIN IMPC6.7
SAY @139
IF ~~ THEN GOTO IMPC6.8
END

IF ~~ THEN BEGIN IMPC6.8
SAY @140
IF ~~ THEN GOTO IMPC6.9
END

IF ~~ THEN BEGIN IMPC6.9
SAY @141
IF ~~ THEN EXIT
END

/* Tarnesh scroll */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMPC8","GLOBAL",1)~ THEN BEGIN IMPC8
SAY @142
= @143
= @144
= @145 
IF ~~ THEN REPLY @146 DO ~SetGlobal("X#IMPC8","GLOBAL",2) RealSetGlobalTimer("X#ImTarneshBook","GLOBAL",18000)~ GOTO IMPC8.1
IF ~~ THEN REPLY @147 DO ~SetGlobal("X#IMPC8","GLOBAL",2) RealSetGlobalTimer("X#ImTarneshBook","GLOBAL",18000)~ GOTO IMPC8.2
IF ~~ THEN REPLY @148 DO ~SetGlobal("X#IMPC8","GLOBAL",2) RealSetGlobalTimer("X#ImTarneshBook","GLOBAL",18000)~ GOTO IMPC8.3
END

IF ~~ THEN BEGIN IMPC8.1
SAY @149
IF ~~ THEN GOTO IMPC8.4
END

IF ~~ THEN BEGIN IMPC8.2
SAY @150
IF ~~ THEN GOTO IMPC8.4
END

IF ~~ THEN BEGIN IMPC8.3
SAY @151
IF ~~ THEN GOTO IMPC8.4
END

IF ~~ THEN BEGIN IMPC8.4
SAY @152
IF ~~ THEN GOTO IMPC8.5
END

IF ~~ THEN BEGIN IMPC8.5
SAY @153
IF ~~ THEN REPLY @154 GOTO IMPC8.6
IF ~~ THEN REPLY @155 GOTO IMPC8.8
IF ~~ THEN REPLY @156 GOTO IMPC8.9
END

IF ~~ THEN BEGIN IMPC8.6
SAY @157
IF ~~ THEN GOTO IMPC8.7
END

IF ~~ THEN BEGIN IMPC8.7
SAY @158
IF ~~ THEN DO ~SetGlobal("X#IMGetsSpellbook","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN IMPC8.8
SAY @159
IF ~~ THEN GOTO IMPC8.10
END

IF ~~ THEN BEGIN IMPC8.10
SAY @160
IF ~~ THEN REPLY @161 DO ~SetGlobal("X#IMGetsSpellbook","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN IMPC8.9
SAY @162
IF ~~ THEN GOTO IMPC8.10
END

IF ~~ THEN BEGIN IMPC8.11
SAY @163
IF ~~ THEN REPLY @164 DO ~SetGlobal("X#IMGetsSpellbook","GLOBAL",1)~
EXIT
END

/* Firewine Bridge */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ImoenFIRE","GLOBAL",1)~ THEN BEGIN IMPC9
SAY @165
IF ~~ THEN REPLY @166 DO ~SetGlobal("X#ImoenFIRE","GLOBAL",2)~ GOTO IMPC9.1
IF ~~ THEN REPLY @167 DO ~SetGlobal("X#ImoenFIRE","GLOBAL",2)~ GOTO IMPC9.2
IF ~~ THEN REPLY @168 DO ~SetGlobal("X#ImoenFIRE","GLOBAL",2)~ GOTO IMPC9.7
IF ~~ THEN REPLY @169 DO ~SetGlobal("X#ImoenFIRE","GLOBAL",2)~ GOTO IMPC9.8
IF ~~ THEN REPLY @170 DO ~SetGlobal("X#ImoenFIRE","GLOBAL",2)~ GOTO IMPC9.9
END

IF ~~ THEN BEGIN IMPC9.1
SAY @171
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC9.2
SAY @172
IF ~~ THEN REPLY @173 GOTO IMPC9.3
IF ~~ THEN REPLY @174 GOTO IMPC9.4
IF ~~ THEN REPLY @175 GOTO IMPC9.5
IF ~~ THEN REPLY @176 GOTO IMPC9.6
END

IF ~~ THEN BEGIN IMPC9.3
SAY @177
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC9.4
SAY @178
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC9.5
SAY @179
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC9.6
SAY @180
IF ~~ THEN REPLY @181 GOTO IMPC9.6.1
IF ~~ THEN REPLY @182 GOTO IMPC9.3
END

IF ~~ THEN BEGIN IMPC9.6.1
SAY @183
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC9.7
SAY @184
IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN EXTERN ~%XAN_BANTER%~ XFIRE
IF ~OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID)~ THEN GOTO IMPC9.7.1
END

IF ~~ THEN BEGIN IMPC9.7.1
SAY @185
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC9.8
SAY @186
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC9.9
SAY @187
IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN EXTERN ~%YESLICK_BANTER%~ YFIRE
IF ~InParty("kagain") OR(3) !InParty("yeslick") !InMyArea("yeslick") StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN EXTERN ~%KAGAIN_BANTER%~ KFIRE
IF ~OR(3) !InParty("yeslick") !InMyArea("yeslick") StateCheck("yeslick",CD_STATE_NOTVALID) OR(3) !InParty("kagain") !InMyArea("kagain") StateCheck("kagain",CD_STATE_NOTVALID)~ THEN EXIT
END

/* Quayle */
IF WEIGHT #-1 ~%BGT_VAR% Global("P#QuayleImoenCK","GLOBAL",1)~ THEN BEGIN IMQU1
SAY @188 
IF ~~ THEN DO ~SetGlobal("P#QuayleImoenCK","GLOBAL",2)~ EXTERN ~%QUAYLE_BANTER%~ IMQU1CK
END

/* Imoen's artifact */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMGetsSpellbook","GLOBAL",2)~ THEN BEGIN IMPC7
SAY @189
IF ~~ THEN REPLY @190 DO ~SetGlobal("X#IMGetsSpellbook","GLOBAL",3)~ GOTO IMPC7.1
IF ~~ THEN REPLY @191 DO ~SetGlobal("X#IMGetsSpellbook","GLOBAL",3)~ GOTO IMPC7.2
IF ~~ THEN REPLY @192 DO ~SetGlobal("X#IMGetsSpellbook","GLOBAL",3)~ GOTO IMPC7.2
IF ~!Class("%IMOEN_DV%",MAGE_THIEF) OR(6) Class(Player1,MAGE_THIEF) Class(Player1,BARD) Class(Player1,MAGE) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,CLERIC_MAGE)~ THEN REPLY @193 DO ~SetGlobal("X#IMGetsSpellbook","GLOBAL",3)~ GOTO IMPC7.2.1
IF ~~ THEN REPLY @194 DO ~SetGlobal("X#IMGetsSpellbook","GLOBAL",3)~ GOTO IMPC7.3
IF ~~ THEN REPLY @195 DO ~SetGlobal("X#IMGetsSpellbook","GLOBAL",3)~ GOTO IMPC7.4
END

IF ~~ THEN BEGIN IMPC7.1
SAY @196
IF ~~ THEN GOTO IMPC7.5
END

IF ~~ THEN BEGIN IMPC7.2
SAY @197
IF ~~ THEN GOTO IMPC7.5
END

IF ~~ THEN BEGIN IMPC7.2.1
SAY @198
IF ~~ THEN GOTO IMPC7.5
END

IF ~~ THEN BEGIN IMPC7.3
SAY @199
IF ~~ THEN GOTO IMPC7.5
END

IF ~~ THEN BEGIN IMPC7.4
SAY @200
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMPC7.5
SAY @201
IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID) OR(3) !InParty("dynaheir") !InMyArea("dynaheir") StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN EXTERN ~%XZAR_BANTER%~ XZTAR
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) OR(3) !InParty("dynaheir") !InMyArea("dynaheir") StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN EXTERN ~%EDWIN_BANTER%~ EDTAR
IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN EXTERN ~%DYNAHEIR_BANTER%~ DYTAR
IF ~OR(3) !InParty("xzar") !InMyArea("xzar") StateCheck("xzar",CD_STATE_NOTVALID) OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID) OR(3) !InParty("dynaheir") !InMyArea("dynaheir") StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN GOTO IMPC7.6
END

IF ~~ THEN BEGIN IMPC7.6
SAY @202
IF ~~ THEN REPLY @203 GOTO IMPC7.7
IF ~~ THEN REPLY @204 GOTO IMPC7.7
END

IF ~~ THEN BEGIN IMPC7.7
SAY @205
= @206
IF ~~ THEN
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("X#CANTRP")~
EXIT
END
END

/* DREAM SCRIPT at REST */
/* Yeslick's story */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#ImoenYesl1","GLOBAL",1)~ THEN ~%IMOEN_JOINED%~ IMYE1
@207 
DO ~SetGlobal("X#ImoenYesl1","GLOBAL",2)~
== ~%YESLICK_BANTER%~ @208
== ~%IMOEN_BANTER%~ @209
== ~%YESLICK_BANTER%~ @210
== ~%IMOEN_BANTER%~ @211
== ~%YESLICK_BANTER%~ @212
== ~%IMOEN_BANTER%~ @213
== ~%YESLICK_BANTER%~ @214
== ~%IMOEN_BANTER%~ @215
== ~%YESLICK_BANTER%~ @216
= @217
== ~%IMOEN_BANTER%~ @218
== ~%YESLICK_BANTER%~ @219
== ~%IMOEN_BANTER%~ @220
DO ~RestParty()~
EXIT

/* NPC Banters */

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMSK4","GLOBAL",1)~ THEN ~%IMOEN_BANTER%~ IMSK4
@221
DO ~SetGlobal("X#IMSK4","GLOBAL",2)~
== ~%SKIE_BANTER%~ @222
== ~%IMOEN_BANTER%~ @223
END ~%IMOEN_BANTER%~ Bath

CHAIN3 ~%XZAR_BANTER%~ XZTAR
@224
== ~%IMOEN_BANTER%~ @225
== ~%XZAR_BANTER%~ @226
== ~%IMOEN_BANTER%~ @227
== ~%XZAR_BANTER%~ @228
== ~%IMOEN_BANTER%~ @229
== ~%XZAR_BANTER%~ @230
== ~%IMOEN_BANTER%~ @231
END ~%IMOEN_JOINED%~ IMPC7.6

CHAIN3 ~%EDWIN_BANTER%~ EDTAR
@232
== ~%EDWIN_BANTER%~ @233
== ~%EDWIN_BANTER%~ @234
== ~%EDWIN_BANTER%~ @235
== ~%IMOEN_BANTER%~ @236
END ~%IMOEN_JOINED%~ IMPC7.6

CHAIN3 ~%DYNAHEIR_BANTER%~ DYTAR
@237
== ~%IMOEN_BANTER%~ @238
== ~%DYNAHEIR_BANTER%~ @239
== ~%DYNAHEIR_BANTER%~ @240
END ~%IMOEN_JOINED%~ IMPC7.6

CHAIN3 ~%XAN_BANTER%~ XFIRE
@241
== ~%IMOEN_BANTER%~ @185
EXIT

CHAIN3 ~%YESLICK_BANTER%~ YFIRE
@242
== ~%IMOEN_BANTER%~ @243
== ~%YESLICK_BANTER%~ @244
== ~%IMOEN_BANTER%~ @245
== ~%YESLICK_BANTER%~ @246
== ~%IMOEN_BANTER%~ @247
== ~%YESLICK_BANTER%~ @248
EXIT

CHAIN3 ~%KAGAIN_BANTER%~ KFIRE
@249
== ~%IMOEN_BANTER%~ @250
== ~%KAGAIN_BANTER%~ @251
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XanComplain","GLOBAL",2)~ THEN ~%IMOEN_JOINED%~ IMXA3
@252
DO ~SetGlobal("X#XanComplain","GLOBAL",3)~
== ~%XAN_BANTER%~ @253
== ~%IMOEN_BANTER%~ @254
== ~%XAN_BANTER%~ @255
== ~%IMOEN_BANTER%~ @256
== ~%XAN_BANTER%~ @257
END
IF ~~ THEN REPLY @621 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @622 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @623 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @624 EXTERN ~%XAN_BANTER%~ IMXA3.2
IF ~~ THEN REPLY @625 EXTERN ~%XAN_BANTER%~ IMXA3.3
IF ~~ THEN REPLY @626 EXTERN ~%XAN_BANTER%~ IMXA3.4
IF ~RandomNum(2,1)~ THEN REPLY @627 EXTERN ~%IMOEN_BANTER%~ IMXA3.5Xanback
IF ~RandomNum(2,2)~ THEN REPLY @627 EXTERN ~%IMOEN_BANTER%~ IMXA3.5Xanpink

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XanComplain","GLOBAL",4) Global("X#IMXA4","GLOBAL",0)~ THEN ~%IMOEN_JOINED%~ IMXA4
@258
DO ~SetGlobal("X#XanComplain","GLOBAL",5) SetGlobal("X#IMXA4","GLOBAL",1)~
== ~%XAN_BANTER%~ @259
== ~%IMOEN_BANTER%~ @260
== ~%XAN_BANTER%~ IF ~!InParty("garrick")~ THEN @261
== ~%XAN_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @262
== ~%IMOEN_BANTER%~ @263
= @264
= @265
== ~%XAN_BANTER%~ @266
DO ~ActionOverride("xan",ReallyForceSpellRES("PINKBACK",Myself))~
EXIT


/* Pink Xan dialogue initiated */
///* Random banter, the one that could formerly occur only in chapter 3 */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) Global("X#IMXA1","GLOBAL",0) InParty("xan") See("xan") CombatCounter(0) !See([ENEMY]) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMXA1
@593 
DO ~SetGlobal("X#IMXA1","GLOBAL",1)~
== ~%XAN_BANTER%~ @594
== ~%IMOEN_BANTER%~ @595
== ~%XAN_BANTER%~ @596
== ~%IMOEN_BANTER%~ @597
== ~%XAN_BANTER%~ @598
== ~%IMOEN_BANTER%~ @599
== ~%XAN_BANTER%~ @600
== ~%IMOEN_BANTER%~ @601
= @602
== ~%XAN_BANTER%~ @603
== ~%IMOEN_BANTER%~ @604
== ~%XAN_BANTER%~ @605 EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMAJ1","LOCALS",0) InParty("ajantis") CombatCounter(0) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMAJ1
@267 
DO ~SetGlobal("X#IMAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @268
= @269
== ~%IMOEN_BANTER%~ @270
== ~%AJANTIS_BANTER%~ @271
== ~%IMOEN_BANTER%~ @272
== ~%AJANTIS_BANTER%~ @273
== ~%IMOEN_BANTER%~ @274
== ~%AJANTIS_BANTER%~ @275
== ~%IMOEN_BANTER%~ @276
== ~%AJANTIS_BANTER%~ @277
== ~%IMOEN_BANTER%~ @278
== ~%AJANTIS_BANTER%~ @279
== ~%IMOEN_BANTER%~ @280
== ~%AJANTIS_BANTER%~ @281
== ~%IMOEN_BANTER%~ @282
== ~%AJANTIS_BANTER%~ @283
== ~%IMOEN_BANTER%~ @284
== ~%AJANTIS_BANTER%~ @285
== ~%IMOEN_BANTER%~ @286
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMAL1","LOCALS",0) InParty("alora") CombatCounter(0) !See([ENEMY]) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMAL1
@287 
DO ~SetGlobal("X#IMAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @288
== ~%IMOEN_BANTER%~ @289
== ~%ALORA_BANTER%~ @290
= @291
== ~%IMOEN_BANTER%~ @292
== ~%ALORA_BANTER%~ @293
== ~%IMOEN_BANTER%~ @294
== ~%ALORA_BANTER%~ @295
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMBR1","LOCALS",0) InParty("branwen") CombatCounter(0) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMBR1
@296 
DO ~SetGlobal("X#IMBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @297
== ~%IMOEN_BANTER%~ @298
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMBR2","LOCALS",0) InParty("branwen") CombatCounter(0) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMBR2
@299 
DO ~SetGlobal("X#IMBR2","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @300
== ~%IMOEN_BANTER%~ @301
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMCO1","LOCALS",0) InParty("coran") CombatCounter(0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMCO1
@302 
DO ~SetGlobal("X#IMCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @303
== ~%IMOEN_BANTER%~ @304
== ~%CORAN_BANTER%~ @305
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMCO2","LOCALS",0) InParty("coran") CombatCounter(0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMCO2
@306 
DO ~SetGlobal("X#IMCO2","LOCALS",1)~
== ~%CORAN_BANTER%~ @307
= @308
== ~%IMOEN_BANTER%~ @309
= @310
== ~%CORAN_BANTER%~ @311
== ~%IMOEN_BANTER%~ @312
== ~%CORAN_BANTER%~ @313
== ~%IMOEN_BANTER%~ @314
== ~%CORAN_BANTER%~ @315
== ~%IMOEN_BANTER%~ @316
== ~%CORAN_BANTER%~ @317
== ~%IMOEN_BANTER%~ @318
== ~%CORAN_BANTER%~ @319
== ~%IMOEN_BANTER%~ @320
== ~%CORAN_BANTER%~ @321
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#ImCor3","LOCALS",0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("coran") CombatCounter(0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMCO3
@322 
DO ~SetGlobal("X#ImCor3","LOCALS",1)~
== ~%CORAN_BANTER%~ @323
== ~%IMOEN_BANTER%~ @324
== ~%CORAN_BANTER%~ @325
== ~%IMOEN_BANTER%~ @326
== ~%CORAN_BANTER%~ @327
== ~%IMOEN_BANTER%~ @328
== ~%CORAN_BANTER%~ @329
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMDY1","GLOBAL",0) InParty("dynaheir") CombatCounter(0) !See([ENEMY]) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMDY1
@330
DO ~SetGlobal("X#IMDY1","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ @331
== ~%IMOEN_BANTER%~ @332
== ~%DYNAHEIR_BANTER%~ @333
== ~%IMOEN_BANTER%~ @334
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("dynaheir") Global("X#IMDY1","GLOBAL",1) Global("X#IMDY2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMDY2
@330
DO ~SetGlobal("X#IMDY2","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ @335
== ~%IMOEN_BANTER%~ @336
== ~%DYNAHEIR_BANTER%~ @337
== ~%IMOEN_BANTER%~ @338
== ~%DYNAHEIR_BANTER%~ @339
== ~%IMOEN_BANTER%~ @340
== ~%DYNAHEIR_BANTER%~ @341
== ~%IMOEN_BANTER%~ @342
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("edwin") TimeOfDay(DAY) Global("X#IMED1","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMED1
@343
DO ~SetGlobal("X#IMED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @344
== ~%IMOEN_BANTER%~ @345
== ~%EDWIN_BANTER%~ @346
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMEL1","GLOBAL",0) InParty("eldoth") !InParty("skie") CombatCounter(0) !See([ENEMY]) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMEL1
@347 
DO ~SetGlobal("X#IMEL1","GLOBAL",1)~
== ~%ELDOTH_BANTER%~ @348
== ~%IMOEN_BANTER%~ @349
== ~%ELDOTH_BANTER%~ @350
== ~%IMOEN_BANTER%~ @351
== ~%ELDOTH_BANTER%~ @352
== ~%IMOEN_BANTER%~ @353
== ~%ELDOTH_BANTER%~ @354
= @355
== ~%IMOEN_BANTER%~ @356
== ~%ELDOTH_BANTER%~ @357
== ~%IMOEN_BANTER%~ @358
== ~%ELDOTH_BANTER%~ @359
== ~%IMOEN_BANTER%~ @360
== ~%ELDOTH_BANTER%~ @361
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMFA1","LOCALS",0) CombatCounter(0) InParty("faldorn") !See([ENEMY]) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMFA1
@362 
DO ~SetGlobal("X#IMFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @363
== ~%IMOEN_BANTER%~ @364
== ~%FALDORN_BANTER%~ @365
== ~%IMOEN_BANTER%~ @366
== ~%FALDORN_BANTER%~ @367
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMFA1","LOCALS",1) Global("X#FaldornHasRay","GLOBAL",1) CombatCounter(0) InParty("faldorn") Global("X#IMFA2","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMFA2
@368 
DO ~SetGlobal("X#IMFA2","LOCALS",1)~
== ~%FALDORN_BANTER%~ @369
== ~%IMOEN_BANTER%~ @370
== ~%FALDORN_BANTER%~ @371
== ~%IMOEN_BANTER%~ @372
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMGA1","LOCALS",0) InParty("garrick") CombatCounter(0) !See([ENEMY]) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMGA1
@373 
DO ~SetGlobal("X#IMGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @374
== ~%IMOEN_BANTER%~ @375
== ~%GARRICK_BANTER%~ @376
= @377
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMJA1","LOCALS",0) InParty("jaheira") CombatCounter(0) !See([ENEMY]) See("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMJA1
@378 
DO ~SetGlobal("X#IMJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @379
== ~%IMOEN_BANTER%~ @380
== ~%JAHEIRA_BANTER%~ @381
== ~%IMOEN_BANTER%~ @382
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMKH1","LOCALS",0) InParty("khalid") InParty("jaheira") CombatCounter(0) !See([ENEMY]) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMKH1
@383
DO ~SetGlobal("X#IMKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @384
== ~%IMOEN_BANTER%~ @385
== ~%KHALID_BANTER%~ @386
== ~%IMOEN_BANTER%~ @387
== ~%KHALID_BANTER%~ @388
== ~%IMOEN_BANTER%~ @389
== ~%JAHEIRA_BANTER%~ @390
== ~%IMOEN_BANTER%~ @391
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMKH2","LOCALS",0) InParty("khalid") CombatCounter(0) !See([ENEMY]) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMKH2
@392
DO ~SetGlobal("X#IMKH2","LOCALS",1)~
== ~%KHALID_BANTER%~ @393
== ~%IMOEN_BANTER%~ @394
== ~%KHALID_BANTER%~ @395
== ~%IMOEN_BANTER%~ @396
== ~%KHALID_BANTER%~ @397
== ~%IMOEN_BANTER%~ @398
== ~%KHALID_BANTER%~ @399
== ~%IMOEN_BANTER%~ @400
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMKI1","LOCALS",0) InParty("kivan") CombatCounter(0) !See([ENEMY]) See("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMKI1
@401
DO ~SetGlobal("X#IMKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @402
== ~%IMOEN_BANTER%~ @403
== ~%KIVAN_BANTER%~ @404
== ~%IMOEN_BANTER%~ @405
== ~%KIVAN_BANTER%~ @406
== ~%KIVAN_BANTER%~ IF ~Gender(Player1,MALE)~ THEN @407
== ~%IMOEN_BANTER%~ IF ~Gender(Player1,MALE)~ THEN @408
== ~%KIVAN_BANTER%~ IF ~Gender(Player1,MALE)~ THEN @409
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMKA1","LOCALS",0) InParty("kagain") CombatCounter(0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMKA1
@410
DO ~SetGlobal("X#IMKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @411
== ~%IMOEN_BANTER%~ @412
== ~%KAGAIN_BANTER%~ @413
== ~%IMOEN_BANTER%~ @414
== ~%KAGAIN_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @415
== ~%IMOEN_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @416
== ~%KAGAIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @417
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @418
== ~%KAGAIN_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @419
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @420
== ~%IMOEN_BANTER%~ @421
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @422
== ~%KAGAIN_BANTER%~ @423
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMMI1","LOCALS",0) InParty("minsc") CombatCounter(0) !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMMI1
@424 
DO ~SetGlobal("X#IMMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @425
== ~%IMOEN_BANTER%~ @426
== ~%MINSC_BANTER%~ @427
== ~%IMOEN_BANTER%~ @428
== ~%MINSC_BANTER%~ @429
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMMI2","LOCALS",0) Global("HelpMinsc","GLOBAL",1) CombatCounter(0) InParty("minsc") !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMMI2
@430 
DO ~SetGlobal("X#IMMI2","LOCALS",1)~
== ~%MINSC_BANTER%~ @431
== ~%IMOEN_BANTER%~ @432
== ~%MINSC_BANTER%~ @433
== ~%IMOEN_BANTER%~ @434
== ~%MINSC_BANTER%~ @435
= @436
= @437 
= @438
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMMI3","LOCALS",0) CombatCounter(0) InParty("minsc") !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMMI3
@439 
DO ~SetGlobal("X#IMMI3","LOCALS",1)~
== ~%MINSC_BANTER%~ @440
== ~%IMOEN_BANTER%~ @441
== ~%MINSC_BANTER%~ @442
== ~%IMOEN_BANTER%~ @443
== ~%MINSC_BANTER%~ @444
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMMO1","LOCALS",0) Global("X#MOIM1","GLOBAL",1) InParty("montaron") CombatCounter(0) !See([ENEMY]) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMMO1
@445 
DO ~SetGlobal("X#IMMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @446
== ~%IMOEN_BANTER%~ @447
== ~%MONTARON_BANTER%~ @448
== ~%IMOEN_BANTER%~ @449
== ~%MONTARON_BANTER%~ @450
== ~%IMOEN_BANTER%~ @451
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMSA1","LOCALS",0) InParty("safana") CombatCounter(0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMSA1
@452 
DO ~SetGlobal("X#IMSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @453
= @454
== ~%IMOEN_BANTER%~ @455
== ~%SAFANA_BANTER%~ @456
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMSH1","LOCALS",0) Gender(Player1,MALE) InParty("sharteel") CombatCounter(0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMSH1
@457 
DO ~SetGlobal("X#IMSH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @458
== ~%IMOEN_BANTER%~ @459
= @460
== ~%SHARTEEL_BANTER%~ @461
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMEL1","GLOBAL",1) InParty("skie") Global("X#IMSK1","GLOBAL",0) CombatCounter(0) !See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMSK1
@462 
DO ~SetGlobal("X#IMSK1","GLOBAL",1)~
== ~%SKIE_BANTER%~ @463
== ~%IMOEN_BANTER%~ @464
== ~%SKIE_BANTER%~ @465
== ~%SKIE_BANTER%~ @466
== ~%IMOEN_BANTER%~ @467
== ~%SKIE_BANTER%~ @468
= @469
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMSK1","GLOBAL",1) InParty("skie") Global("X#IMSK2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMSK2
@470 
DO ~SetGlobal("X#IMSK2","GLOBAL",1)~
== ~%SKIE_BANTER%~ @471
== ~%IMOEN_BANTER%~ @472
== ~%SKIE_BANTER%~ @473
== ~%IMOEN_BANTER%~ @474
= @475
== ~%SKIE_BANTER%~ @476
= @477
== ~%IMOEN_BANTER%~ @478
= @479
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMSK3","LOCALS",0) InParty("skie") CombatCounter(0) !See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMSK3
@480 
DO ~SetGlobal("X#IMSK3","LOCALS",1)~
== ~%SKIE_BANTER%~ @481
== ~%IMOEN_BANTER%~ @482
EXIT

CHAIN
IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#IMTI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMTI1
@483 
DO ~SetGlobal("X#IMTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @484
== ~%IMOEN_BANTER%~ @485
== ~%TIAX_BANTER%~ @486
== ~%IMOEN_BANTER%~ @487
== ~%TIAX_BANTER%~ @488
== ~%IMOEN_BANTER%~ @489
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMTI2","LOCALS",0) InParty("tiax") CombatCounter(0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMTI2
@490 
DO ~SetGlobal("X#IMTI2","LOCALS",1)~
== ~%TIAX_BANTER%~ @491
== ~%IMOEN_BANTER%~ @492
== ~%TIAX_BANTER%~ @493
= @494
== ~%IMOEN_BANTER%~ @495
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMVI1","LOCALS",0) InParty("viconia") CombatCounter(0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMVI1
@496 
DO ~SetGlobal("X#IMVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @497
== ~%IMOEN_BANTER%~ @498
== ~%VICONIA_BANTER%~ @499
== ~%IMOEN_BANTER%~ @500
== ~%VICONIA_BANTER%~ @501
== ~%IMOEN_BANTER%~ @502
== ~%VICONIA_BANTER%~ @503
== ~%IMOEN_BANTER%~ IF ~Alignment(Player1,LAWFUL_GOOD)~ THEN @504
== ~%IMOEN_BANTER%~ IF ~OR(5) Alignment(Player1,NEUTRAL_GOOD) Alignment(Player1,CHAOTIC_GOOD) Alignment(Player1,LAWFUL_NEUTRAL) Alignment(Player1,NEUTRAL) Alignment(Player1,CHAOTIC_NEUTRAL)~ THEN @505
== ~%IMOEN_BANTER%~ IF ~OR(3) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,LAWFUL_EVIL)~ THEN @506
== ~%IMOEN_BANTER%~ @507
== ~%VICONIA_BANTER%~ @508
== ~%IMOEN_BANTER%~ @509
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZIM1","GLOBAL",2) Global("X#IMXZ1","GLOBAL",0) CombatCounter(0) InParty("xzar") !See([ENEMY]) See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMXZ1
@510 
DO ~SetGlobal("X#IMXZ1","GLOBAL",1)~
== ~%XZAR_BANTER%~ @511
== ~%IMOEN_BANTER%~ @512
== ~%XZAR_BANTER%~ @513
== ~%IMOEN_BANTER%~ @514
== ~%XZAR_BANTER%~ @515
== ~%IMOEN_BANTER%~ @516
== ~%XZAR_BANTER%~ @517
== ~%IMOEN_BANTER%~ @518
== ~%XZAR_BANTER%~ @519
EXIT

APPEND ~%IMOEN_BANTER%~

IF ~~ THEN BEGIN Bath
SAY @520
IF ~Gender(Player1,MALE)~ THEN REPLY @521 DO ~SetGlobal("X#ImoenBath","LOCALS",1)~ GOTO Bath1MALE
IF ~Gender(Player1,FEMALE)~ THEN REPLY @521 DO ~SetGlobal("X#ImoenBath","LOCALS",1)~ GOTO Bath1FEMALE
IF ~~ THEN REPLY @522 DO ~SetGlobal("X#ImoenBath","LOCALS",1)~ GOTO Bath2
IF ~~ THEN REPLY @523 DO ~SetGlobal("X#ImoenBath","LOCALS",1)~ GOTO Bath3
END

IF ~~ THEN BEGIN Bath1FEMALE
SAY @524
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Bath1MALE
SAY @525
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Bath2
SAY @526
IF ~~ THEN EXTERN ~%SKIE_BANTER%~ Scold
END

IF ~~ THEN BEGIN Bath3
SAY @527
IF ~~ THEN EXTERN ~%SKIE_BANTER%~ Money
END
END

APPEND ~%SKIE_BANTER%~

IF ~~ THEN BEGIN Scold
SAY @528
IF ~~ THEN
EXIT
END

IF ~~ THEN BEGIN Money
SAY @529
IF ~~ THEN
EXIT
END
END

CHAIN3 ~%QUAYLE_BANTER%~ IMQU1CK
@530
DO ~SetGlobal("P#QuayleImoenCK","GLOBAL",2)~
== ~%IMOEN_BANTER%~ @531
= @532
== ~%QUAYLE_BANTER%~ @533
== ~%IMOEN_BANTER%~ @534
== ~%QUAYLE_BANTER%~ @535
== ~%IMOEN_BANTER%~ @536
== ~%QUAYLE_BANTER%~ @537
== ~%IMOEN_BANTER%~ @538
= @539
== ~%QUAYLE_BANTER%~ @540
== ~%IMOEN_BANTER%~ @541
== ~%QUAYLE_BANTER%~ @542
== ~%IMOEN_BANTER%~ @543
== ~%QUAYLE_BANTER%~ @544
== ~%IMOEN_BANTER%~ @545
= @546
= @547
== ~%QUAYLE_BANTER%~ @548
== ~%IMOEN_BANTER%~ @549
== ~%QUAYLE_BANTER%~ @550
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @551
== ~%IMOEN_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @552
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @553
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @554
== ~%QUAYLE_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @555
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @556
== ~%CORAN_BANTER%~ IF ~InParty("coran") Alignment("coran", CHAOTIC_NEUTRAL)~ THEN @557
== ~%QUAYLE_BANTER%~ IF ~InParty("coran") Alignment("coran", CHAOTIC_NEUTRAL)~ THEN @558
== ~%CORAN_BANTER%~ IF ~InParty("coran") Alignment("coran", CHAOTIC_NEUTRAL)~ THEN @559
== ~%CORAN_BANTER%~ IF ~InParty("coran") Alignment("coran", CHAOTIC_GOOD)~ THEN @560
== ~%QUAYLE_BANTER%~ IF ~InParty("coran") Alignment("coran", CHAOTIC_GOOD)~ THEN @561
== ~%IMOEN_BANTER%~ IF ~InParty("coran") Alignment("coran", CHAOTIC_GOOD)~ THEN @561
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @562
== ~%IMOEN_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @563
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @564
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @565
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @566
== ~%QUAYLE_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @567
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @568
END ~%IMOEN_BANTER%~ Nose

APPEND ~%IMOEN_BANTER%~

IF ~~ THEN BEGIN Nose
SAY @569
IF ~~ THEN REPLY @570 DO ~SetGlobal("X#Nose","LOCALS",1)~ EXTERN ~%QUAYLE_BANTER%~ IMQU1.1
IF ~~ THEN REPLY @571 DO ~SetGlobal("X#Nose","LOCALS",1)~ EXTERN ~%QUAYLE_BANTER%~ IMQU1.2
IF ~~ THEN REPLY @572 DO ~SetGlobal("X#Nose","LOCALS",1)~ GOTO IMQU1.3
IF ~~ THEN REPLY @573 DO ~SetGlobal("X#Nose","LOCALS",1)~ EXIT
IF ~~ THEN REPLY @574 DO ~SetGlobal("X#Nose","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN IMQU1.1.1
SAY @575
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMQU1.3
SAY @576
IF ~~ THEN REPLY @577 GOTO IMQU1.4
IF ~~ THEN REPLY @578 EXIT
IF ~RandomNum(2,1)~ THEN REPLY @579 GOTO IMQU1.5
IF ~RandomNum(2,2)~ THEN REPLY @579 GOTO IMQU1.6
END

IF ~~ THEN BEGIN IMQU1.4
SAY @580
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMQU1.5
SAY @581
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IMQU1.6
SAY @582
IF ~~ THEN REPLY @583 GOTO IMQU1.7
IF ~~ THEN REPLY @584 EXIT
END

IF ~~ THEN BEGIN IMQU1.7
SAY @585
IF ~~ THEN REPLY @586 GOTO IMQU1.8
IF ~~ THEN REPLY @584 EXIT
END

IF ~~ THEN BEGIN IMQU1.8
SAY @587
IF ~~ THEN REPLY @588 EXIT
IF ~~ THEN REPLY @589 EXIT
IF ~~ THEN REPLY @590 EXIT
END
END

APPEND ~%QUAYLE_BANTER%~

IF ~~ THEN BEGIN IMQU1.1
SAY @591
IF ~~ THEN EXTERN ~%IMOEN_BANTER%~ IMQU1.1.1
END

IF ~~ THEN BEGIN IMQU1.2
SAY @592
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

END

///* Imoen turns Xan pink */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#IMXA2","GLOBAL",1)~ THEN ~%IMOEN_JOINED%~ X#IMXA2
@606
DO ~SetGlobal("X#IMXA2","GLOBAL",2)~
== ~%XAN_BANTER%~ @607 
== ~%IMOEN_BANTER%~ @608
== ~%XAN_BANTER%~ @609
== ~%IMOEN_BANTER%~ @610
= @611
= @612
= @613
= @614
= @615
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @616
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @617
== ~%XAN_BANTER%~ @618
== ~%IMOEN_BANTER%~ @619
DO ~ActionOverride("xan",ReallyForceSpellRES("PINKXAN",Myself))~ EXIT

///* Xan's initial complaint */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMXA2","GLOBAL",4)~ THEN ~%IMOEN_JOINED%~ IMXA3
@252
DO ~SetGlobal("X#IMXA2","GLOBAL",5)~
== ~%XAN_BANTER%~ @253
== ~%IMOEN_BANTER%~ @254
== ~%XAN_BANTER%~ @255
== ~%IMOEN_BANTER%~ @256
== ~%XAN_BANTER%~ @257
END
IF ~~ THEN REPLY @621 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @622 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @623 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @624 EXTERN ~%XAN_BANTER%~ IMXA3.2
IF ~~ THEN REPLY @625 EXTERN ~%XAN_BANTER%~ IMXA3.3
IF ~~ THEN REPLY @626 EXTERN ~%XAN_BANTER%~ IMXA3.4
IF ~RandomNum(2,1)~ THEN REPLY @627 EXTERN ~%IMOEN_BANTER%~ IMXA3.5Xanback
IF ~RandomNum(2,2)~ THEN REPLY @627 EXTERN ~%IMOEN_BANTER%~ IMXA3.5Xanpink

CHAIN ~%IMOEN_BANTER%~ IMXA3.1
@628
== ~%XAN_BANTER%~ @643
DO ~ActionOverride("xan",ReallyForceSpellRES("PINKBACK",Myself))~ EXIT 

CHAIN ~%XAN_BANTER%~ IMXA3.2
@644
DO ~SetGlobal("X#IMXA2","GLOBAL",100) SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~ EXIT

CHAIN ~%XAN_BANTER%~ IMXA3.3
@645
END
IF ~Gender(Player1,FEMALE) Race(Player1,ELF)~ THEN REPLY @646 EXTERN ~%XAN_BANTER%~ IMXA3.6ELF
IF ~Gender(Player1,FEMALE) !Race(Player1,ELF)~ THEN REPLY @646 EXTERN ~%XAN_BANTER%~ IMXA3.6NOTELF
IF ~Gender(Player1,MALE)~ THEN REPLY @647 EXTERN ~%IMOEN_BANTER%~ IMXA3.7
IF ~OR(7) Class(Player1,THIEF) Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_THIEF) Class(Player1,CLERIC_RANGER)~ THEN REPLY @648 EXTERN ~%IMOEN_BANTER%~ IMXA3.8
IF ~~ THEN REPLY @649 EXTERN ~%IMOEN_BANTER%~ IMXA3.8
IF ~~ THEN REPLY @650 EXTERN ~%XAN_BANTER%~ IMXA3.10

CHAIN ~%XAN_BANTER%~ IMXA3.6ELF
@655
== ~%IMOEN_BANTER%~ @634
== ~%XAN_BANTER%~ @656
DO ~SetGlobal("X#IMXA2","GLOBAL",6) RealSetGlobalTimer("X#XanBack","GLOBAL",3600)~
EXIT

CHAIN ~%XAN_BANTER%~ IMXA3.6NOTELF
@657
== ~%IMOEN_BANTER%~ @634
DO ~SetGlobal("X#IMXA2","GLOBAL",6) RealSetGlobalTimer("X#XanBack","GLOBAL",3600)~
EXIT

CHAIN ~%IMOEN_BANTER%~ IMXA3.7
@635
END
IF ~~ THEN REPLY @636 EXTERN ~%XAN_BANTER%~ IMXA3.10
IF ~~ THEN REPLY @637 EXTERN ~%IMOEN_BANTER%~ IMXA3.11
IF ~~ THEN REPLY @638 EXTERN ~%IMOEN_BANTER%~ IMXA3.12

CHAIN ~%XAN_BANTER%~ IMXA3.10
@658
END
IF ~~ THEN REPLY @659 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @660 EXTERN ~%XAN_BANTER%~ IMXA3.2

CHAIN ~%IMOEN_BANTER%~ IMXA3.11
@639
END
IF ~~ THEN REPLY @640 DO ~SetGlobal("X#IMXA2","GLOBAL",6) RealSetGlobalTimer("X#XanBack","GLOBAL",3600)~ EXIT

CHAIN ~%IMOEN_BANTER%~ IMXA3.12
@641
== ~%XAN_BANTER%~ @661
DO ~SetGlobal("X#IMXA2","GLOBAL",6) RealSetGlobalTimer("X#XanBack","GLOBAL",3600)~ EXIT

CHAIN ~%IMOEN_BANTER%~ IMXA3.8
@642
END
IF ~~ THEN REPLY @636 EXTERN ~%XAN_BANTER%~ IMXA3.10
IF ~~ THEN REPLY @637 EXTERN ~%IMOEN_BANTER%~ IMXA3.11
IF ~~ THEN REPLY @638 EXTERN ~%IMOEN_BANTER%~ IMXA3.12

CHAIN ~%XAN_BANTER%~ IMXA3.4
@651
== ~%IMOEN_BANTER%~ @629
END
IF ~RandomNum(2,1)~ THEN REPLY @630 EXTERN ~%XAN_BANTER%~ IMXA3.4.2Xango
IF ~RandomNum(2,2)~ THEN REPLY @630 EXTERN ~%XAN_BANTER%~ IMXA3.4.2Xanstay

CHAIN ~%XAN_BANTER%~ IMXA3.4.2Xango
@652
DO ~SetGlobal("X#IMXA2","GLOBAL",100) SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) LeaveParty() ActionOverride("xan",EscapeArea())~ EXIT

CHAIN ~%XAN_BANTER%~ IMXA3.4.2Xanstay
@653
== ~%IMOEN_BANTER%~ @631
DO ~SetGlobal("X#IMXA2","GLOBAL",6) RealSetGlobalTimer("X#XanBack","GLOBAL",3600)~ EXIT

CHAIN ~%IMOEN_BANTER%~ IMXA3.5Xanback
@632
== ~%XAN_BANTER%~ @654
DO ~ActionOverride("xan",ReallyForceSpellRES("PINKBACK",Myself))~ EXIT

CHAIN ~%IMOEN_BANTER%~ IMXA3.5Xanpink
@633
DO ~SetGlobal("X#IMXA2","GLOBAL",6) RealSetGlobalTimer("X#XanBack","GLOBAL",3600)~ EXIT

///* Xan Complains a second time */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMXA2","GLOBAL",7)~ THEN ~%IMOEN_JOINED%~ IMXA4
@258
DO ~SetGlobal("X#IMXA2","GLOBAL",8)~
== ~%XAN_BANTER%~ @259
== ~%IMOEN_BANTER%~ @260
== ~%XAN_BANTER%~ IF ~OR(3) !InParty("garrick") !InMyArea("garrick") StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @261
== ~%XAN_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @262
== ~%IMOEN_BANTER%~ @263
= @264
= @265
== ~%XAN_BANTER%~ @266
DO ~ActionOverride("xan",ReallyForceSpellRES("PINKBACK",Myself))~ EXIT

APPEND ~%IMOEN_BANTER%~

IF ~~ THEN BEGIN Xancloak
SAY ~~
IF ~~ THEN REPLY @621 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @622 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @623 EXTERN ~%IMOEN_BANTER%~ IMXA3.1
IF ~~ THEN REPLY @624 EXTERN ~%XAN_BANTER%~ IMXA3.2
IF ~~ THEN REPLY @625 EXTERN ~%XAN_BANTER%~ IMXA3.3
IF ~~ THEN REPLY @626 EXTERN ~%XAN_BANTER%~ IMXA3.4
IF ~RandomNum(2,1)~ THEN REPLY @627 EXTERN ~%IMOEN_BANTER%~ IMXA3.5Xanback
IF ~RandomNum(2,2)~ THEN REPLY @627 GOTO IMXA3.5Xanpink
END

END