/* P dialogue patching */

ADD_STATE_TRIGGER ~%XAN_POST%~ 4 ~OR(3) Global("X#XARomanceInactive","GLOBAL",1)
Global("X#XARomanceActive","GLOBAL",1)
Global("X#XARomanceActive","GLOBAL",0)~

APPEND ~%XAN_POST%~

IF ~Global("%KICKED_OUT%","LOCALS",0) !Global("X#XARomanceInactive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",2)~ THEN BEGIN XanKickOutInRomance
SAY @0
IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) SetGlobal("X#XARomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

END

APPEND ~%XAN_JOINED%~

/* Floater Durlyle */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XADurKiss","GLOBAL",1)~ THEN durlyle_xan
SAY @1
++ @2 DO ~SetGlobal("X#XADurKiss","GLOBAL",2)~ + durlyle_xan_01
++ @3 DO ~SetGlobal("X#XADurKiss","GLOBAL",2)~ + durlyle_xan_02
++ @4 DO ~SetGlobal("X#XADurKiss","GLOBAL",2)~ + durlyle_xan_03
++ @5 DO ~SetGlobal("X#XADurKiss","GLOBAL",2)~ + durlyle_xan_04
+ ~Global("X#XaRomanceActive","GLOBAL",1)~ + @6 DO ~SetGlobal("X#XADurKiss","GLOBAL",2)~ + durlyle_xan_05
END

IF ~~ THEN durlyle_xan_01
SAY @7
IF ~~ THEN GOTO durlyle_xan_06
END

IF ~~ THEN durlyle_xan_02
SAY @8
IF ~~ THEN GOTO durlyle_xan_06
END

IF ~~ THEN durlyle_xan_03
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN durlyle_xan_04
SAY @10
IF ~~ THEN GOTO durlyle_xan_06
END

IF ~~ THEN durlyle_xan_05
SAY @11
IF ~~ THEN DO ~SetGlobal("X#XaRomanceInactive","GLOBAL",1)~EXIT
END

IF ~~ THEN durlyle_xan_06
SAY @12
+ ~Global("X#XaRomanceActive","GLOBAL",1)~ + @13 + durlyle_xan_07
+ ~Global("X#XaRomanceActive","GLOBAL",2)~ + @13 + durlyle_xan_08
+ ~Global("X#XaRomanceActive","GLOBAL",1)~ + @14 + durlyle_xan_07
+ ~Global("X#XaRomanceActive","GLOBAL",2)~ + @14 + durlyle_xan_08
++ @15 + durlyle_xan_09
++ @16 + durlyle_xan_09
+ ~Global("X#XaRomanceActive","GLOBAL",1)~ + @17 + durlyle_xan_10
END

IF ~~ THEN durlyle_xan_07
SAY @18
IF ~~ THEN EXIT
END

IF ~~ THEN durlyle_xan_08
SAY @19
IF ~~ THEN EXIT
END

IF ~~ THEN durlyle_xan_09
SAY @20
IF ~~ THEN EXIT
END

IF ~~ THEN durlyle_xan_10
SAY @21
IF ~~ THEN DO ~SetGlobal("X#XaRomanceInactive","GLOBAL",1)~EXIT
END

/* Floater 1 - after PC casts an innate */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFloatTalk1","GLOBAL",2)~ THEN BEGIN X#XAFLT1
SAY @22
++ @23 DO ~SetGlobal("X#XAFloatTalk1","GLOBAL",3)~ + X#XAFLT1.DIVINE
++ @24 DO ~SetGlobal("X#XAFloatTalk1","GLOBAL",3)~ + X#XAFLT1.2
++ @25 DO ~SetGlobal("X#XAFloatTalk1","GLOBAL",3)~ + X#XAFLT1.3
END

IF ~~ X#XAFLT1.2
SAY @26
IF ~~ THEN GOTO X#XAFLT1.DIVINE
END

IF ~~ X#XAFLT1.3
SAY @27 
IF ~~ THEN GOTO X#XAFLT1.DIVINE
END

IF ~~ X#XAFLT1.DIVINE
SAY @28
++ @29 + X#XAFLT1.4
++ @30 + X#XAFLT1.5
++ @31 + X#XAFLT1.UNCANNY
END

IF ~~ X#XAFLT1.4
SAY @32
IF ~~ THEN GOTO X#XAFLT1.UNCANNY
END

IF ~~ X#XAFLT1.5
SAY @33 
IF ~~ THEN GOTO X#XAFLT1.UNCANNY
END

IF ~~ X#XAFLT1.UNCANNY
SAY @34
++ @35 + X#XAFLT1.6
++ @36 + X#XAFLT1.6
END

IF ~~ X#XAFLT1.6
SAY @37
IF ~~ THEN EXIT
END

/* Love Talk 1 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",2)~ THEN BEGIN XanLoveTalk1
SAY @38
++ @39 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT1.1
++ @40 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT1.2
++ @41 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT1.3
++ @42 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT1.4
END

IF ~~ X#XALT1.1
SAY @43
++ @44 + X#XALT1.5
++ @45 + X#XALT1.6
++ @46 + X#XALT1.7
END

IF ~~ X#XALT1.2
SAY @47
++ @48 + X#XALT1.OPINION
++ @49 + X#XALT1.OPINION
++ @50 + X#XALT1.8
END

IF ~~ X#XALT1.3
SAY @51
IF ~~ THEN GOTO X#XALT1.THANKS
END

IF ~~ X#XALT1.4
SAY @52
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT1.OPINION
SAY @53
IF ~~ THEN GOTO X#XALT1.THANKS
END

IF ~~ X#XALT1.THANKS
SAY @54
IF ~~ THEN EXIT
END

IF ~~ X#XALT1.5
SAY @55
IF ~~ THEN GOTO X#XALT1.THANKS
END

IF ~~ X#XALT1.6
SAY @56
IF ~~ THEN GOTO X#XALT1.THANKS
END 

IF ~~ X#XALT1.7
SAY @57
IF ~~ THEN GOTO X#XALT1.THANKS
END

IF ~~ X#XALT1.8
SAY @58
IF ~~ THEN GOTO X#XALT1.THANKS
END

/* Love Talk 2 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",4)~ THEN BEGIN XanLoveTalk2
SAY @59
++ @60 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT2.1
++ @61 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT2.2
++ @62 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT2.DELUSION
++ @63 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT2.3
END

IF ~~ X#XALT2.1
SAY @64
++ @65 + X#XALT2.DEATH
++ @66 + X#XALT2.WARNING
++ @67 + X#XALT2.4
END

IF ~~ X#XALT2.2
SAY @68
IF ~~ THEN GOTO X#XALT2.DELUSION
END

IF ~~ X#XALT2.3
SAY @69
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT2.4
SAY @70
++ @71 + X#XALT2.DEATH
++ @72 + X#XALT2.WARNING
++ @73 + X#XALT2.5
END

IF ~~ X#XALT2.5
SAY @74
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT2.6
SAY @75
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT2.DELUSION
SAY @76
++ @77 + X#XALT2.6
++ @78 + X#XALT2.DEATH
++ @79 + X#XALT2.DEATH
END

IF ~~ X#XALT2.7
SAY @80
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT2.WARNING
SAY @81
++ @82 + X#XALT2.7
++ @83 + X#XALT2.DEATH
++ @84 + X#XALT2.8
END

IF ~~ X#XALT2.9
SAY @85
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT2.10
SAY @86
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT2.8
SAY @87
++ @88 + X#XALT2.9
++ @89 + X#XALT2.10
++ @90 + X#XALT2.DEATH
END

IF ~~ X#XALT2.DEATH
SAY @91
= @92
IF ~~ THEN EXIT
END

/* Love Talk 3 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",6)~ THEN BEGIN XanLoveTalk3
SAY @93
++ @94 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT3.1
++ @95 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT3.2
++ @96 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT3.3
++ @97 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT3.4
++ @98 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT3.5
END

IF ~~ X#XALT3.1
SAY @99
++ @100 + X#XALT3.6
++ @101 + X#XALT3.6
++ @102 + X#XALT3.7
END

IF ~~ X#XALT3.2
SAY @103
IF ~~ THEN GOTO X#XALT3.GORION
END

IF ~~ X#XALT3.3
SAY @104 
IF ~~ THEN GOTO X#XALT3.GORION
END

IF ~~ X#XALT3.4
SAY @105
IF ~~ THEN GOTO X#XALT3.GORION1
END

IF ~~ X#XALT3.5
SAY @106
IF ~~ THEN EXIT
END

IF ~~ X#XALT3.6
SAY @107
IF ~~ THEN GOTO X#XALT3.GORION
END

IF ~~ X#XALT3.7
SAY @108
IF ~~ THEN GOTO X#XALT3.GORION
END

IF ~~ X#XALT3.GORION
SAY @109
++ @110 + X#XALT3.8
++ @111 + X#XALT3.8
++ @112 + X#XALT3.9
END

IF ~~ X#XALT3.GORION1
SAY @113
++ @110 + X#XALT3.8
++ @111 + X#XALT3.8
++ @112 + X#XALT3.9
END

IF ~~ X#XALT3.8
SAY @114
++ @115 + X#XALT3.10
++ @116 + X#XALT3.11
++ @117 + X#XALT3.SAFETY
END

IF ~~ X#XALT3.9
SAY @118
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT3.10
SAY @119 
IF ~~ THEN GOTO X#XALT3.SAFETY
END

IF ~~ X#XALT3.11
SAY @120 
IF ~~ THEN GOTO X#XALT3.SAFETY
END

IF ~~ X#XALT3.SAFETY
SAY @121
IF ~~ THEN EXIT
END

/* Love Talk 4 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",8)~ THEN BEGIN XanLoveTalk4
SAY @122
++ @123 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT4.1
++ @124 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT4.RELIEF
++ @125 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT4.2
END

IF ~~ X#XALT4.1
SAY @126 
IF ~~ THEN GOTO X#XALT4.RELIEF
END

IF ~~ X#XALT4.2
SAY @127
IF ~~ THEN EXIT
END

IF ~~ X#XALT4.RELIEF
SAY @128
++ @129 + X#XALT4.REGRET
++ @130 + X#XALT4.3
++ @131 + X#XALT4.4
END

IF ~~ X#XALT4.3
SAY @132 
IF ~~ THEN GOTO X#XALT4.REGRET
END

IF ~~ X#XALT4.4
SAY @133
IF ~~ THEN GOTO X#XALT4.REGRET
END

IF ~~ X#XALT4.REGRET
SAY @134
++ @135 + X#XALT4.5
++ @136 + X#XALT4.6
++ @137 + X#XALT4.7
++ @138 + X#XALT4.9
END

IF ~~ X#XALT4.5
SAY @139
IF ~~ THEN GOTO X#XALT4.8
END

IF ~~ X#XALT4.6
SAY @140
IF ~~ THEN GOTO X#XALT4.8
END

IF ~~ X#XALT4.7
SAY @141
IF ~~ THEN GOTO X#XALT4.8
END

IF ~~ X#XALT4.8
SAY @142
IF ~~ THEN EXIT
END

IF ~~ X#XALT4.9
SAY @143
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

/* Love Talk 5 - At Rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",10)~ THEN BEGIN XanLoveTalk5
SAY @144
++ @145 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT5.REVERIE
++ @146 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT5.1
++ @147 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT5.1A
++ @148 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT5.2
END

IF ~~ X#XALT5.1
SAY @149
IF ~~ THEN GOTO X#XALT5.REVERIE
END

IF ~~ X#XALT5.1A
SAY @150
IF ~~ THEN GOTO X#XALT5.REVERIE
END

IF ~~ X#XALT5.2
SAY @151
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ X#XALT5.REVERIE
SAY @152
IF ~Race(Player1,ELF)~ THEN GOTO X#XALT5.REVERIE_ELVEN
IF ~!Race(Player1,ELF)~ THEN GOTO X#XALT5.REVERIE_NON_ELVEN
END

IF ~~ X#XALT5.REVERIE_ELVEN
SAY @153
++ @154 + X#XALT5.TOGETHER
++ @155 + X#XALT5.3
++ @156 + X#XALT5.MISTAKE
END

IF ~~ X#XALT5.3
SAY @157 
IF ~~ THEN GOTO X#XALT5.TOGETHER
END

IF ~~ X#XALT5.MISTAKE
SAY @158
++ @159 + X#XALT5.TOGETHER
++ @160 + X#XALT5.4
++ @161 + X#XALT5.5
END

IF ~~ X#XALT5.4
SAY @162
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT5.5
SAY @163
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ X#XALT5.TOGETHER
SAY @164
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT5.REVERIE_NON_ELVEN
SAY @165
++ @166 + X#XALT5.6
++ @167 + X#XALT5.7
++ @168 + X#XALT5.8
END

IF ~~ X#XALT5.6
SAY @169
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT5.7
SAY @170
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT5.8
SAY @171
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Love Talk 6 - Morning after LT5 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",12)~ THEN BEGIN XanLoveTalk6
SAY @172
++ @173 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT6.EVERESKA
++ @174 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT6.1
++ @175 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT6.2
END

IF ~~ X#XALT6.1
SAY @176
IF ~~ THEN GOTO X#XALT6.EVERESKA
END

IF ~~ X#XALT6.2
SAY @177
IF ~~ THEN GOTO X#XALT6.EVERESKA
END

IF ~~ X#XALT6.EVERESKA
SAY @178
++ @179 + X#XALT6.3
++ @180 + X#XALT6.4
++ @181 + X#XALT6.5
END

IF ~~ X#XALT6.3
SAY @182
IF ~~ THEN GOTO X#XALT6.WAHHH
END

IF ~~ X#XALT6.4
SAY @183 
IF ~~ THEN GOTO X#XALT6.WAHHH
END

IF ~~ X#XALT6.5
SAY @184 
IF ~~ THEN GOTO X#XALT6.WAHHH
END

IF ~~ X#XALT6.WAHHH
SAY @185
IF ~~ THEN EXIT
END

/* Love Talk 7 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",14)~ THEN BEGIN XanLoveTalk7
SAY @186
++ @187 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT7.1
++ @188 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT7.2
++ @189 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT7.3
++ @190 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT7.4
++ @191 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT7.5
END

IF ~~ X#XALT7.1
SAY @192 
IF ~~ THEN GOTO X#XALT7.DANGER
END

IF ~~ X#XALT7.2
SAY @193
IF ~~ THEN GOTO X#XALT7.DANGER
END

IF ~~ X#XALT7.3
SAY @194 
IF ~~ THEN GOTO X#XALT7.DANGER
END

IF ~~ X#XALT7.4
SAY @195
IF ~~ THEN EXIT
END

IF ~~ X#XALT7.5
SAY @196
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT7.DANGER
SAY @197
++ @198 + X#XALT7.6
++ @199 + X#XALT7.7
++ @200 + X#XALT7.HAPPEN
END

IF ~~ X#XALT7.6
SAY @201 
IF ~~ THEN GOTO X#XALT7.HAPPEN
END

IF ~~ X#XALT7.7
SAY @202
IF ~~ THEN GOTO X#XALT7.HAPPEN
END

IF ~~ X#XALT7.HAPPEN
SAY @203
++ @204 + X#XALT7.8
++ @205 + X#XALT7.9
++ @206 + X#XALT7.10
++ @207 + X#XALT7.11
END

IF ~~ X#XALT7.8
SAY @208
IF ~~ THEN EXIT
END

IF ~~ X#XALT7.9
SAY @209
IF ~~ THEN EXIT
END

IF ~~ X#XALT7.10
SAY @210
IF ~~ THEN EXIT
END

IF ~~ X#XALT7.11
SAY @211
= @212
IF ~~ THEN EXIT
END

/* Love Talk 8 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",16)~ THEN BEGIN XanLoveTalk8
SAY @213
++ @214 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT8.MUST
++ @215 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT8.RISK
++ @216 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT8.1
++ @217 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT8.2
END

IF ~~ X#XALT8.1
SAY @218
IF ~~ THEN GOTO X#XALT8.CHASE
END

IF ~~ X#XALT8.2
SAY @219
IF ~~ THEN EXIT
END

IF ~~ X#XALT8.MUST
SAY @220 
IF ~~ THEN GOTO X#XALT8.CHASE
END

IF ~~ X#XALT8.RISK
SAY @221
IF ~~ THEN GOTO X#XALT8.CHASE
END

IF ~~ X#XALT8.CHASE
SAY @222
++ @223 + X#XALT8.3
++ @224 + X#XALT8.6
++ @225 + X#XALT8.4
++ @226 + X#XALT8.5
END

IF ~~ X#XALT8.3
SAY @227 
IF ~~ THEN GOTO X#XALT8.6
END

IF ~~ X#XALT8.4
SAY @228
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT8.5
SAY @229 
IF ~~ THEN GOTO X#XALT8.6
END

IF ~~ X#XALT8.6
SAY @230
++ @231 + X#XALT8.7
++ @232 + X#XALT8.8
++ @233 + X#XALT8.9
++ @234 + X#XALT8.10
END

IF ~~ X#XALT8.7
SAY @235
IF ~~ THEN GOTO X#XALT8.10
END

IF ~~ X#XALT8.8
SAY @236
IF ~~ THEN GOTO X#XALT8.10
END

IF ~~ X#XALT8.9
SAY @237
IF ~~ THEN GOTO X#XALT8.MISERY
END

IF ~~ X#XALT8.10
SAY @238
IF ~~ THEN GOTO X#XALT8.MISERY
END

IF ~~ X#XALT8.MISERY
SAY @239
IF ~~ THEN EXIT
END

/* Love Talk 9 - At Waking */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",18)~ THEN BEGIN XanLoveTalk9
SAY @240
++ @241 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT9.1
++ @242 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT9.1
++ @243 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT9.1
++ @244 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT9.1
END

IF ~~ X#XALT9.1
SAY @245
++ @246 + X#XALT9.SHELTER
++ @247 + X#XALT9.2
++ @248 + X#XALT9.NIGHTMARE
++ @249 + X#XALT9.SHELTER
++ @250 + X#XALT9.3
END

IF ~~ X#XALT9.2
SAY @251 
IF ~~ THEN GOTO X#XALT9.NIGHTMARE
END

IF ~~ X#XALT9.3
SAY @252
++ @253 + X#XALT9.NIGHTMARE
++ @254 + X#XALT9.NIGHTMARE
++ @255 + X#XALT9.4
END

IF ~~ X#XALT9.4
SAY @256
IF ~~ THEN EXIT
END

IF ~~ X#XALT9.SHELTER
SAY @257
++ @258 + X#XALT9.NIGHTMARE
++ @259 + X#XALT9.NIGHTMARE
++ @260 + X#XALT9.5
END

IF ~~ X#XALT9.5
SAY @261
IF ~~ THEN GOTO X#XALT9.NIGHTMARE
END

IF ~~ X#XALT9.NIGHTMARE
SAY @262
IF ~Race(Player1,ELF)~ THEN GOTO X#XALT9.NIGHTMARE_ELVEN
IF ~!Race(Player1,ELF)~ THEN GOTO X#XALT9.NIGHTMARE_NON_ELVEN
END

IF ~~ X#XALT9.NIGHTMARE_ELVEN
SAY @263
++ @264 + X#XALT9.6
++ @265 + X#XALT9.7
++ @266 + X#XALT9.8
END

IF ~~ X#XALT9.6
SAY @267
IF ~~ THEN EXIT
END

IF ~~ X#XALT9.7
SAY @268
IF ~~ THEN EXIT
END

IF ~~ X#XALT9.8
SAY @269
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT9.NIGHTMARE_NON_ELVEN
SAY @270
++ @271 + X#XALT9.9
++ @272 + X#XALT9.10
++ @273 + X#XALT9.11
END

IF ~~ X#XALT9.9
SAY @274
IF ~~ THEN EXIT
END

IF ~~ X#XALT9.10
SAY @275
IF ~~ THEN EXIT
END

IF ~~ X#XALT9.11
SAY @276
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

/* Love Talk 10 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",20)~ THEN BEGIN XanLoveTalk10
SAY @277
+ ~Race(Player1,ELF)~ + @278 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT10.1
+ ~!Race(Player1,ELF)~ + @278 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT10.1A
+ ~Race(Player1,ELF)~ + @279 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT10.DELAY
+ ~!Race(Player1,ELF)~ + @280 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT10.1B
+ ~Race(Player1,ELF)~ + @281 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT10.2
+ ~!Race(Player1,ELF)~ + @281 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT10.3
++ @282 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT10.4
END

IF ~~ X#XALT10.1B
SAY @283
IF ~~ THEN GOTO X#XALT10.DELAY
END

IF ~~ X#XALT10.1
SAY @284 
IF ~~ THEN GOTO X#XALT10.DELAY
END

IF ~~ X#XALT10.1A
SAY @285
IF ~~ THEN GOTO X#XALT10.DELAY
END

IF ~~ X#XALT10.2
SAY @286
IF ~~ THEN GOTO X#XALT10.DELAY
END

IF ~~ X#XALT10.3
SAY @287
IF ~~ THEN GOTO X#XALT10.DELAY
END

IF ~~ X#XALT10.4
SAY @288
IF ~~ THEN EXIT
END

IF ~~ X#XALT10.DELAY
SAY @289
++ @290 + X#XALT10.5
++ @291 + X#XALT10.6
++ @292 + X#XALT10.7
END

IF ~~ X#XALT10.5
SAY @293
IF ~~ THEN GOTO X#XALT10.MOONBLADE
END

IF ~~ X#XALT10.6
SAY @294 
IF ~~ THEN GOTO X#XALT10.MOONBLADE
END

IF ~~ X#XALT10.7
SAY @295
IF ~~ THEN EXIT
END

IF ~~ X#XALT10.MOONBLADE
SAY @296
++ @297 + X#XALT10.8
++ @298 + X#XALT10.9
++ @299 + X#XALT10.10
++ @300 + X#XALT10.11
END

IF ~~ X#XALT10.8
SAY @301
IF ~~ THEN GOTO X#XALT10.WHATIF
END

IF ~~ X#XALT10.9
SAY @302 
IF ~~ THEN GOTO X#XALT10.WHATIF
END

IF ~~ X#XALT10.10
SAY @303 
IF ~~ THEN GOTO X#XALT10.WHATIF
END

IF ~~ X#XALT10.11
SAY @304
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT10.WHATIF
SAY @305
IF ~~ THEN EXIT
END

/* Love Talk 11 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",22)~ THEN BEGIN XanLoveTalk11
SAY @306
++ @307 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT11.CLAIM
++ @308 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT11.1
++ @309 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT11.2
END

IF ~~ X#XALT11.1
SAY @310
IF ~~ THEN EXIT
END

IF ~~ X#XALT11.2
SAY @311
IF ~~ THEN GOTO X#XALT11.CLAIM
END

IF ~~ X#XALT11.CLAIM
SAY @312
++ @313 + X#XALT11.3
++ @314 + X#XALT11.WORTHY
++ @315 + X#XALT11.4
END

IF ~~ X#XALT11.3
SAY @316
IF ~~ THEN GOTO X#XALT11.WORTHY
END

IF ~~ X#XALT11.4
SAY @317
IF ~~ THEN GOTO X#XALT11.WORTHY
END

IF ~~ X#XALT11.WORTHY
SAY @318
IF ~~ THEN EXIT
END

/* Love Talk 12 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",24)~ THEN BEGIN XanLoveTalk12
SAY @319 
++ @320 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT12.HOLLOW
++ @321 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT12.1
++ @322 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT12.2
++ @323 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT12.3
END

IF ~~ X#XALT12.1
SAY @324
IF ~~ THEN GOTO X#XALT12.HOLLOW
END

IF ~~ X#XALT12.3
SAY @325 
IF ~~ THEN GOTO X#XALT12.HOLLOW
END

IF ~~ X#XALT12.2
SAY @326
++ @327 + X#XALT12.4
++ @328 + X#XALT12.5
END

IF ~~ X#XALT12.4
SAY @329
IF ~~ THEN GOTO X#XALT12.HOLLOW
END

IF ~~ X#XALT12.5
SAY @330
IF ~~ THEN GOTO X#XALT12.HOLLOW
END

IF ~~ X#XALT12.HOLLOW
SAY @331
++ @332 + X#XALT12.6
++ @333 + X#XALT12.7
++ @334 + X#XALT12.8
END

IF ~~ X#XALT12.6
SAY @335
IF ~~ THEN GOTO X#XALT12.ATTACH
END

IF ~~ X#XALT12.7
SAY @336
IF ~~ THEN GOTO X#XALT12.ATTACH
END

IF ~~ X#XALT12.8
SAY @337
IF ~~ THEN GOTO X#XALT12.ATTACH
END

IF ~~ X#XALT12.ATTACH
SAY @338
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",26)~ THEN BEGIN XanLoveTalk13
SAY @339
++ @340 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT13.1
++ @341 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT13.2
++ @342 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT13.3
++ @343 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT13.IRONIC
++ @344 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT13.4
++ @345 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT13.5
END

IF ~~ X#XALT13.1
SAY @346
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ X#XALT13.2
SAY @347
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT13.3
SAY @348
IF ~~ THEN GOTO X#XALT13.IRONIC
END

IF ~~ X#XALT13.4
SAY @349 
IF ~~ THEN GOTO X#XALT13.IRONIC
END

IF ~~ X#XALT13.5
SAY @350 
IF ~~ THEN GOTO X#XALT13.IRONIC
END

IF ~~ X#XALT13.IRONIC
SAY @351
IF ~~ THEN EXIT
END

/* love Talk 14 - At Rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",28)~ THEN BEGIN XanLoveTalk14
SAY @352
++ @353 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT14.1
++ @354 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT14.2
++ @355 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT14.3
++ @356 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT14.4
END

IF ~~ X#XALT14.1
SAY @357
IF ~~ THEN GOTO X#XALT14.WHINE
END

IF ~~ X#XALT14.2
SAY @358
IF ~~ THEN GOTO X#XALT14.WHINE
END

IF ~~ X#XALT14.3
SAY @359 
IF ~~ THEN GOTO X#XALT14.ALONE
END

IF ~~ X#XALT14.4
SAY @360
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1) LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ X#XALT14.WHINE
SAY @361
++ @362 + X#XALT14.5
++ @363 + X#XALT14.6
++ @364 + X#XALT14.7
++ @365 + X#XALT14.8
++ @366 + X#XALT14.9
END

IF ~~ X#XALT14.5
SAY @367 
IF ~~ THEN GOTO X#XALT14.ALONE
END

IF ~~ X#XALT14.6
SAY @368
IF ~~ THEN GOTO X#XALT14.ALONE
END

IF ~~ X#XALT14.7
SAY @369
IF ~~ THEN GOTO X#XALT14.ALONE
END

IF ~~ X#XALT14.8
SAY @370
IF ~~ THEN GOTO X#XALT14.ALONE
END

IF ~~ X#XALT14.9
SAY @359
IF ~~ THEN GOTO X#XALT14.ALONE
END

IF ~~ X#XALT14.ALONE
SAY @371
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Love Talk 15 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",30)~ THEN BEGIN XanLoveTalk15
SAY @372
++ @373 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT15.1
++ @374 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT15.2
++ @375 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT15.PLEASE
END

IF ~~ X#XALT15.1
SAY @376
++ @377 + X#XALT15.BECAUSE
++ @378 + X#XALT15.LEAVE
END

IF ~~ X#XALT15.2
SAY @379
++ @380 + X#XALT15.BECAUSE
++ @381 + X#XALT15.BECAUSE
++ @382 + X#XALT15.LEAVE
++ @383 + X#XALT15.PLEASE
END

IF ~~ X#XALT15.PLEASE
SAY @384
++ @385 + X#XALT15.BECAUSE
++ @386 + X#XALT15.BECAUSE
++ @387 + X#XALT15.LEAVE
END

IF ~~ X#XALT15.BECAUSE
SAY @388
++ @389 + X#XALT15.LEAVE
++ @390 + X#XALT15.1A
++ @391 + X#XALT15.2A
++ @392 + X#XALT15.7
END

IF ~~ X#XALT15.LEAVE
SAY @393
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ X#XALT15.1A
SAY @394
++ @395 + X#XALT15.4
++ @396 + X#XALT15.2A
++ @397 + X#XALT15.4
++ @398 + X#XALT15.LEAVE
++ @392 + X#XALT15.7 
END

IF ~~ X#XALT15.2A
SAY @399 
IF ~~ THEN GOTO X#XALT15.STAY
END

IF ~~ X#XALT15.3
SAY @400
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ X#XALT15.4
SAY @401
++ @402 + X#XALT15.LEAVE
++ @403 + X#XALT15.6
++ @404 + X#XALT15.5
++ @405 + X#XALT15.3
++ @392 + X#XALT15.7 
END

IF ~~ X#XALT15.5
SAY @406
IF ~~ THEN GOTO X#XALT15.STAY
END

IF ~~ X#XALT15.6
SAY @407 
IF ~~ THEN GOTO X#XALT15.STAY
END

IF ~~ X#XALT15.7
SAY @408
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XALT15.STAY
SAY @409
IF ~~ THEN DO ~SetGlobal("X#XARomanceActive","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ EXIT
END

/* Love Talk 16 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",32)~ THEN BEGIN XanLoveTalk16
SAY @410
IF ~Race(Player1,ELF)~ DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#LTN1.1
IF ~!Race(Player1,ELF)~ DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#LTN1.2
END

IF ~~ X#LTN1.1
SAY @411
++ @412 + X#LTN1.3
++ @413 + X#LTN1.4
++ @414 + X#LTN1.5
++ @415 + X#LTN1.6
END

IF ~~ X#LTN1.2
SAY @416
+ ~!Race(Player1,ELF)~ + @417 + X#LTN1.7
++ @418 + X#LTN1.8
++ @419 + X#LTN1.9
++ @420 + X#LTN1.14
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @421 + X#LTN1.13
END

IF ~~ X#LTN1.3
SAY @422
= @423
++ @424 + X#LTN1.10
++ @425 + X#LTN1.2
++ @426 + X#LTN1.11
END

IF ~~ X#LTN1.4
SAY @427
= @428
++ @424 + X#LTN1.10
++ @425 + X#LTN1.2
++ @429 + X#LTN1.11
++ @430 + X#LTN1.12
END

IF ~~ X#LTN1.5
SAY @431
IF ~~ THEN GOTO X#LTN1.2
END

IF ~~ X#LTN1.6
SAY @432
++ @418 + X#LTN1.8
++ @419 + X#LTN1.9
++ @420 + X#LTN1.14
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @421 + X#LTN1.13
END

IF ~~ X#LTN1.7
SAY @433
= @434
IF ~~ THEN EXIT
END

IF ~~ X#LTN1.8
SAY @435
IF ~~ THEN EXIT
END

IF ~~ X#LTN1.9
SAY @436
IF ~~ THEN EXIT
END

IF ~~ X#LTN1.10
SAY @437
IF ~~ THEN EXIT
END

IF ~~ X#LTN1.11
SAY @438
IF ~~ THEN EXIT
END

IF ~~ X#LTN1.12
SAY @439
IF ~~ THEN EXIT
END

IF ~~ X#LTN1.13
SAY @440
IF ~~ THEN EXIT
END

IF ~~ X#LTN1.14
SAY @441
IF ~~ THEN EXIT
END

/* Love Talk 17 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",34)~ THEN BEGIN XanLoveTalk17
SAY @442
++ @443 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XANLT2.1
++ @444 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XANLT2.2
++ @445 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XANLT2.3
+ ~Class(Player1,THIEF_ALL)~ + @446 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XANLT2.4
++ @447 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XANLT2.5
END

IF ~~ X#XANLT2.1
SAY @448
++ @449 + X#XANLT2.3
++ @450 + X#XANLT2.6
++ @451 + X#XANLT2.7
++ @452 + X#XANLT2.2
END

IF ~~ X#XANLT2.2A
SAY @453
IF ~~ THEN GOTO X#XANLT2.2
END

IF ~~ X#XANLT2.2
SAY @454
++ @455 + X#XANLT2.11
END

IF ~~ X#XANLT2.3
SAY @456
= @457
IF ~~ THEN EXIT
END

IF ~~ X#XANLT2.4
SAY @458
IF ~~ THEN GOTO X#XANLT2.2
END

IF ~~ X#XANLT2.5
SAY @459
++ @460 + X#XANLT2.8
++ @461 + X#XANLT2.9
++ @462 + X#XANLT2.3
END

IF ~~ X#XANLT2.6
SAY @463
= @464
++ @465 + X#XANLT2.3
++ @466 + X#XANLT2.9
++ @467 + X#XANLT2.2A
END

IF ~~ X#XANLT2.7
SAY @468 
= @469
++ @470 + X#XANLT2.8
++ @461 + X#XANLT2.9
++ @462 + X#XANLT2.3
END

IF ~~ X#XANLT2.8
SAY @471
++ @472 + X#XANLT2.2
++ @473 + X#XANLT2.10
++ @474 + X#XANLT2.9
END

IF ~~ X#XANLT2.9
SAY @475
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#XANLT2.10
SAY @476
++ @455 + X#XANLT2.11
END

IF ~~ X#XANLT2.11
SAY @477
+ ~RandomNum(4,1)~ + @478 + X#XANLT2.15
+ ~RandomNum(4,2)~ + @478 + X#XANLT2.16
+ ~RandomNum(4,3)~ + @478 + X#XANLT2.16
+ ~RandomNum(4,4)~ + @478 + X#XANLT2.16
++ @477 + X#XANLT2.12
END

IF ~~ X#XANLT2.12
SAY @477
+ ~RandomNum(4,1)~ + @479 + X#XANLT2.15
+ ~RandomNum(4,2)~ + @479 + X#XANLT2.15
+ ~RandomNum(4,3)~ + @479 + X#XANLT2.16
+ ~RandomNum(4,4)~ + @479 + X#XANLT2.16
++ @477 + X#XANLT2.13
END

IF ~~ X#XANLT2.13
SAY @477
+ ~RandomNum(4,1)~ + @480 + X#XANLT2.15
+ ~RandomNum(4,2)~ + @480 + X#XANLT2.15
+ ~RandomNum(4,3)~ + @480 + X#XANLT2.15
+ ~RandomNum(4,4)~ + @481 + X#XANLT2.16
++ @477 + X#XANLT2.14
END

IF ~~ X#XANLT2.14
SAY @477
++ @482 + X#XANLT2.15
++ @477 + X#XANLT2.15
END

IF ~~ X#XANLT2.16
SAY @483
= @484
++ @485 + X#XANLT2.17
++ @486 + X#XANLT2.17
++ @487 + X#XANLT2.17
++ @488 + X#XANLT2.18
END

IF ~~ X#XANLT2.17
SAY @489
IF ~~ THEN EXIT
END

IF ~~ X#XANLT2.18
SAY @490
IF ~~ THEN GOTO X#XANLT2.15
END

IF ~~ X#XANLT2.15
SAY @491
= @492
++ @493 + X#XANLT2.19
++ @494 + X#XANLT2.9
++ @495 + X#XANLT2.20
++ @496 + X#XANLT2.21
END

IF ~~ X#XANLT2.19
SAY @497
++ @498 + X#XANLT2.9
++ @499 + X#XANLT2.22
++ @495 + X#XANLT2.20
++ @496 + X#XANLT2.21
END

IF ~~ X#XANLT2.20
SAY @500
= @501
++ @502 + X#XANLT2.9
++ @503 + X#XANLT2.23
++ @504 + X#XANLT2.23
++ @505 + X#XANLT2.24
END

IF ~~ X#XANLT2.21
SAY @506
++ @502 + X#XANLT2.9
++ @503 + X#XANLT2.23
++ @504 + X#XANLT2.23
++ @505 + X#XANLT2.24
END

IF ~~ X#XANLT2.22
SAY @507
++ @508 + X#XANLT2.9
++ @509 + X#XANLT2.20
++ @495 + X#XANLT2.20
++ @496 + X#XANLT2.21
END

IF ~~ X#XANLT2.23
SAY @510
= @511
IF ~~ THEN EXIT
END

IF ~~ X#XANLT2.24
SAY @512
IF ~~ THEN EXIT
END

/* Love Talk 18 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",36)~ THEN BEGIN XanLoveTalk18
SAY @513
++ @514 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#NLT3.1
++ @515 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#NLT3.2
++ @516 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#NLT3.3
++ @517 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#NLT3.4
END

IF ~~ X#NLT3.1
SAY @518
++ @519 + X#NLT3.5
++ @520 + X#NLT3.3
++ @521 + X#NLT3.6
END

IF ~~ X#NLT3.2
SAY @522
++ @523 + X#NLT3.7
++ @524 + X#NLT3.3
++ @525 + X#NLT3.7
++ @526 + X#NLT3.8
END

IF ~~ X#NLT3.3
SAY @527
+ ~!Race(Player1,ELF)~ + @528 + X#NLT3.9
+ ~Race(Player1,ELF)~ + @528 + X#NLT3.10
+ ~!Race(Player1,ELF)~ + @529 + X#NLT3.11
+ ~Race(Player1,ELF)~ + @529 + X#NLT3.12
++ @530 + X#NLT3.4
++ @521 + X#NLT3.6
++ @531 + X#NLT3.17
END

IF ~~ X#NLT3.4
SAY @532
+ ~!InParty("coran")~ + @533 + X#NLT3.13
+ ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ + @534 + X#NLT3.14
+ ~!Race(Player1,ELF)~ + @535 + X#NLT3.15
+ ~Race(Player1,ELF)~ + @535 + X#NLT3.16
++ @531 + X#NLT3.17
++ @521 + X#NLT3.6
END

IF ~~ X#NLT3.5
SAY @536
= @537
+ ~!Race(Player1,ELF)~ + @538 + X#NLT3.9
+ ~Race(Player1,ELF)~ + @528 + X#NLT3.10
+ ~!Race(Player1,ELF)~ + @529 + X#NLT3.11
+ ~Race(Player1,ELF)~ + @529 + X#NLT3.12
++ @530 + X#NLT3.4
++ @521 + X#NLT3.6
++ @531 + X#NLT3.17
END

IF ~~ X#NLT3.6
SAY @539 
IF ~~ THEN DO ~ SetGlobal("X#XARomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ X#NLT3.7
SAY @540
IF ~~ THEN GOTO X#NLT3.4
END

IF ~~ X#NLT3.8
SAY @541 
IF ~~ THEN GOTO X#NLT3.5
END

IF ~~ X#NLT3.9
SAY @542
IF ~~ THEN GOTO X#NLT3.9A
END

IF ~~ X#NLT3.9A
SAY @543
= @544
= @545
= @546
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#NLT3.10
SAY @547
++ @548 + X#NLT3.18
++ @549 + X#NLT3.12
++ @550 + X#NLT3.12
++ @531 + X#NLT3.17
END

IF ~~ X#NLT3.11
SAY @551
IF ~~ THEN GOTO X#NLT3.9A
END

IF ~~ X#NLT3.12
SAY @552
IF ~~ THEN EXIT
END

IF ~~ X#NLT3.13
SAY @553
+ ~!Race(Player1,ELF)~ + @554 + X#NLT3.19
+ ~Race(Player1,ELF)~ + @554 + X#NLT3.16
++ @531 + X#NLT3.17
++ @521 + X#NLT3.6
END

IF ~~ X#NLT3.14
SAY @555
+ ~!Race(Player1,ELF)~ + @554 + X#NLT3.19
+ ~Race(Player1,ELF)~ + @554 + X#NLT3.16
++ @531 + X#NLT3.17
++ @521 + X#NLT3.6
END

IF ~~ X#NLT3.15
SAY @556
IF ~~ THEN GOTO X#NLT3.9A
END

IF ~~ X#NLT3.16
SAY @557
IF ~~ THEN GOTO X#NLT3.10
END

IF ~~ X#NLT3.17
SAY @558 
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ X#NLT3.18
SAY @559
++ @560 + X#NLT3.20
++ @561 + X#NLT3.20
++ @562 + X#NLT3.17
++ @563 + X#NLT3.21
END

IF ~~ X#NLT3.19
SAY @564
IF ~~ THEN GOTO X#NLT3.9A
END

IF ~~ X#NLT3.20
SAY @565
IF ~~ THEN EXIT
END

IF ~~ X#NLT3.21
SAY @566
IF ~~ THEN EXIT
END


/* Love Talk 19 - At Rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",38)~ THEN BEGIN XanLoveTalk19
SAY @567
++ @568 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",100)~ + X#LNT5.1
++ @569 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",100)~ + X#LNT5.2
++ @570 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",100)~ + X#LNT5.2
++ @571 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",100)~ + X#LNT5.3
++ @572 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",100)~ + X#LNT5.4
+ ~CheckStatGT(Player1,15,INT)~ + @573 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",100)~ + X#LNT5.5
END
 
IF ~~ X#LNT5.1
SAY @574
= @575
++ @576 + X#LNT5.6
++ @577 + X#LNT5.7
++ @578 + X#LNT5.8
++ @579 + X#LNT5.9
END

IF ~~ X#LNT5.2
SAY @580
IF ~~ THEN GOTO X#LNT5.2A
END

IF ~~ X#LNT5.2A
SAY @581
++ @576 + X#LNT5.6
++ @577 + X#LNT5.7
++ @578 + X#LNT5.8
++ @579 + X#LNT5.9
END

IF ~~ X#LNT5.3
SAY @582
++ @583 + X#LNT5.10A
++ @584 + X#LNT5.11
++ @585 + X#LNT5.12
++ @586 + X#LNT5.7
END

IF ~~ X#LNT5.4
SAY @587
IF ~~ THEN GOTO X#LNT5.2A
END

IF ~~ X#LNT5.5
SAY @588
++ @583 + X#LNT5.10A
++ @584 + X#LNT5.11
++ @589 + X#LNT5.13
++ @586 + X#LNT5.7
END

IF ~~ X#LNT5.6
SAY @590
= @591
++ @592 + X#LNT5.15
++ @593 + X#LNT5.16
++ @594 + X#LNT5.10
++ @589 + X#LNT5.13
++ @595 + X#LNT5.17
END

IF ~~ X#LNT5.7
SAY @596
= @591
++ @592 + X#LNT5.15
++ @593 + X#LNT5.16
++ @594 + X#LNT5.10
++ @589 + X#LNT5.13
++ @595 + X#LNT5.17
END

IF ~~ X#LNT5.8
SAY @597
++ @598 + X#LNT5.18
++ @599 + X#LNT5.19
++ @600 + X#LNT5.19
END

IF ~~ X#LNT5.9
SAY @601
= @602
= @591
++ @592 + X#LNT5.15
++ @593 + X#LNT5.16
++ @594 + X#LNT5.10
++ @589 + X#LNT5.13
++ @595 + X#LNT5.17
END

IF ~~ X#LNT5.10A
SAY @603
IF ~~ THEN GOTO X#LNT5.10
END

IF ~~ X#LNT5.10
SAY @604
++ @605 + X#LNT5.20
++ @606 + X#LNT5.6
++ @607 + X#LNT5.13
++ @608 + X#LNT5.17
END

IF ~~ X#LNT5.11
SAY @609
++ @610 EXIT
++ @611 + X#LNT5.13
++ @608 + X#LNT5.17
END

IF ~~ X#LNT5.12
SAY @612
= @597
++ @598 + X#LNT5.18
++ @599 + X#LNT5.19
END

IF ~~ X#LNT5.13
SAY @613
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ X#LNT5.14
SAY @614
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#LNT5.15
SAY @615
= @616
= @617
+ ~!Global("X#XanTrueName","GLOBAL",1)~ + @618 DO ~SetGlobal("X#CharTrueName","GLOBAL",1)~ + X#LNT5.8
++ @619 + X#LNT5.22
++ @611 + X#LNT5.13
END

IF ~~ X#LNT5.16
SAY @620
= @597
++ @598 + X#LNT5.18
++ @599 + X#LNT5.19
END

IF ~~ X#LNT5.17
SAY @621
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#LNT5.18
SAY @613
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#LNT5.19
SAY @622
= @623
= @624
+ ~!Global("X#CharTrueName","GLOBAL",1)~ + @625 DO ~SetGlobal("X#XanTrueName","GLOBAL",1)~ + X#LNT5.15
++ @626 DO ~SetGlobal("X#XanTrueName","GLOBAL",1)~ + X#LNT5.14
++ @627 DO ~SetGlobal("X#XanTrueName","GLOBAL",1)~ + X#LNT5.21
END

IF ~~ X#LNT5.20
SAY @628
= @629
= @630
++ @598 + X#LNT5.18
++ @599 + X#LNT5.19
END

IF ~~ X#LNT5.21
SAY @631
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#LNT5.22
SAY @632
= @633
IF ~~ THEN DO ~RestParty()~ EXIT
END


/* Love Talk 20 - At Rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",40)~ THEN BEGIN XanLoveTalk20
SAY @634
+ ~Global("X#XanTrueName","GLOBAL",1)~ + @635 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT20.1
++ @636 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT20.LINGER
++ @637 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)~ + X#XALT20.2
END

IF ~~ X#XALT20.1
SAY @638
++ @639 + X#XALT20.3
++ @640 + X#XALT20.4
++ @641 + X#XALT20.5
++ @642 + X#XALT20.6
++ @643 + X#XALT20.7
END

IF ~~ X#XALT20.3
SAY @644
IF ~~ THEN GOTO X#XALT20.LINGER
END

IF ~~ X#XALT20.4
SAY @645
IF ~~ THEN GOTO X#XALT20.LINGER
END

IF ~~ X#XALT20.5
SAY @646
IF ~~ THEN GOTO X#XALT20.LINGER
END

IF ~~ X#XALT20.6
SAY @647
IF ~~ THEN GOTO X#XALT20.LINGER
END

IF ~~ X#XALT20.7
SAY @648
IF ~~ THEN GOTO X#XALT20.LINGER
END

IF ~~ X#XALT20.2
SAY @649
IF ~~ THEN GOTO X#XALT20.LINGER
END

IF ~~ X#XALT20.LINGER
SAY @650
=@477
++ @651 + X#XALT20.THEQUESTION
++ @652 + X#XALT20.8
++ @653 + X#XALT20.THEQUESTION
++ @477 + X#XALT20.THEQUESTION
END

IF ~~ X#XALT20.8
SAY @654
IF ~~ THEN GOTO X#XALT20.THEQUESTION
END

IF ~~ X#XALT20.THEQUESTION
SAY @655
++ @656 + X#XALT20.LOVE
++ @657 + X#XALT20.9
++ @658 + X#XALT20.LOVE
++ @659 + X#XALT20.10
++ @660 + X#XALT20.OVER
END

IF ~~ X#XALT20.9
SAY @661
++ @662 + X#XALT20.LOVE
++ @663 + X#XALT20.OVER
END

IF ~~ X#XALT20.10
SAY @664
IF ~~ THEN DO ~SetGlobal("X#XanLover","GLOBAL",0) RestParty()~ EXIT
END

IF ~~ X#XALT20.OVER
SAY @665
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1) LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ X#XALT20.LOVE
SAY @666
IF ~~ THEN DO ~SetGlobal("X#XanLover","GLOBAL",1) RestParty()~ EXIT
END

/* Love Talk 21 - Morning after LT20 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",42)~ THEN BEGIN XanLoveTalk21
SAY @667
=@668
++ @669 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT21.1
++ @670 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT21.2
++ @671 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT21.3
++ @672 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALT21.4
END

IF ~~ X#XALT21.1
SAY @673
IF ~~ THEN GOTO X#XALT21.BEAUTY
END

IF ~~ X#XALT21.2
SAY @674
IF ~~ THEN GOTO X#XALT21.BEAUTY
END

IF ~~ X#XALT21.3
SAY @675
IF ~~ THEN GOTO X#XALT21.BEAUTY
END

IF ~~ X#XALT21.4
SAY @676
IF ~~ THEN GOTO X#XALT21.BEAUTY
END

IF ~~ X#XALT21.BEAUTY
SAY @677
++ @678 + X#XALT21.5
++ @679 + X#XALT21.6
++ @680 + X#XALT21.7
END

IF ~~ X#XALT21.5
SAY @681 
IF ~~ THEN GOTO X#XALT21.BEAUTIFUL
END

IF ~~ X#XALT21.6
SAY @682
IF ~~ THEN GOTO X#XALT21.BEAUTIFUL
END

IF ~~ X#XALT21.7
SAY @683
IF ~~ THEN GOTO X#XALT21.BEAUTIFUL
END

IF ~~ X#XALT21.BEAUTIFUL
SAY @684
++ @685 + X#XALT21.8
++ @686 + X#XALT21.9
++ @687 + X#XALT21.10
END

IF ~~ X#XALT21.8
SAY @688
IF ~~ THEN EXIT
END

IF ~~ X#XALT21.9
SAY @689
IF ~~ THEN EXIT
END

IF ~~ X#XALT21.10
SAY @690
IF ~~ THEN EXIT
END

/* Love Talk 22 - regular */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",44)~ THEN BEGIN XanLoveTalkK22
SAY @1432
++ @1433 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALTK22.1
++ @1434 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALTK22.1
++ @1435 DO ~IncrementGlobal("X#XALoveTalk","GLOBAL",1) RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALTK22.0
END

IF ~~ X#XALTK22.0
SAY @1436
IF ~~ + X#XALTK22.1
END

IF ~~ X#XALTK22.1
SAY @1437
= @1438
++ @1439 + X#XALTK22.2
++ @1440 + X#XALTK22.3
++ @1441 + X#XALTK22.4
++ @1442 + X#XALTK22.5
END

IF ~~ X#XALTK22.2
SAY @1443
IF ~~ + X#XALTK22.6
END

IF ~~ X#XALTK22.3
SAY @1444
IF ~~ + X#XALTK22.6
END

IF ~~ X#XALTK22.4
SAY @1445
IF ~~ + X#XALTK22.6
END

IF ~~ X#XALTK22.5
SAY @1446
IF ~~ + X#XALTK22.6
END

IF ~~ X#XALTK22.6
SAY @1447
= @1448
++ @1449 + X#XALTK22.7
++ @1450 + X#XALTK22.8
++ @1451 + X#XALTK22.9
++ @1452 + X#XALTK22.10
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1453 + X#XALTK22.12
END

IF ~~ X#XALTK22.7
SAY @1454
IF ~~ + X#XALTK22.11
END

IF ~~ X#XALTK22.8
SAY @1455
IF ~~ + X#XALTK22.11
END

IF ~~ X#XALTK22.9
SAY @1456
IF ~~ + X#XALTK22.11
END

IF ~~ X#XALTK22.10
SAY @1457
IF ~~ + X#XALTK22.11
END

IF ~~ X#XALTK22.11
SAY @1458
IF ~~ EXIT
END

IF ~~ X#XALTK22.12
SAY @1459
IF ~~ + X#XALTK22.11
END

/* Love Talk 23 - regular */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",46)~ THEN BEGIN XanLoveTalkK23
SAY @1460
++ @1461 DO ~SetGlobal("X#XALoveTalk","GLOBAL",47)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALTK23.1
++ @1462 DO ~SetGlobal("X#XALoveTalk","GLOBAL",47)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALTK23.2
++ @1463 DO ~SetGlobal("X#XALoveTalk","GLOBAL",47)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALTK23.3
END

IF ~~ X#XALTK23.1
SAY @1464
= @1465
++ @1466 + X#XALTK23.4
++ @1467 + X#XALTK23.5
++ @1468 + X#XALTK23.6
++ @1469 + X#XALTK23.7
END

IF ~~ X#XALTK23.2
SAY @1470
IF ~~ + X#XALTK23.1
END

IF ~~ X#XALTK23.3
SAY @1471
IF ~~ + X#XALTK23.1
END

IF ~~ X#XALTK23.4
SAY @1472
IF ~~ + X#XALTK23.8
END

IF ~~ X#XALTK23.5
SAY @1473
IF ~~ + X#XALTK23.8
END

IF ~~ X#XALTK23.6
SAY @1474
IF ~~ + X#XALTK23.8
END

IF ~~ X#XALTK23.7
SAY @1475
IF ~~ + X#XALTK23.8
END

IF ~~ X#XALTK23.8
SAY @1476
IF ~~ EXIT
END

/* Love Talk 24 - regular */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",48)~ THEN BEGIN XanLoveTalkK24
SAY @1477
++ @1478 DO ~SetGlobal("X#XALoveTalk","GLOBAL",49)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALTK24.1
++ @1479 DO ~SetGlobal("X#XALoveTalk","GLOBAL",49)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALTK24.2
++ @1480 DO ~SetGlobal("X#XALoveTalk","GLOBAL",49)  RealSetGlobalTimer("X#XALoveTalkTime","GLOBAL",XAROM_TIMER)~ + X#XALTK24.3
END

IF ~~ X#XALTK24.1
SAY @1481
IF ~~ + X#XALTK24.4
END

IF ~~ X#XALTK24.2
SAY @1482
IF ~~ + X#XALTK24.4
END

IF ~~ X#XALTK24.3
SAY @1483
IF ~~ + X#XALTK24.4
END

IF ~~ X#XALTK24.4
SAY @1484
= @1485
++ @1486 + X#XALTK24.5
++ @1487 + X#XALTK24.6
++ @1488 + X#XALTK24.7
END

IF ~~ X#XALTK24.5
SAY @1489
IF ~~ + X#XALTK24.8
END

IF ~~ X#XALTK24.6
SAY @1490
IF ~~ + X#XALTK24.8
END

IF ~~ X#XALTK24.7
SAY @1491
IF ~~ + X#XALTK24.8
END

IF ~~ X#XALTK24.8
SAY @1492
= @1493
IF ~~ EXIT
END

/* Love Talk 25 - regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XALoveTalk","GLOBAL",50)~ THEN BEGIN XanLoveTalkK25
SAY @1494
++ @1495 DO ~SetGlobal("X#XALoveTalk","GLOBAL",51)~ + X#XALTK25.1
++ @1496 DO ~SetGlobal("X#XALoveTalk","GLOBAL",51)~ + X#XALTK25.2
++ @1497 DO ~SetGlobal("X#XALoveTalk","GLOBAL",51)~ + X#XALTK25.2
++ @1498 DO ~SetGlobal("X#XALoveTalk","GLOBAL",51)~ + X#XALTK25.3
END

IF ~~ X#XALTK25.1
SAY @1499
++ @1500 + X#XALTK25.4
++ @1501 + X#XALTK25.4
++ @1502 + X#XALTK25.4
END 

IF ~~ X#XALTK25.2
SAY @1503
++ @1504 + X#XALTK25.4
++ @1502 + X#XALTK25.4
++ @1505 + X#XALTK25.4
END

IF ~~ X#XALTK25.3
SAY @1506
++ @1507 + X#XALTK25.3A
++ @1508 + X#XALTK25.3A
++ @1509 + X#XALTK25.4
END

IF ~~ X#XALTK25.3A
SAY @1510
IF ~~ + X#XALTK25.4
END

IF ~~ X#XALTK25.4
SAY @1511
= @1512
++ @1513 + X#XALTK25.5
++ @1514 + X#XALTK25.6
++ @1515 + X#XALTK25.7
++ @1516 + X#XALTK25.8
++ @1517 + X#XALTK25.9
END

IF ~~ X#XALTK25.5
SAY @1518
IF ~~ + X#XALTK25.10
END

IF ~~ X#XALTK25.6
SAY @1519
= @1520
IF ~~ + X#XALTK25.10
END

IF ~~ X#XALTK25.7
SAY @1521
IF ~~ + X#XALTK25.10
END

IF ~~ X#XALTK25.8
SAY @1522
IF ~~ + X#XALTK25.10
END

IF ~~ X#XALTK25.9
SAY @1523
IF ~~ + X#XALTK25.10
END

IF ~~ X#XALTK25.10
SAY @1524
= @1525
IF ~~ EXIT
END

/* Conditional Talks for RA = 2 */

/* Floater 2 - Entered Candlekeep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFloatTalk2","GLOBAL",1)~ THEN BEGIN XanLoveTalk22
SAY @691
++ @692 DO ~SetGlobal("X#XAFloatTalk2","GLOBAL",2)~ + X#XALT22.1
++ @693 DO ~SetGlobal("X#XAFloatTalk2","GLOBAL",2)~ + X#XALT22.2
++ @694 DO ~SetGlobal("X#XAFloatTalk2","GLOBAL",2)~ + X#XALT22.3
END

IF ~~ X#XALT22.1
SAY @695
IF ~~ THEN EXIT
END

IF ~~ X#XALT22.2
SAY @696
IF ~~ THEN EXIT
END

IF ~~ X#XALT22.3
SAY @697
IF ~~ THEN EXIT
END

/* Floater 3 - Bhaal 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFloatTalk3","GLOBAL",2)~ THEN BEGIN XanLoveTalk23
SAY @698
= @699
= @700
++ @701 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",3)~ + X#XALT23.1
+ ~Global("X#XanLover","GLOBAL",1)~ + @702 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",3)~ + X#XALT23.1
++ @703 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",3)~ + X#XALT23.1
++ @704 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",3)~ + X#XALT23.1
END

IF ~~ X#XALT23.1
SAY @705
++ @706 + X#XALT23.2
++ @707 + X#XALT23.3
++ @708 + X#XALT23.4
++ @709 + X#XALT23.5
++ @710 + X#XALT23.6
END

IF ~~ X#XALT23.2
SAY @711
IF ~~ THEN EXIT
END

IF ~~ X#XALT23.3
SAY @712
IF ~~ THEN EXIT
END

IF ~~ X#XALT23.4
SAY @713
IF ~~ THEN EXIT
END

IF ~~ X#XALT23.5
SAY @714
IF ~~ THEN EXIT
END

IF ~~ X#XALT23.6
SAY @715
IF ~~ THEN EXIT
END

/* Floater 4 - Bhaal 2 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFloatTalk3","GLOBAL",4)~ THEN BEGIN XanLoveTalk24
SAY @716
+ ~Race(Player1,ELF)~ + @717 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",5) RealSetGlobalTimer("X#XAFloatTalk3Time","GLOBAL",1000)~ + X#XALT24.1
++ @718 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",5) RealSetGlobalTimer("X#XAFloatTalk3Time","GLOBAL",1000)~ + X#XALT24.2
++ @719 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",5) RealSetGlobalTimer("X#XAFloatTalk3Time","GLOBAL",1000)~ + X#XALT24.3
++ @720 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",5) RealSetGlobalTimer("X#XAFloatTalk3Time","GLOBAL",1000)~ + X#XALT24.8
END

IF ~~ X#XALT24.1
SAY @721
++ @722 + X#XALT24.4
++ @723 + X#XALT24.5
END

IF ~~ X#XALT24.2
SAY @724
IF ~~ THEN GOTO X#XALT24.AGAIN
END

IF ~~ X#XALT24.3
SAY @725
IF ~~ THEN GOTO X#XALT24.AGAIN
END

IF ~~ X#XALT24.4
SAY @726
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT24.5
SAY @727
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT24.AGAIN
SAY @728
++ @729 + X#XALT24.6
+ ~Race(Player1,ELF)~ + @730 + X#XALT24.7
++ @731 + X#XALT24.8
END

IF ~~ X#XALT24.6
SAY @732
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT24.7
SAY @733
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT24.8
SAY @734
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Floater 5 - Bhaal 3 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFloatTalk3","GLOBAL",6)~ THEN BEGIN XanLoveTalk25
SAY @735
++ @736 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",7)~ + X#XALT25.1
++ @737 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",7)~ + X#XALT25.2
++ @738 DO ~SetGlobal("X#XAFloatTalk3","GLOBAL",7)~ + X#XALT25.3
END

IF ~~ X#XALT25.1
SAY @739 
IF ~~ THEN GOTO X#XALT25.DOOMED
END

IF ~~ X#XALT25.2
SAY @740
IF ~~ THEN GOTO X#XALT25.DOOMED
END

IF ~~ X#XALT25.3
SAY @741
IF ~~ THEN EXIT
END

IF ~~ X#XALT25.DOOMED
SAY @742
++ @743 + X#XALT25.PROTECT
++ @744 + X#XALT25.4
++ @745 + X#XALT25.5
END

IF ~~ X#XALT25.4
SAY @746
IF ~~ THEN GOTO X#XALT25.PROTECT
END

IF ~~ X#XALT25.5
SAY @747
IF ~~ THEN GOTO X#XALT25.PROTECT
END

IF ~~ X#XALT25.PROTECT
SAY @748
IF ~~ THEN EXIT
END

/* Floater 6 - At Rest in Chapter 7 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFloatTalk4","GLOBAL",1)~ THEN BEGIN XanLoveTalk26
SAY @749
++ @750 DO ~SetGlobal("X#XAFloatTalk4","GLOBAL",2)~ + X#XALT26.KILL
++ @751 DO ~SetGlobal("X#XAFloatTalk4","GLOBAL",2)~ + X#XALT26.KILL
++ @752 DO ~SetGlobal("X#XAFloatTalk4","GLOBAL",2)~ + X#XALT26.KILL
++ @753 DO ~SetGlobal("X#XAFloatTalk4","GLOBAL",2)~ + X#XALT26.1
END

IF ~~ X#XALT26.1
SAY @754
IF ~~ THEN GOTO X#XALT26.KILL
END

IF ~~ X#XALT26.KILL
SAY @755
++ @756 + X#XALT26.2
++ @757 + X#XALT26.3
++ @758 + X#XALT26.4
END

IF ~~ X#XALT26.2
SAY @759
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT26.3
SAY @760
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#XALT26.4
SAY @761
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Floater 7 - Entered Undercity */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFloatTalk5","GLOBAL",1)~ THEN BEGIN XanLoveTalk27
SAY @762
++ @763 DO ~SetGlobal("X#XAFloatTalk5","GLOBAL",2)~ + X#XALT27.2
++ @764 DO ~SetGlobal("X#XAFloatTalk5","GLOBAL",2)~ + X#XALT27.FUTURE
++ @765 DO ~SetGlobal("X#XAFloatTalk5","GLOBAL",2)~ + X#XALT27.1
END

IF ~~ X#XALT27.1
SAY @766
IF ~~ THEN GOTO X#XALT27.FUTURE
END

IF ~~ X#XALT27.2
SAY @767
++ @768 + X#XALT27.3
++ @769 + X#XALT27.4
++ @770 + X#XALT27.5
END

IF ~~ X#XALT27.3
SAY @771
IF ~~ THEN GOTO X#XALT27.FUTURE
END

IF ~~ X#XALT27.4
SAY @772 
IF ~~ THEN GOTO X#XALT27.FUTURE
END

IF ~~ X#XALT27.5
SAY @773
IF ~~ THEN GOTO X#XALT27.FUTURE
END

IF ~~ X#XALT27.FUTURE
SAY @774
++ @775 + X#XALT27.6
++ @776 + X#XALT27.7
++ @777 + X#XALT27.GOODBYE
++ @778 + X#XALT27.8
END

IF ~~ X#XALT27.6
SAY @779
IF ~~ THEN GOTO X#XALT27.GOODBYE
END

IF ~~ X#XALT27.7
SAY @780
IF ~~ THEN GOTO X#XALT27.GOODBYE
END

IF ~~ X#XALT27.8
SAY @781
IF ~~ THEN GOTO X#XALT27.GOODBYE
END

IF ~~ X#XALT27.GOODBYE
SAY @782
= @783
IF ~~ THEN EXIT
END

/* Xan Rep Reactions */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XanLowRep","GLOBAL",1)~ THEN BEGIN X#XanLowRep
SAY @784
++ @785 DO ~SetGlobal("X#XanLowRep","GLOBAL",2) RealSetGlobalTimer("X#XALowRepTalkTime","GLOBAL",7200)~ + XALREP1
++ @786 DO ~SetGlobal("X#XanLowRep","GLOBAL",2) RealSetGlobalTimer("X#XALowRepTalkTime","GLOBAL",7200)~ + XALREP2
++ @787 DO ~SetGlobal("X#XanLowRep","GLOBAL",2) RealSetGlobalTimer("X#XALowRepTalkTime","GLOBAL",7200)~ + XALREP3
++ @788 DO ~SetGlobal("X#XanLowRep","GLOBAL",2) RealSetGlobalTimer("X#XALowRepTalkTime","GLOBAL",7200)~ + XALREP4
END

IF ~~ XALREP1
SAY @789
IF ~~ THEN EXIT
END

IF ~~ XALREP2
SAY @790
IF ~~ THEN EXIT
END

IF ~~ XALREP3
SAY @791
IF ~~ THEN DO ~SetGlobal("X#XaRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ XALREP4
SAY @792
IF ~~ THEN EXIT
END


IF WEIGHT #-2 ~%BGT_VAR% Global("X#XanVeryLowRep","GLOBAL",1)~ THEN BEGIN X#XanVeryLowRep
SAY @793
++ @794 DO ~SetGlobal("X#XanVeryLowRep","GLOBAL",2)~ + XAVLREP1
++ @795 DO ~SetGlobal("X#XanVeryLowRep","GLOBAL",2)~ + XAVLREP2
++ @796 DO ~SetGlobal("X#XanVeryLowRep","GLOBAL",2)~ + XAVLREP3
++ @797 DO ~SetGlobal("X#XanVeryLowRep","GLOBAL",2)~ + XAVLREP4
END

IF ~~ XAVLREP1
SAY @798
IF ~~ THEN DO ~SetGlobal("X#XaRomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ XAVLREP2
SAY @799
IF ~~ THEN EXIT
END

IF ~~ XAVLREP3
SAY @800
IF ~~ THEN DO ~SetGlobal("X#XaRomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ XAVLREP4
SAY @801
IF ~~ THEN DO ~SetGlobal("X#XaRomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XanHighRep","GLOBAL",1)~ THEN BEGIN X#XanVeryHighRep
SAY @802
++ @803 DO ~SetGlobal("X#XanHighRep","GLOBAL",2)~ + XAHREP1
++ @804 DO ~SetGlobal("X#XanHighRep","GLOBAL",2)~ + XAHREP2
++ @805 DO ~SetGlobal("X#XanHighRep","GLOBAL",2)~ + XAHREP3
++ @806 DO ~SetGlobal("X#XanHighRep","GLOBAL",2)~ + XAHREP4
++ @807 DO ~SetGlobal("X#XanHighRep","GLOBAL",2)~ + XAHREP5
END

IF ~~ XAHREP1
SAY @808
IF ~~ THEN EXIT
END

IF ~~ XAHREP2
SAY @809
IF ~~ THEN EXIT
END

IF ~~ XAHREP3
SAY @810
IF ~~ THEN EXIT
END 

IF ~~ XAHREP4
SAY @811
IF ~~ THEN EXIT
END

IF ~~ XAHREP5
SAY @812
IF ~~ THEN EXIT
END

/* NPC-Initiated Flirts */

/* Early in Romance */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XanFlirtEarly","GLOBAL",1)~ THEN BEGIN XaFlirtEarly
SAY @813  
IF ~RandomNum(20,1)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly1
IF ~RandomNum(20,2)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly2
IF ~RandomNum(20,3)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly3
IF ~RandomNum(20,4)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly4
IF ~RandomNum(20,5)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly5
IF ~RandomNum(20,6)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly6
IF ~RandomNum(20,7)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly7
IF ~RandomNum(20,8)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly8
IF ~RandomNum(20,9)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly9
IF ~RandomNum(20,10)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly10
IF ~RandomNum(20,11)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly11
IF ~RandomNum(20,12)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly12
IF ~RandomNum(20,13)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly13
IF ~RandomNum(20,14)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly14
IF ~RandomNum(20,15)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly15
IF ~RandomNum(20,16)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly16
IF ~RandomNum(20,17)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly17
IF ~RandomNum(20,18)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly18
IF ~RandomNum(20,19)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly19
IF ~RandomNum(20,20)~ DO ~SetGlobal("X#XanFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtEarlyTime","GLOBAL",XAROM_TIMER)~ + XaFlirtEarly20
END

IF ~~ XaFlirtEarly11
SAY @814
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly12
SAY @815
= @816
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly13
SAY @817
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly14
SAY @818
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly15
SAY @819
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly16
SAY @820
= @821
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly17
SAY @822
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly18
SAY @823
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly19
SAY @824
= @825
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly20
SAY @826
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly1
SAY @827
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly2
SAY @828
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly3
SAY @829
= @830
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly4
SAY @831
++ @832 + XaFlirtEarly4.1
++ @833 + XaFlirtEarly4.2
++ @834 + XaFlirtEarly4.3
++ @835 + XaFlirtEarly4.4
++ @836 + XaFlirtEarly4.5
++ @837 + XaFlirtEarly4.6
END

IF ~~ XaFlirtEarly4.1
SAY @838
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly4.2
SAY @839
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly4.3
SAY @840
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly4.4
SAY @841
= @842
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly4.5
SAY @843
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly4.6
SAY @844
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly5
SAY @845
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly6
SAY @846
= @847
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly7
SAY @848
++ @849 + XaFlirtEarly7.1
++ @850 + XaFlirtEarly7.1
++ @851 + XaFlirtEarly7.2
END

IF ~~ XaFlirtEarly7.1
SAY @852
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly7.2
SAY @853
= @854
= @855
= @856
= @857
++ @858 + XaFlirtEarly7.3
++ @859 + XaFlirtEarly7.3
++ @860 + XaFlirtEarly7.3
++ @861 + XaFlirtEarly7.3
END

IF ~~ XaFlirtEarly7.3
SAY @862
= @863
= @864
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly8
SAY @865
= @866
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly9
SAY @867
++ @868 + XaFlirtEarly9.1
++ @869 + XaFlirtEarly9.2
END

IF ~~ XaFlirtEarly9.1
SAY @870
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly9.2
SAY @871
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly10
SAY @872
++ @873 + XaFlirtEarly10.1
++ @874 + XaFlirtEarly10.2
++ @875 + XaFlirtEarly10.3
END

IF ~~ XaFlirtEarly10.1
SAY @876
= @877
= @878
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly10.2
SAY @879
IF ~~ THEN EXIT
END

IF ~~ XaFlirtEarly10.3
SAY @880
IF ~~ THEN EXIT
END

/* NPC-Initiated Flirts */

/* Late in Romance */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XanFlirtLate","GLOBAL",1)~ THEN BEGIN XaFlirtLate
SAY @881   
IF ~RandomNum(20,1)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate1
IF ~RandomNum(20,2)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate2
IF ~RandomNum(20,3)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate3
IF ~RandomNum(20,4)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate4
IF ~RandomNum(20,5)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate5
IF ~RandomNum(20,6)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate6
IF ~RandomNum(20,7)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate7
IF ~RandomNum(20,8)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate8
IF ~RandomNum(20,9)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate9
IF ~RandomNum(20,10)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate10
IF ~RandomNum(20,11)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate11
IF ~RandomNum(20,12)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate12
IF ~RandomNum(20,13)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate13
IF ~RandomNum(20,14)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate14
IF ~RandomNum(20,15)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate15
IF ~RandomNum(20,16)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate16
IF ~RandomNum(20,17)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate17
IF ~RandomNum(20,18)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate18
IF ~RandomNum(20,19)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate19
IF ~RandomNum(20,20)~ DO ~SetGlobal("X#XanFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#XAFlirtLateTime","GLOBAL",XAROM_TIMER)~ + XaFlirtLate20
END

IF ~~ XaFlirtLate11
SAY @882
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate12
SAY @883
= @884
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate13
SAY @885
= @886
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate14
SAY @887
++ @888 + XaFlirtLate14.1
++ @889 + XaFlirtLate14.2
END

IF ~~ XaFlirtLate14.1
SAY @890
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate14.2
SAY @891
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate15
SAY @892
= @893
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate16
SAY @894
= @895
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate17
SAY @896
++ @897 + XaFlirtLate17.1
++ @898 + XaFlirtLate17.1
++ @899 + XaFlirtLate17.2
END

IF ~~ XaFlirtLate17.1
SAY @900
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate17.2
SAY @901
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate18
SAY @902
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate19
SAY @903
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate20
SAY @904
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate1
SAY @905
++ @906 + XaFlirtLate1.1
++ @907 + XaFlirtLate1.2
++ @908 + XaFlirtLate1.3
++ @909 + XaFlirtLate1.4
END

IF ~~ XaFlirtLate1.1
SAY @910
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate1.2
SAY @911
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate1.3
SAY @912
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate1.4
SAY @913
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate2
SAY @914
++ @915 + XaFlirtLate2.1
++ @916 + XaFlirtLate2.THOUGHTS
++ @917 + XaFlirtLate2.THOUGHTS
END

IF ~~ XaFlirtLate2.1
SAY @918
IF ~~ THEN GOTO XaFlirtLate2.THOUGHTS
END

IF ~~ XaFlirtLate2.THOUGHTS
SAY @919
= @920
++ @921 + XaFlirtLate2.THOUGHTS1
++ @922 + XaFlirtLate2.THOUGHTS2
END

IF ~~ XaFlirtLate2.THOUGHTS1
SAY @923
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate2.THOUGHTS2
SAY @924
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate3
SAY @925
= @926
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate4
SAY @927
++ @928 + XaFlirtLate4.1
++ @929 + XaFlirtLate4.2
++ @930 + XaFlirtLate4.3
+ ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ + @931 + XaFlirtLate4.4
END

IF ~~ XaFlirtLate4.1
SAY @932
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate4.2
SAY @933
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate4.3
SAY @934
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate4.4
SAY @935
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate5
SAY @936
= @937
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate6
SAY @938
++ @939 + XaFlirtLate6.1
++ @940 + XaFlirtLate6.1
++ @941 + XaFlirtLate6.2
END

IF ~~ XaFlirtLate6.1
SAY @942
= @943
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate6.2
SAY @944
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate7
SAY @945
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate8
SAY @946
= @947
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate9
SAY @948
IF ~~ THEN EXIT
END

IF ~~ XaFlirtLate10
SAY @949
= @950
IF ~~ THEN EXIT
END

/* Romantic Scenes depending on Flirts */

/* Flirt 1 - Outdoors, at Rest, night */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFlirtTalk1","GLOBAL",1)~ THEN BEGIN XanFlirt1
SAY @951 
++ @952 DO ~SetGlobal("X#XAFlirtTalk1","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt1.1
++ @953 DO ~SetGlobal("X#XAFlirtTalk1","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt1.2
END

IF ~~ XanFlirt1.1
SAY @954
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ XanFlirt1.2
SAY @955
= @956
++ @957 + XanFlirt1.3
++ @958 + XanFlirt1.1
END

IF ~~ XanFlirt1.3
SAY @959
= @960
= @961
= @962
= @963
IF ~~ THEN EXIT
END

/* Flirt 2 - Outdoors, at Rest, night */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFlirtTalk1","GLOBAL",3)~ THEN BEGIN XanFlirt2
SAY @964 
= @965
++ @966 DO ~SetGlobal("X#XAFlirtTalk1","GLOBAL",4) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt2.1
++ @967 DO ~SetGlobal("X#XAFlirtTalk1","GLOBAL",4) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XaFlirt2.HAIR
++ @968 DO ~SetGlobal("X#XAFlirtTalk1","GLOBAL",4) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt2.2
++ @969 DO ~SetGlobal("X#XAFlirtTalk1","GLOBAL",4) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt2.3
END

IF ~~ XanFlirt2.1
SAY @970
IF ~~ THEN GOTO XaFlirt2.HAIR
END

IF ~~ XanFlirt2.2
SAY @971
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ XanFlirt2.3
SAY @972
IF ~~ THEN DO ~RestParty() SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ XaFlirt2.HAIR
SAY @973
= @974
= @975
= @976
= @977
= @978
= @979
= @980
++ @981 + XaFlirt2.NIGHT
++ @982 + XaFlirt2.KISS
++ @983 + XaFlirt2.BRAID
END

IF ~~ XaFlirt2.BRAID
SAY @984
++ @985 + XaFlirt2.NIGHT
++ @986 + XaFlirt2.KISS
++ @987 + XaFlirt2.BRAID1
END

IF ~~ XaFlirt2.BRAID1
SAY @988
= @989 
IF ~~ THEN GOTO XaFlirt2.NIGHT
END

IF ~~ XaFlirt2.KISS
SAY @990
IF ~~ THEN GOTO XaFlirt2.NIGHT
END

IF ~~ XaFlirt2.NIGHT
SAY @991
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Flirt 3 in the tavern, at rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFlirtTalk2","GLOBAL",1)~ THEN BEGIN XanFlirt3
SAY @992  
= @993
++ @994 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XaFlirt3.1
++ @995 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XaFlirt3.2
++ @996 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XaFlirt3.3
++ @997 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XaFlirt3.4
++ @998 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XaFlirt3.VISIONS
++ @999 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XaFlirt3.5
END

IF ~~ XaFlirt3.1
SAY @1000
IF ~~ THEN GOTO XaFlirt3.VISIONS
END

IF ~~ XaFlirt3.2
SAY @1001
IF ~~ THEN GOTO XaFlirt3.VISIONS
END

IF ~~ XaFlirt3.3
SAY @1002
= @1003
= @1004 
IF ~~ THEN GOTO XaFlirt3.KISS
END

IF ~~ XaFlirt3.4
SAY @1005
IF ~~ THEN GOTO XaFlirt3.KISS
END

IF ~~ XaFlirt3.5
SAY @1006
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ XaFlirt3.VISIONS
SAY @1007
= @1008
= @1009
= @1010
++ @1011 + XaFlirt3.KISS
++ @1012 + XaFlirt3.6
++ @1013 + XaFlirt3.7
++ @1014 + XaFlirt3.8
END

IF ~~ XaFlirt3.6
SAY @1015 
IF ~~ THEN GOTO XaFlirt3.KISS
END

IF ~~ XaFlirt3.7
SAY @1016
IF ~~ THEN GOTO XaFlirt3.KISS
END

IF ~~ XaFlirt3.8
SAY @1017
IF ~~ THEN GOTO XaFlirt3.KISS
END

IF ~~ XaFlirt3.KISS
SAY @1018
= @1019
IF ~~ THEN DO ~RestParty() SetGlobal("X#XanLover","GLOBAL",1) SetGlobal("X#XanFl3Lover","GLOBAL",1)~ EXIT
END

/*  Flirt 4 - the morning after the previous */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFlirtTalk2","GLOBAL",3)~ THEN BEGIN XanFlirt4
SAY @1020 
= @1021
++ @1022 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",4)~ + XaFlirt4.CANDLE
++ @1023 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",4)~ + XaFlirt4.1
++ @1024 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",4)~ + XaFlirt4.2
++ @1025 DO ~SetGlobal("X#XAFlirtTalk2","GLOBAL",4)~ + XaFlirt4.3
END

IF ~~ XaFlirt4.1
SAY @1026 
IF ~~ THEN GOTO XaFlirt4.CANDLE
END

IF ~~ XaFlirt4.2
SAY @1027 
IF ~~ THEN GOTO XaFlirt4.CANDLE
END

IF ~~ XaFlirt4.3
SAY @1028 
IF ~~ THEN GOTO XaFlirt4.CANDLE
END

IF ~~ XaFlirt4.CANDLE
SAY @1029
= @1030
IF ~~ THEN EXIT
END

/* Flirt 5 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFlirtTalk3","GLOBAL",1)~ THEN BEGIN XanFlirt5
SAY @1031  
= @1032
= @1033
= @1034
= @1035
= @1036
= @1037
= @1038
++ @1039 DO ~SetGlobal("X#XAFlirtTalk3","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt5.1
++ @1040 DO ~SetGlobal("X#XAFlirtTalk3","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt5.1
++ @1041 DO ~SetGlobal("X#XAFlirtTalk3","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt5.2
++ @1042 DO ~SetGlobal("X#XAFlirtTalk3","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt5.3
END

IF ~~ XanFlirt5.1
SAY @1043
IF ~~ THEN GOTO XanFlirt5.DESCENT
END

IF ~~ XanFlirt5.2
SAY @1044
IF ~~ THEN GOTO XanFlirt5.DESCENT
END

IF ~~ XanFlirt5.3
SAY @1045
IF ~~ THEN GOTO XanFlirt5.DESCENT
END

IF ~~ XanFlirt5.DESCENT
SAY @1046
= @1047
= @1048
= @1049
= @1050
IF ~~ THEN DO ~StartMovie("FLYTHR03")~ EXIT
END

/* Flirt 6 - Aubade */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFlirtTalk4","GLOBAL",1)~ THEN BEGIN XanFlirt6
SAY @1051 
++ @1052 DO ~SetGlobal("X#XAFlirtTalk4","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + LNT4.1
++ @1053 DO ~SetGlobal("X#XAFlirtTalk4","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + LNT4.2
++ @1054 DO ~SetGlobal("X#XAFlirtTalk4","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + LNT4.3
END
 
IF ~~ LNT4.1
SAY @1055
=@1056 
+ ~!Global("X#Aubade","GLOBAL",1)~ + @1057 + LNT4.2
++ @1054 + LNT4.3
++ @1058 + LNT4.4
END

IF ~~ LNT4.2
SAY @1059
++ @1060 DO ~SetGlobal("X#Aubade","GLOBAL",1)~ + LNT4.4
++ @1061 DO ~SetGlobal("X#Aubade","GLOBAL",1)~ + LNT4.5
++ @1062 DO ~SetGlobal("X#Aubade","GLOBAL",1)~ + LNT4.6
++ @1063 DO ~SetGlobal("X#Aubade","GLOBAL",1)~ + LNT4.7
END

IF ~~ LNT4.3
SAY @1064
++ @1052 + LNT4.1
++ @1065 + LNT4.2
++ @1066 + LNT4.4
END

IF ~~ LNT4.4
SAY @1067
++ @1068 + LNT4.8
++ @1069 + LNT4.9
++ @1070 + LNT4.10
+ ~ReputationGT(Player1,14) !Alignment(Player1,MASK_EVIL)~ + @1071 + LNT4.11
END

IF ~~ LNT4.5
SAY @1072
= @1073
++ @1074 + LNT4.12
++ @1075 + LNT4.4
++ @1076 + LNT4.13
END

IF ~~ LNT4.6
SAY @1077
= @1078
++ @1079 + LNT4.14
++ @1080 + LNT4.15
++ @1081 + LNT4.16
++ @1082 + LNT4.12
++ @1083 + LNT4.17
++ @1084 + LNT4.18
++ @1085 + LNT4.19
END

IF ~~ LNT4.7
SAY @1086
= @1078
++ @1079 + LNT4.14
++ @1080 + LNT4.15
++ @1081 + LNT4.16
++ @1082 + LNT4.12
++ @1083 + LNT4.17
++ @1084 + LNT4.18
++ @1085 + LNT4.19
END

IF ~~ LNT4.8
SAY @1087
++ @1088 + LNT4.9
++ @1070 + LNT4.10
+ ~ReputationGT(Player1,14) !Alignment(Player1,MASK_EVIL)~ + @1071 + LNT4.11
END

IF ~~ LNT4.9
SAY @1089
++ @1090EXIT
+ ~ReputationGT(Player1,14) !Alignment(Player1,MASK_EVIL)~ + @1071 + LNT4.11
END

IF ~~ LNT4.10
SAY @1091
++ @1090EXIT
+ ~ReputationGT(Player1,14) !Alignment(Player1,MASK_EVIL)~ + @1071 + LNT4.11
END

IF ~~ LNT4.11
SAY @1092
IF ~~ THEN EXIT
END

IF ~~ LNT4.12
SAY @1093
IF ~~ THEN EXIT
END

IF ~~ LNT4.13
SAY @1094
= @1095
++ @1079 + LNT4.14
++ @1080 + LNT4.15
++ @1081 + LNT4.16
++ @1082 + LNT4.12
++ @1083 + LNT4.17
++ @1084 + LNT4.18
++ @1085 + LNT4.19
END

IF ~~ LNT4.14
SAY @1096
IF ~~ THEN EXIT
END

IF ~~ LNT4.15
SAY @1097
IF ~~ THEN EXIT
END

IF ~~ LNT4.16
SAY @1098
= @1099
= @1100
IF ~~ THEN EXIT
END

IF ~~ LNT4.17
SAY @1101
IF ~~ THEN EXIT
END

IF ~~ LNT4.18
SAY @1102
IF ~~ THEN EXIT
END

IF ~~ LNT4.19
SAY @1103
IF ~~ THEN EXIT
END

/* Xan Flirt 7 - the dream with MOS keeping my fingers crossed */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAFlirtTalk5","GLOBAL",1)~ THEN BEGIN XanFlirt7
SAY @1104 
IF ~~ THEN DO ~SetGlobal("X#XAFlirtTalk5","GLOBAL",2) TextScreen("XANDREAM")~ EXIT
END

/* Xan Flirt 8 */

IF WEIGHT #-2 ~Global("X#XAFlirtTalk6","GLOBAL",1)~ THEN BEGIN XanFlirt8
SAY @1105 
++ @1106 DO ~SetGlobal("X#XAFlirtTalk6","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt8.1
++ @1107 DO ~SetGlobal("X#XAFlirtTalk6","GLOBAL",2) RealSetGlobalTimer("X#XaFlirtsTalkTime","GLOBAL",XAROM_TIMER)~ + XanFlirt8.2
END

IF ~~ XanFlirt8.1
SAY @1108
= @1109
= @1110
= @1111
IF ~~ THEN EXIT
END

IF ~~ XanFlirt8.2
SAY @295
IF ~~ THEN EXIT
END

/* Romance Breakers at Rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAAjantisBreak","GLOBAL",1)~ THEN BEGIN X#XanAjantisBreak
SAY @1112 
++ @1113 DO ~SetGlobal("X#XAAjantisBreak","GLOBAL",2) SetGlobal("X#XaRomanceInactive","GLOBAL",1) RestParty()~ EXIT
++ @1114 DO ~SetGlobal("X#XAAjantisBreak","GLOBAL",2) SetGlobal("X#AjantisRomanceActive","GLOBAL",3) RestParty()~ EXIT
++ @1115 DO ~SetGlobal("X#XAAjantisBreak","GLOBAL",2) SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#XaRomanceInactive","GLOBAL",1) RestParty()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XACoranBreak","GLOBAL",1)~ THEN BEGIN X#XanCoranBreak
SAY @1116  
++ @1117 DO ~SetGlobal("X#XACoranBreak","GLOBAL",2) SetGlobal("X#XaRomanceInactive","GLOBAL",1) RestParty()~ EXIT
++ @1118 DO ~SetGlobal("X#XACoranBreak","GLOBAL",2) SetGlobal("P#CoranRomanceInactive","GLOBAL",1) RestParty()~ EXIT
++ @1119 DO ~SetGlobal("X#XACoranBreak","GLOBAL",2) SetGlobal("X#XaRomanceInactive","GLOBAL",1) SetGlobal("P#CoranRomanceInactive","GLOBAL",1) RestParty()~ EXIT
END

/* Romance Breaker If  learned the TOB too early in Romance */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XABhaalBreak","GLOBAL",1)~ THEN BEGIN XanFlirt9
SAY @1120
IF ~~ THEN DO ~SetGlobal("X#XABhaalBreak","GLOBAL",2) SetGlobal("X#XaRomanceInactive","GLOBAL",1)~ EXIT
END


END

/* Character Reactions */

CHAIN IF ~%BGT_VAR% Global("X#DYREXA1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") InParty("dynaheir") See("xan") InMyArea("dynaheir") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1) Global("P#KnowBhaal","GLOBAL",1)~ THEN ~%DYNAHEIR_BANTER%~ DYREXA1
@1121
DO ~SetGlobal("X#DYREXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @1122
== ~%DYNAHEIR_BANTER%~ @1123
== ~%XAN_BANTER%~ @1124
== ~%DYNAHEIR_BANTER%~ @1125
== ~%XAN_BANTER%~ @1126
== ~%DYNAHEIR_BANTER%~ @1127
== ~%XAN_BANTER%~ @1128
EXIT

CHAIN IF ~%BGT_VAR% Global("X#ELXARE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") InParty("eldoth") InMyArea("eldoth") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) OR(2) Global("X#XARomanceActive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%ELDOTH_BANTER%~ ELXARE1
@1129
DO ~SetGlobal("X#ELXARE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1130
== ~%ELDOTH_BANTER%~ @1131
== ~%XAN_BANTER%~ @1132
== ~%ELDOTH_BANTER%~ @1133
== ~%XAN_BANTER%~ @1134
== ~%ELDOTH_BANTER%~ @1135
== ~%XAN_BANTER%~ @1136
== ~%ELDOTH_BANTER%~ @1137
END
++ @1138 + ELXARE1.1
++ @1139 EXTERN ~%XAN_JOINED%~ ELXARE1.2
++ @1140 EXTERN ~%XAN_JOINED%~ ELXARE1.3
++ @1141 + ELXARE1.4

CHAIN ~%ELDOTH_BANTER%~ ELXARE1.1
@1142
EXIT

CHAIN ~%XAN_JOINED%~ ELXARE1.2
@1143
== ~%ELDOTH_BANTER%~ @1144
== ~%XAN_BANTER%~ @1145
EXIT

CHAIN ~%XAN_JOINED%~ ELXARE1.3
@1146
EXIT

CHAIN ~%ELDOTH_BANTER%~ ELXARE1.4
@1147
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAFARE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") InParty("faldorn") InMyArea("faldorn") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%FALDORN_BANTER%~ XAFARE1
@1148
DO ~SetGlobal("X#XAFARE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1149
== ~%FALDORN_BANTER%~ @1150
== ~%XAN_BANTER%~ @1151
== ~%FALDORN_BANTER%~ @1152
== ~%XAN_BANTER%~ @1153
== ~%FALDORN_BANTER%~ @1154
== ~%XAN_BANTER%~ @1155
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAKARE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") InParty("kagain") InMyArea("kagain") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%KAGAIN_BANTER%~ XAKARE1
@1156
DO ~SetGlobal("X#XAKARE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1157
== ~%KAGAIN_BANTER%~ @1158
== ~%XAN_BANTER%~ @1159
== ~%KAGAIN_BANTER%~ @1160
== ~%XAN_BANTER%~ @1161
== ~%KAGAIN_BANTER%~ @1162
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAKHRE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%KHALID_BANTER%~ XAKHRE1
@1163
DO ~SetGlobal("X#XAKHRE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1164
== ~%KHALID_BANTER%~ @1165
= @1166
== ~%XAN_BANTER%~ @1167
== ~%KHALID_BANTER%~ @1168
== ~%XAN_BANTER%~ @477
== ~%KHALID_BANTER%~ @1169
== ~%XAN_BANTER%~ @1170
== ~%KHALID_BANTER%~ @1171
== ~%XAN_BANTER%~ @1172
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAKIRE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("kivan") See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",1) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%XAN_BANTER%~ XAKIRE1
@1173
DO ~SetGlobal("X#XAKIRE1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @1174
== ~%XAN_BANTER%~ @1175
== ~%KIVAN_BANTER%~ @1176
== ~%XAN_BANTER%~ @1177
== ~%KIVAN_BANTER%~ @1178
== ~%XAN_BANTER%~ @1179
== ~%KIVAN_BANTER%~ @1172
== ~%XAN_BANTER%~ @1172
== ~%KIVAN_BANTER%~ @1180
== ~%XAN_BANTER%~ @1181
== ~%KIVAN_BANTER%~ @1182
== ~%XAN_BANTER%~ @1183
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAXZRE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%XZAR_BANTER%~ XAXZRE1
@1184
DO ~SetGlobal("X#XAXZRE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1185
== ~%XZAR_BANTER%~ @1186
== ~%XAN_BANTER%~ @1187
= @1188
== ~%XZAR_BANTER%~ @1189
== ~%XAN_BANTER%~ @1190
== ~%XZAR_BANTER%~ @1191
== ~%XAN_BANTER%~ @1192
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAALRE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID) OR(2) Global("X#XARomanceActive","GLOBAL",2) Global("X#XARomanceActive","GLOBAL",1) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%ALORA_BANTER%~ XAALRE1
@1193
DO ~SetGlobal("X#XAALRE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1194
== ~%ALORA_BANTER%~ @1195
= @1196
== ~%XAN_BANTER%~ @1197
== ~%XAN_BANTER%~ @1198
== ~%ALORA_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1199
== ~%ALORA_BANTER%~ IF ~InParty("jaheira") !InParty("%IMOEN_DV%")~ THEN @1200
== ~%ALORA_BANTER%~ IF ~!InParty("jaheira") !InParty("%IMOEN_DV%")~ THEN @1201
== ~%XAN_BANTER%~ @1202
== ~%ALORA_BANTER%~ @1203
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XABRRE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%BRANWEN_BANTER%~ XABRRE1
@1204
DO ~SetGlobal("X#XABRRE1","LOCALS",1)~
== ~%XAN_BANTER%~ @319
== ~%BRANWEN_BANTER%~ @1206
== ~%XAN_BANTER%~ @1207
== ~%BRANWEN_BANTER%~ @1208
== ~%XAN_BANTER%~ @1209
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAGARE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%GARRICK_BANTER%~ XAGARE1
@1210
DO ~SetGlobal("X#XAGARE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1211
== ~%GARRICK_BANTER%~ @1212
== ~%XAN_BANTER%~ @1213
== ~%GARRICK_BANTER%~ @1214
== ~%XAN_BANTER%~ @1215
== ~%GARRICK_BANTER%~ @1216
== ~%XAN_BANTER%~ @1217
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAIMRE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1) Race(Player1,ELF)~ THEN ~%IMOEN_BANTER%~ XAIMRE1
@1218
DO ~SetGlobal("X#XAIMRE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1219
== ~%IMOEN_BANTER%~ @1220
== ~%XAN_BANTER%~ @1221
== ~%IMOEN_BANTER%~ @1222
== ~%XAN_BANTER%~ @1223
== ~%IMOEN_BANTER%~ @1224
== ~%XAN_BANTER%~ @1225
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XASARE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID) OR(2) Global("X#XARomanceActive","GLOBAL",2) Global("X#XARomanceActive","GLOBAL",1) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%SAFANA_BANTER%~ XASARE1
@1226
DO ~SetGlobal("X#XASARE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1227
== ~%SAFANA_BANTER%~ @1228
== ~%XAN_BANTER%~ @1229
== ~%SAFANA_BANTER%~ @1230
== ~%XAN_BANTER%~ @1231
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XASKRE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID) Global("X#XARomanceActive","GLOBAL",2) !Global("X#XARomanceInactive","GLOBAL",1) Race(Player1,ELF)~ THEN ~%SKIE_BANTER%~ XASKRE1
@1232
DO ~SetGlobal("X#XASKRE1","LOCALS",1)~
== ~%SKIE_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1233
== ~%SKIE_BANTER%~ @1234
== ~%XAN_BANTER%~ @1235
== ~%SKIE_BANTER%~ @1236
== ~%SKIE_BANTER%~ IF ~!InParty("eldoth")~ THEN @1237
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") !InParty("eldoth")~ THEN @1238
== ~%XAN_BANTER%~ IF ~!InParty("eldoth")~ THEN @1239
== ~%SKIE_BANTER%~ IF ~!InParty("eldoth")~ THEN @1240
== ~%SKIE_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1241
== ~%XAN_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1242
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAVRE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("xan") See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID) OR(2) Global("X#XARomanceActive","GLOBAL",2) Global("X#XARomanceActive","GLOBAL",1) !Global("X#XARomanceInactive","GLOBAL",1)~ THEN ~%VICONIA_BANTER%~ XAVIRE1
@1243
DO ~SetGlobal("X#XAVRE1","LOCALS",1)~
== ~%XAN_BANTER%~ @1244
== ~%VICONIA_BANTER%~ @1245
== ~%XAN_BANTER%~ @1246
== ~%VICONIA_BANTER%~ @1247
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAMORE1","GLOBAL",1)~ THEN ~%MONTARON_JOINED%~ XAMORE1
@1248
DO ~SetGlobal("X#XAMORE1","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~
== ~%XAN_BANTER%~ @1249
== ~%MONTARON_BANTER%~ @1250
== ~%XAN_BANTER%~ @1251
== ~%MONTARON_BANTER%~ @1252
== ~%XAN_BANTER%~ @1253
== ~%MONTARON_BANTER%~ @1254
== ~%XAN_BANTER%~ @1255
END
++ @1256 + XAMORE1.1
++ @1257 + XAMORE1.1
++ @1258 EXTERN ~%XAN_BANTER%~ XAMORE1.2
++ @1259 + XAMORE1.3


CHAIN ~%MONTARON_JOINED%~ XAMORE1.1
@1260
EXIT

CHAIN ~%MONTARON_JOINED%~ XAMORE1.3
@1261
END
IF ~~ DO ~SetGlobal("X#XAMORE1","GLOBAL",3) ActionOverride("montaron",Kill("xan"))~ EXIT

CHAIN ~%XAN_BANTER%~ XAMORE1.2
@1262
== ~%MONTARON_BANTER%~ @1261
END
IF ~~ DO ~SetGlobal("X#XAMORE1","GLOBAL",3) ActionOverride("montaron",Kill("xan"))~ EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XATIRE","GLOBAL",1)~ THEN ~%TIAX_JOINED%~ X#XATIRE1
@1263
DO ~SetGlobal("X#XATIRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~
== ~%XAN_BANTER%~ @1264
== ~%TIAX_BANTER%~ @1265
== ~%XAN_BANTER%~ @1266
== ~%TIAX_BANTER%~ @1267
== ~%XAN_BANTER%~ @1268
== ~%TIAX_BANTER%~ @1269
== ~%XAN_BANTER%~ @1270
END
++ @1271 EXTERN ~%XAN_JOINED%~ X#XATIRE1.1
++ @1272 EXTERN ~%XAN_JOINED%~ X#XATIRE1.2
++ @1273 EXTERN ~%XAN_JOINED%~ X#XATIRE1.3
++ @1274 EXTERN ~%XAN_JOINED%~ X#XATIRE1.4
++ @1275EXIT

CHAIN ~%XAN_JOINED%~ X#XATIRE1.1
@1276
EXIT

CHAIN ~%XAN_JOINED%~ X#XATIRE1.2
@1277
EXIT

CHAIN ~%XAN_JOINED%~ X#XATIRE1.3
@1278
== ~%TIAX_BANTER%~ @1279
EXIT

CHAIN ~%XAN_JOINED%~ X#XATIRE1.4
@1280
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAMIRE","GLOBAL",1)~ THEN ~%MINSC_JOINED%~ X#XAMIRE1
@1281
DO ~SetGlobal("X#XAMIRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~
== ~%XAN_BANTER%~ @1282
== ~%MINSC_BANTER%~ @1283
= @1284
== ~%XAN_BANTER%~ @1285
== ~%MINSC_BANTER%~ @1286
== ~%XAN_BANTER%~ @1287
END
++ @1288 EXTERN ~%XAN_JOINED%~ X#XAMIRE1.1
++ @1289 EXTERN ~%XAN_JOINED%~ X#XAMIRE1.1
++ @1290 EXTERN ~%XAN_JOINED%~ X#XAMIRE1.2
++ @1291 EXTERN ~%XAN_JOINED%~ X#XAMIRE1.3

CHAIN ~%XAN_JOINED%~ X#XAMIRE1.1
@1292
EXIT

CHAIN ~%XAN_JOINED%~ X#XAMIRE1.2
@1293
END
++ @1294 EXTERN ~%XAN_JOINED%~ X#XAMIRE1.4
++ @1295 EXTERN ~%XAN_JOINED%~ X#XAMIRE1.4
++ @1296 EXTERN ~%XAN_JOINED%~ X#XAMIRE1.5
++ @1297 EXTERN ~%XAN_JOINED%~ X#XAMIRE1.6

CHAIN ~%XAN_JOINED%~ X#XAMIRE1.3
@1298
EXIT

CHAIN ~%XAN_JOINED%~ X#XAMIRE1.4
@1299
EXIT

CHAIN ~%XAN_JOINED%~ X#XAMIRE1.5
@1300
EXIT

CHAIN ~%XAN_JOINED%~ X#XAMIRE1.6
@1301
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAQURE","GLOBAL",1)~ THEN ~%QUAYLE_JOINED%~ X#XAQURE1
@1302
== ~%XAN_BANTER%~ @1303
END
++ @1304 DO ~SetGlobal("X#XAQURE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XAQURE1.1
++ @1305 DO ~SetGlobal("X#XAQURE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XAQURE1.1
++ @1306 DO ~SetGlobal("X#XAQURE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XAQURE1.1

CHAIN ~%QUAYLE_JOINED%~ X#XAQURE1.1
@1307
= @1308
END
++ @1309 + X#XAQURE1.2
++ @1310 + X#XAQURE1.2
++ @1311 + X#XAQURE1.2

CHAIN ~%QUAYLE_JOINED%~ X#XAQURE1.2
@1312
== ~%XAN_BANTER%~ @1313
== ~%QUAYLE_JOINED%~ @1314
== ~%XAN_BANTER%~ @1315
END
++ @1316 + X#XAQURE1.3
++ @1317 + X#XAQURE1.3

CHAIN ~%QUAYLE_JOINED%~ X#XAQURE1.3
@1318
= @1319
== ~%XAN_BANTER%~ @1320
== ~%QUAYLE_JOINED%~ @1321
EXIT

APPEND ~SHARTJ~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XASTRE","GLOBAL",1)~ THEN BEGIN X#XASTRE1
SAY @1322
= @1323
++ @1324 DO ~SetGlobal("X#XASTRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XASTRE1.1
++ @1325 DO ~SetGlobal("X#XASTRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XASTRE1.1
++ @1326 DO ~SetGlobal("X#XASTRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XASTRE1.2
++ @1327 DO ~SetGlobal("X#XASTRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XASTRE1.2
+ ~Global("X#XARomanceActive","GLOBAL",1)~ + @1328 DO ~SetGlobal("X#XASTRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ EXTERN ~%XAN_JOINED%~ X#XASTRE1.3
END

IF ~~ X#XASTRE1.1
SAY @1329
IF ~~ THEN EXIT
END

IF ~~ X#XASTRE1.2
SAY @1330
IF ~~ THEN EXIT
END

END

CHAIN ~%XAN_JOINED%~ X#XASTRE1.3
@1331
END
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT

APPEND ~%MONTARON_JOINED%~ 

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAMORE1","GLOBAL",3)~ THEN BEGIN XAMORE1.4
SAY @1332
++ @1333 DO ~SetGlobal("X#XAMORE1","GLOBAL",4)~ + XAMORE1.5
END

IF ~~ XAMORE1.5
SAY @1334
++ @1335 + XAMORE1.6
++ @1336 + XAMORE1.7
++ @1337 + XAMORE1.8
END

IF ~~ XAMORE1.6
SAY @1338
IF ~~ THEN EXIT
END

IF ~~ XAMORE1.7
SAY @1339
IF ~~ THEN EXIT
END

IF ~~ XAMORE1.8
SAY @1340
IF ~~ THEN EXIT
END

END

APPEND ~%EDWIN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAEDRE","GLOBAL",1)~ THEN BEGIN X#XAEDRE
SAY @1341
++ @1342 DO ~SetGlobal("X#XAEDRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + XAEDRE1.1
++ @1343 DO ~SetGlobal("X#XAEDRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + XAEDRE1.2
++ @1344 DO ~SetGlobal("X#XAEDRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + XAEDRE1.3
++ @1345 DO ~SetGlobal("X#XAEDRE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + XAEDRE1.4
END

IF ~~ XAEDRE1.1
SAY @1346
IF ~~ THEN EXIT
END

IF ~~ XAEDRE1.2
SAY @1347
IF ~~ THEN EXIT
END

IF ~~ XAEDRE1.3
SAY @1348
IF ~~ THEN EXIT
END

IF ~~ XAEDRE1.4
SAY @1349
IF ~~ THEN EXIT
END

END

APPEND ~%JAHEIRA_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAJARE","GLOBAL",1)~ THEN BEGIN X#XAJARE
SAY @1350
++ @1351 DO ~SetGlobal("X#XAJARE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XAJARE1.1
++ @1352 DO ~SetGlobal("X#XAJARE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XAJARE1.2
++ @1353 DO ~SetGlobal("X#XAJARE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XAJARE1.2
++ @1354 DO ~SetGlobal("X#XAJARE","GLOBAL",2) RealSetGlobalTimer("X#XaReactionTime","GLOBAL",XAROM_TIMER)~ + X#XAJARE1.2
END

IF ~~ X#XAJARE1.1
SAY @1355
= @1356
++ @1357 + X#XAJARE1.3
++ @1358 + X#XAJARE1.4
++ @1359 + X#XAJARE1.4
++ @1360 + X#XAJARE1.5
++ @1361 + X#XAJARE1.6
++ @1362 + X#XAJARE1.3
END

IF ~~ X#XAJARE1.2
SAY @1363
= @1355
= @1356
++ @1357 + X#XAJARE1.3
++ @1358 + X#XAJARE1.4
++ @1359 + X#XAJARE1.4
++ @1360 + X#XAJARE1.5
++ @1361 + X#XAJARE1.6
++ @1362 + X#XAJARE1.3
END

IF ~~ X#XAJARE1.4
SAY @1364
IF ~~ THEN EXIT
END

IF ~~ X#XAJARE1.3
SAY @1365
IF ~~ THEN EXIT
END

IF ~~ X#XAJARE1.5
SAY @1366
IF ~~ THEN EXIT
END 

IF ~~ X#XAJARE1.6
SAY @1367
IF ~~ THEN EXIT
END 

END

/* Xan's banters with Coran and Ajantis: */
/* Coran */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XanCoranConflict","GLOBAL",2)~ THEN ~%XAN_BANTER%~ XACORE1
@1368
DO ~SetGlobal("X#XanCoranConflict","GLOBAL",3) RealSetGlobalTimer("X#XaCoReactionTime","GLOBAL",XAROM_TIMER)~
== ~%CORAN_BANTER%~ @1369
== ~%XAN_BANTER%~ @1370
== ~%CORAN_BANTER%~ @1371
== ~%XAN_BANTER%~ @585
== ~%CORAN_BANTER%~ @1372
== ~%XAN_BANTER%~ @1373
== ~%CORAN_BANTER%~ @1374
== ~%XAN_BANTER%~ @1375
== ~%CORAN_BANTER%~ @1376
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XanCoranConflict","GLOBAL",4)~ THEN ~%CORAN_BANTER%~ COXARE1
@1377
DO ~SetGlobal("X#XanCoranConflict","GLOBAL",5) RealSetGlobalTimer("X#XaCoReactionTime","GLOBAL",XAROM_TIMER)~
== ~%XAN_BANTER%~ @1378
== ~%CORAN_BANTER%~ @1379
== ~%XAN_BANTER%~ @1380
== ~%CORAN_BANTER%~ @1381
== ~%XAN_BANTER%~ @1382
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XanCoranConflict","GLOBAL",6)~ THEN ~%XAN_BANTER%~ XACORE2
@1383
DO ~SetGlobal("X#XanCoranConflict","GLOBAL",7) RealSetGlobalTimer("X#XaCoReactionTime","GLOBAL",XAROM_TIMER)~
== ~%CORAN_BANTER%~ @1384
== ~%XAN_BANTER%~ @1385
== ~%CORAN_BANTER%~ @1386
== ~%XAN_BANTER%~ @1387
== ~%CORAN_BANTER%~ @1388
== ~%XAN_BANTER%~ @1389
== ~%CORAN_BANTER%~ @1390
== ~%CORAN_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !Global("X#AjantisRomanceActive","GLOBAL",3)~ THEN @1391
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !Global("X#AjantisRomanceActive","GLOBAL",3)~ THEN @1392
== ~%XAN_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !Global("X#AjantisRomanceActive","GLOBAL",3)~ THEN @1393
= @1394
== ~%CORAN_BANTER%~ IF ~InParty("ajantis") !Global("X#AjantisRomanceActive","GLOBAL",3)~ THEN @1395
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XanCoranConflict","GLOBAL",8)~ THEN ~%CORAN_BANTER%~ COXARE2
@1396
DO ~SetGlobal("X#XanCoranConflict","GLOBAL",9)~
== ~%XAN_BANTER%~ @1397
== ~%CORAN_BANTER%~ @1398
== ~%XAN_BANTER%~ @1399
== ~%CORAN_BANTER%~ @1400
== ~%XAN_BANTER%~ @1401
EXIT

/* Ajantis */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XanAjantisConflict","GLOBAL",2)~ THEN ~%AJANTIS_BANTER%~ AJXARE1
@1402
DO ~SetGlobal("X#XanAjantisConflict","GLOBAL",3) RealSetGlobalTimer("X#XaAjReactionTime","GLOBAL",XAROM_TIMER)~
== ~%XAN_BANTER%~ @1403
== ~%AJANTIS_BANTER%~ @1404
== ~%XAN_BANTER%~ @1405
== ~%AJANTIS_BANTER%~ @1406
== ~%XAN_BANTER%~ @1407
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XanAjantisConflict","GLOBAL",4)~ THEN ~%XAN_BANTER%~ XAAJRE1
@1408
DO ~SetGlobal("X#XanAjantisConflict","GLOBAL",5) RealSetGlobalTimer("X#XaAjReactionTime","GLOBAL",XAROM_TIMER)~
== ~%AJANTIS_BANTER%~ @1409
== ~%XAN_BANTER%~ @1410
== ~%AJANTIS_BANTER%~ @1411
== ~%XAN_BANTER%~ @1412
== ~%AJANTIS_BANTER%~ @1413
== ~%XAN_BANTER%~ @1414
== ~%AJANTIS_BANTER%~ @1415
== ~%XAN_BANTER%~ @1416
== ~%AJANTIS_BANTER%~ @1417
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XanAjantisConflict","GLOBAL",6)~ THEN ~%XAN_BANTER%~ XAAJRE2
@1172
DO ~SetGlobal("X#XanAjantisConflict","GLOBAL",7) RealSetGlobalTimer("X#XaAjReactionTime","GLOBAL",XAROM_TIMER)~
== ~%AJANTIS_BANTER%~ @1418
== ~%XAN_BANTER%~ @1419
== ~%AJANTIS_BANTER%~ @1420
== ~%XAN_BANTER%~ @1421
== ~%AJANTIS_BANTER%~ @1422
== ~%XAN_BANTER%~ @1423
== ~%AJANTIS_BANTER%~ @1424
== ~%XAN_BANTER%~ @1425
== ~%AJANTIS_BANTER%~ @1426
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XanAjantisConflict","GLOBAL",8)~ THEN ~%XAN_BANTER%~ XAAJRE3
@1427
DO ~SetGlobal("X#XanAjantisConflict","GLOBAL",9)~
== ~%AJANTIS_BANTER%~ @1428
== ~%XAN_BANTER%~ @1429
== ~%AJANTIS_BANTER%~ @1430
== ~%XAN_BANTER%~ @1431
EXIT