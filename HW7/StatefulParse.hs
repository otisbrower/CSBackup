{-# OPTIONS_GHC -w #-}
module StatefulParse where
import Prelude hiding (LT, GT, EQ, id)
import Data.Char
import CheckedStatefulMonad
import Stateful hiding (evaluate, execute)
import ErrorChecking hiding (evaluate, execute)
import Lexer

-- parser produced by Happy Version 1.19.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

action_0 (12) = happyShift action_2
action_0 (13) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (16) = happyShift action_13
action_0 (17) = happyShift action_14
action_0 (18) = happyShift action_15
action_0 (19) = happyShift action_16
action_0 (21) = happyShift action_17
action_0 (22) = happyShift action_18
action_0 (25) = happyShift action_19
action_0 (34) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (37) = happyShift action_22
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 (10) = happyGoto action_9
action_0 (11) = happyGoto action_10
action_0 _ = happyFail

action_1 (12) = happyShift action_2
action_1 _ = happyFail

action_2 (37) = happyShift action_45
action_2 _ = happyFail

action_3 (20) = happyShift action_44
action_3 (41) = happyAccept
action_3 _ = happyFail

action_4 _ = happyReduce_5

action_5 (23) = happyShift action_42
action_5 (36) = happyShift action_43
action_5 _ = happyReduce_8

action_6 (33) = happyShift action_41
action_6 _ = happyReduce_10

action_7 (28) = happyShift action_36
action_7 (29) = happyShift action_37
action_7 (30) = happyShift action_38
action_7 (31) = happyShift action_39
action_7 (32) = happyShift action_40
action_7 _ = happyReduce_12

action_8 (24) = happyShift action_34
action_8 (25) = happyShift action_35
action_8 _ = happyReduce_18

action_9 (26) = happyShift action_32
action_9 (27) = happyShift action_33
action_9 _ = happyReduce_21

action_10 (37) = happyShift action_31
action_10 _ = happyReduce_24

action_11 (37) = happyShift action_30
action_11 _ = happyFail

action_12 _ = happyReduce_27

action_13 _ = happyReduce_28

action_14 (21) = happyShift action_29
action_14 _ = happyFail

action_15 (15) = happyShift action_12
action_15 (16) = happyShift action_13
action_15 (18) = happyShift action_15
action_15 (21) = happyShift action_17
action_15 (22) = happyShift action_18
action_15 (25) = happyShift action_19
action_15 (34) = happyShift action_20
action_15 (35) = happyShift action_21
action_15 (37) = happyShift action_22
action_15 (11) = happyGoto action_28
action_15 _ = happyFail

action_16 (12) = happyShift action_2
action_16 (13) = happyShift action_11
action_16 (15) = happyShift action_12
action_16 (16) = happyShift action_13
action_16 (17) = happyShift action_14
action_16 (18) = happyShift action_15
action_16 (19) = happyShift action_16
action_16 (21) = happyShift action_17
action_16 (22) = happyShift action_18
action_16 (25) = happyShift action_19
action_16 (34) = happyShift action_20
action_16 (35) = happyShift action_21
action_16 (37) = happyShift action_22
action_16 (4) = happyGoto action_27
action_16 (5) = happyGoto action_4
action_16 (6) = happyGoto action_5
action_16 (7) = happyGoto action_6
action_16 (8) = happyGoto action_7
action_16 (9) = happyGoto action_8
action_16 (10) = happyGoto action_9
action_16 (11) = happyGoto action_10
action_16 _ = happyFail

action_17 _ = happyReduce_33

action_18 _ = happyReduce_26

action_19 (15) = happyShift action_12
action_19 (16) = happyShift action_13
action_19 (18) = happyShift action_15
action_19 (21) = happyShift action_17
action_19 (22) = happyShift action_18
action_19 (25) = happyShift action_19
action_19 (34) = happyShift action_20
action_19 (35) = happyShift action_21
action_19 (37) = happyShift action_22
action_19 (11) = happyGoto action_26
action_19 _ = happyFail

action_20 (15) = happyShift action_12
action_20 (16) = happyShift action_13
action_20 (18) = happyShift action_15
action_20 (21) = happyShift action_17
action_20 (22) = happyShift action_18
action_20 (25) = happyShift action_19
action_20 (34) = happyShift action_20
action_20 (35) = happyShift action_21
action_20 (37) = happyShift action_22
action_20 (11) = happyGoto action_25
action_20 _ = happyFail

action_21 (15) = happyShift action_12
action_21 (16) = happyShift action_13
action_21 (18) = happyShift action_15
action_21 (21) = happyShift action_17
action_21 (22) = happyShift action_18
action_21 (25) = happyShift action_19
action_21 (34) = happyShift action_20
action_21 (35) = happyShift action_21
action_21 (37) = happyShift action_22
action_21 (11) = happyGoto action_24
action_21 _ = happyFail

action_22 (12) = happyShift action_2
action_22 (13) = happyShift action_11
action_22 (15) = happyShift action_12
action_22 (16) = happyShift action_13
action_22 (17) = happyShift action_14
action_22 (18) = happyShift action_15
action_22 (19) = happyShift action_16
action_22 (21) = happyShift action_17
action_22 (22) = happyShift action_18
action_22 (25) = happyShift action_19
action_22 (34) = happyShift action_20
action_22 (35) = happyShift action_21
action_22 (37) = happyShift action_22
action_22 (4) = happyGoto action_23
action_22 (5) = happyGoto action_4
action_22 (6) = happyGoto action_5
action_22 (7) = happyGoto action_6
action_22 (8) = happyGoto action_7
action_22 (9) = happyGoto action_8
action_22 (10) = happyGoto action_9
action_22 (11) = happyGoto action_10
action_22 _ = happyFail

action_23 (20) = happyShift action_44
action_23 (38) = happyShift action_63
action_23 _ = happyFail

action_24 (37) = happyShift action_31
action_24 _ = happyReduce_31

action_25 (37) = happyShift action_31
action_25 _ = happyReduce_30

action_26 (37) = happyShift action_31
action_26 _ = happyReduce_29

action_27 _ = happyReduce_6

action_28 (37) = happyShift action_31
action_28 _ = happyReduce_32

action_29 (23) = happyShift action_62
action_29 _ = happyFail

action_30 (12) = happyShift action_2
action_30 (13) = happyShift action_11
action_30 (15) = happyShift action_12
action_30 (16) = happyShift action_13
action_30 (17) = happyShift action_14
action_30 (18) = happyShift action_15
action_30 (19) = happyShift action_16
action_30 (21) = happyShift action_17
action_30 (22) = happyShift action_18
action_30 (25) = happyShift action_19
action_30 (34) = happyShift action_20
action_30 (35) = happyShift action_21
action_30 (37) = happyShift action_22
action_30 (4) = happyGoto action_61
action_30 (5) = happyGoto action_4
action_30 (6) = happyGoto action_5
action_30 (7) = happyGoto action_6
action_30 (8) = happyGoto action_7
action_30 (9) = happyGoto action_8
action_30 (10) = happyGoto action_9
action_30 (11) = happyGoto action_10
action_30 _ = happyFail

action_31 (12) = happyShift action_2
action_31 (13) = happyShift action_11
action_31 (15) = happyShift action_12
action_31 (16) = happyShift action_13
action_31 (17) = happyShift action_14
action_31 (18) = happyShift action_15
action_31 (19) = happyShift action_16
action_31 (21) = happyShift action_17
action_31 (22) = happyShift action_18
action_31 (25) = happyShift action_19
action_31 (34) = happyShift action_20
action_31 (35) = happyShift action_21
action_31 (37) = happyShift action_22
action_31 (4) = happyGoto action_60
action_31 (5) = happyGoto action_4
action_31 (6) = happyGoto action_5
action_31 (7) = happyGoto action_6
action_31 (8) = happyGoto action_7
action_31 (9) = happyGoto action_8
action_31 (10) = happyGoto action_9
action_31 (11) = happyGoto action_10
action_31 _ = happyFail

action_32 (15) = happyShift action_12
action_32 (16) = happyShift action_13
action_32 (18) = happyShift action_15
action_32 (21) = happyShift action_17
action_32 (22) = happyShift action_18
action_32 (25) = happyShift action_19
action_32 (34) = happyShift action_20
action_32 (35) = happyShift action_21
action_32 (37) = happyShift action_22
action_32 (11) = happyGoto action_59
action_32 _ = happyFail

action_33 (15) = happyShift action_12
action_33 (16) = happyShift action_13
action_33 (18) = happyShift action_15
action_33 (21) = happyShift action_17
action_33 (22) = happyShift action_18
action_33 (25) = happyShift action_19
action_33 (34) = happyShift action_20
action_33 (35) = happyShift action_21
action_33 (37) = happyShift action_22
action_33 (11) = happyGoto action_58
action_33 _ = happyFail

action_34 (15) = happyShift action_12
action_34 (16) = happyShift action_13
action_34 (18) = happyShift action_15
action_34 (21) = happyShift action_17
action_34 (22) = happyShift action_18
action_34 (25) = happyShift action_19
action_34 (34) = happyShift action_20
action_34 (35) = happyShift action_21
action_34 (37) = happyShift action_22
action_34 (10) = happyGoto action_57
action_34 (11) = happyGoto action_10
action_34 _ = happyFail

action_35 (15) = happyShift action_12
action_35 (16) = happyShift action_13
action_35 (18) = happyShift action_15
action_35 (21) = happyShift action_17
action_35 (22) = happyShift action_18
action_35 (25) = happyShift action_19
action_35 (34) = happyShift action_20
action_35 (35) = happyShift action_21
action_35 (37) = happyShift action_22
action_35 (10) = happyGoto action_56
action_35 (11) = happyGoto action_10
action_35 _ = happyFail

action_36 (15) = happyShift action_12
action_36 (16) = happyShift action_13
action_36 (18) = happyShift action_15
action_36 (21) = happyShift action_17
action_36 (22) = happyShift action_18
action_36 (25) = happyShift action_19
action_36 (34) = happyShift action_20
action_36 (35) = happyShift action_21
action_36 (37) = happyShift action_22
action_36 (9) = happyGoto action_55
action_36 (10) = happyGoto action_9
action_36 (11) = happyGoto action_10
action_36 _ = happyFail

action_37 (15) = happyShift action_12
action_37 (16) = happyShift action_13
action_37 (18) = happyShift action_15
action_37 (21) = happyShift action_17
action_37 (22) = happyShift action_18
action_37 (25) = happyShift action_19
action_37 (34) = happyShift action_20
action_37 (35) = happyShift action_21
action_37 (37) = happyShift action_22
action_37 (9) = happyGoto action_54
action_37 (10) = happyGoto action_9
action_37 (11) = happyGoto action_10
action_37 _ = happyFail

action_38 (15) = happyShift action_12
action_38 (16) = happyShift action_13
action_38 (18) = happyShift action_15
action_38 (21) = happyShift action_17
action_38 (22) = happyShift action_18
action_38 (25) = happyShift action_19
action_38 (34) = happyShift action_20
action_38 (35) = happyShift action_21
action_38 (37) = happyShift action_22
action_38 (9) = happyGoto action_53
action_38 (10) = happyGoto action_9
action_38 (11) = happyGoto action_10
action_38 _ = happyFail

action_39 (15) = happyShift action_12
action_39 (16) = happyShift action_13
action_39 (18) = happyShift action_15
action_39 (21) = happyShift action_17
action_39 (22) = happyShift action_18
action_39 (25) = happyShift action_19
action_39 (34) = happyShift action_20
action_39 (35) = happyShift action_21
action_39 (37) = happyShift action_22
action_39 (9) = happyGoto action_52
action_39 (10) = happyGoto action_9
action_39 (11) = happyGoto action_10
action_39 _ = happyFail

action_40 (15) = happyShift action_12
action_40 (16) = happyShift action_13
action_40 (18) = happyShift action_15
action_40 (21) = happyShift action_17
action_40 (22) = happyShift action_18
action_40 (25) = happyShift action_19
action_40 (34) = happyShift action_20
action_40 (35) = happyShift action_21
action_40 (37) = happyShift action_22
action_40 (9) = happyGoto action_51
action_40 (10) = happyGoto action_9
action_40 (11) = happyGoto action_10
action_40 _ = happyFail

action_41 (15) = happyShift action_12
action_41 (16) = happyShift action_13
action_41 (18) = happyShift action_15
action_41 (21) = happyShift action_17
action_41 (22) = happyShift action_18
action_41 (25) = happyShift action_19
action_41 (34) = happyShift action_20
action_41 (35) = happyShift action_21
action_41 (37) = happyShift action_22
action_41 (8) = happyGoto action_50
action_41 (9) = happyGoto action_8
action_41 (10) = happyGoto action_9
action_41 (11) = happyGoto action_10
action_41 _ = happyFail

action_42 (15) = happyShift action_12
action_42 (16) = happyShift action_13
action_42 (18) = happyShift action_15
action_42 (21) = happyShift action_17
action_42 (22) = happyShift action_18
action_42 (25) = happyShift action_19
action_42 (34) = happyShift action_20
action_42 (35) = happyShift action_21
action_42 (37) = happyShift action_22
action_42 (5) = happyGoto action_49
action_42 (6) = happyGoto action_5
action_42 (7) = happyGoto action_6
action_42 (8) = happyGoto action_7
action_42 (9) = happyGoto action_8
action_42 (10) = happyGoto action_9
action_42 (11) = happyGoto action_10
action_42 _ = happyFail

action_43 (15) = happyShift action_12
action_43 (16) = happyShift action_13
action_43 (18) = happyShift action_15
action_43 (21) = happyShift action_17
action_43 (22) = happyShift action_18
action_43 (25) = happyShift action_19
action_43 (34) = happyShift action_20
action_43 (35) = happyShift action_21
action_43 (37) = happyShift action_22
action_43 (7) = happyGoto action_48
action_43 (8) = happyGoto action_7
action_43 (9) = happyGoto action_8
action_43 (10) = happyGoto action_9
action_43 (11) = happyGoto action_10
action_43 _ = happyFail

action_44 (12) = happyShift action_2
action_44 (13) = happyShift action_11
action_44 (15) = happyShift action_12
action_44 (16) = happyShift action_13
action_44 (17) = happyShift action_14
action_44 (18) = happyShift action_15
action_44 (19) = happyShift action_16
action_44 (21) = happyShift action_17
action_44 (22) = happyShift action_18
action_44 (25) = happyShift action_19
action_44 (34) = happyShift action_20
action_44 (35) = happyShift action_21
action_44 (37) = happyShift action_22
action_44 (4) = happyGoto action_47
action_44 (5) = happyGoto action_4
action_44 (6) = happyGoto action_5
action_44 (7) = happyGoto action_6
action_44 (8) = happyGoto action_7
action_44 (9) = happyGoto action_8
action_44 (10) = happyGoto action_9
action_44 (11) = happyGoto action_10
action_44 _ = happyFail

action_45 (21) = happyShift action_46
action_45 _ = happyFail

action_46 (38) = happyShift action_67
action_46 _ = happyFail

action_47 (20) = happyShift action_44
action_47 _ = happyReduce_4

action_48 (33) = happyShift action_41
action_48 _ = happyReduce_9

action_49 _ = happyReduce_7

action_50 (28) = happyShift action_36
action_50 (29) = happyShift action_37
action_50 (30) = happyShift action_38
action_50 (31) = happyShift action_39
action_50 (32) = happyShift action_40
action_50 _ = happyReduce_11

action_51 (24) = happyShift action_34
action_51 (25) = happyShift action_35
action_51 _ = happyReduce_13

action_52 (24) = happyShift action_34
action_52 (25) = happyShift action_35
action_52 _ = happyReduce_17

action_53 (24) = happyShift action_34
action_53 (25) = happyShift action_35
action_53 _ = happyReduce_16

action_54 (24) = happyShift action_34
action_54 (25) = happyShift action_35
action_54 _ = happyReduce_15

action_55 (24) = happyShift action_34
action_55 (25) = happyShift action_35
action_55 _ = happyReduce_14

action_56 (26) = happyShift action_32
action_56 (27) = happyShift action_33
action_56 _ = happyReduce_20

action_57 (26) = happyShift action_32
action_57 (27) = happyShift action_33
action_57 _ = happyReduce_19

action_58 (37) = happyShift action_31
action_58 _ = happyReduce_23

action_59 (37) = happyShift action_31
action_59 _ = happyReduce_22

action_60 (20) = happyShift action_44
action_60 (38) = happyShift action_66
action_60 _ = happyFail

action_61 (20) = happyShift action_44
action_61 (38) = happyShift action_65
action_61 _ = happyFail

action_62 (12) = happyShift action_2
action_62 (13) = happyShift action_11
action_62 (15) = happyShift action_12
action_62 (16) = happyShift action_13
action_62 (17) = happyShift action_14
action_62 (18) = happyShift action_15
action_62 (19) = happyShift action_16
action_62 (21) = happyShift action_17
action_62 (22) = happyShift action_18
action_62 (25) = happyShift action_19
action_62 (34) = happyShift action_20
action_62 (35) = happyShift action_21
action_62 (37) = happyShift action_22
action_62 (4) = happyGoto action_64
action_62 (5) = happyGoto action_4
action_62 (6) = happyGoto action_5
action_62 (7) = happyGoto action_6
action_62 (8) = happyGoto action_7
action_62 (9) = happyGoto action_8
action_62 (10) = happyGoto action_9
action_62 (11) = happyGoto action_10
action_62 _ = happyFail

action_63 _ = happyReduce_34

action_64 (20) = happyShift action_70
action_64 _ = happyFail

action_65 (39) = happyShift action_69
action_65 _ = happyFail

action_66 _ = happyReduce_25

action_67 (39) = happyShift action_68
action_67 _ = happyFail

action_68 (12) = happyShift action_2
action_68 (13) = happyShift action_11
action_68 (15) = happyShift action_12
action_68 (16) = happyShift action_13
action_68 (17) = happyShift action_14
action_68 (18) = happyShift action_15
action_68 (19) = happyShift action_16
action_68 (21) = happyShift action_17
action_68 (22) = happyShift action_18
action_68 (25) = happyShift action_19
action_68 (34) = happyShift action_20
action_68 (35) = happyShift action_21
action_68 (37) = happyShift action_22
action_68 (4) = happyGoto action_73
action_68 (5) = happyGoto action_4
action_68 (6) = happyGoto action_5
action_68 (7) = happyGoto action_6
action_68 (8) = happyGoto action_7
action_68 (9) = happyGoto action_8
action_68 (10) = happyGoto action_9
action_68 (11) = happyGoto action_10
action_68 _ = happyFail

action_69 (12) = happyShift action_2
action_69 (13) = happyShift action_11
action_69 (15) = happyShift action_12
action_69 (16) = happyShift action_13
action_69 (17) = happyShift action_14
action_69 (18) = happyShift action_15
action_69 (19) = happyShift action_16
action_69 (21) = happyShift action_17
action_69 (22) = happyShift action_18
action_69 (25) = happyShift action_19
action_69 (34) = happyShift action_20
action_69 (35) = happyShift action_21
action_69 (37) = happyShift action_22
action_69 (4) = happyGoto action_72
action_69 (5) = happyGoto action_4
action_69 (6) = happyGoto action_5
action_69 (7) = happyGoto action_6
action_69 (8) = happyGoto action_7
action_69 (9) = happyGoto action_8
action_69 (10) = happyGoto action_9
action_69 (11) = happyGoto action_10
action_69 _ = happyFail

action_70 (12) = happyShift action_2
action_70 (13) = happyShift action_11
action_70 (15) = happyShift action_12
action_70 (16) = happyShift action_13
action_70 (17) = happyShift action_14
action_70 (18) = happyShift action_15
action_70 (19) = happyShift action_16
action_70 (21) = happyShift action_17
action_70 (22) = happyShift action_18
action_70 (25) = happyShift action_19
action_70 (34) = happyShift action_20
action_70 (35) = happyShift action_21
action_70 (37) = happyShift action_22
action_70 (4) = happyGoto action_71
action_70 (5) = happyGoto action_4
action_70 (6) = happyGoto action_5
action_70 (7) = happyGoto action_6
action_70 (8) = happyGoto action_7
action_70 (9) = happyGoto action_8
action_70 (10) = happyGoto action_9
action_70 (11) = happyGoto action_10
action_70 _ = happyFail

action_71 (20) = happyShift action_44
action_71 _ = happyReduce_2

action_72 (20) = happyShift action_44
action_72 (40) = happyShift action_75
action_72 _ = happyFail

action_73 (20) = happyShift action_44
action_73 (40) = happyShift action_74
action_73 _ = happyFail

action_74 _ = happyReduce_1

action_75 (14) = happyShift action_76
action_75 _ = happyFail

action_76 (39) = happyShift action_77
action_76 _ = happyFail

action_77 (12) = happyShift action_2
action_77 (13) = happyShift action_11
action_77 (15) = happyShift action_12
action_77 (16) = happyShift action_13
action_77 (17) = happyShift action_14
action_77 (18) = happyShift action_15
action_77 (19) = happyShift action_16
action_77 (21) = happyShift action_17
action_77 (22) = happyShift action_18
action_77 (25) = happyShift action_19
action_77 (34) = happyShift action_20
action_77 (35) = happyShift action_21
action_77 (37) = happyShift action_22
action_77 (4) = happyGoto action_78
action_77 (5) = happyGoto action_4
action_77 (6) = happyGoto action_5
action_77 (7) = happyGoto action_6
action_77 (8) = happyGoto action_7
action_77 (9) = happyGoto action_8
action_77 (10) = happyGoto action_9
action_77 (11) = happyGoto action_10
action_77 _ = happyFail

action_78 (20) = happyShift action_44
action_78 (40) = happyShift action_79
action_78 _ = happyFail

action_79 _ = happyReduce_3

happyReduce_1 = happyReduce 7 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Function happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 6 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Declare happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 11 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Seq happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ReturnT happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  7 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary EQ happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  8 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  8 happyReduction_17
happyReduction_17 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  9 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  9 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  9 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary Mul happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  10 happyReduction_24
happyReduction_24 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happyReduce 4 11 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Call happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  11 happyReduction_26
happyReduction_26 (HappyTerminal (Digits happy_var_1))
	 =  HappyAbsSyn11
		 (Literal (IntV happy_var_1)
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  11 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn11
		 (Literal (BoolV True)
	)

happyReduce_28 = happySpecReduce_1  11 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn11
		 (Literal (BoolV False)
	)

happyReduce_29 = happySpecReduce_2  11 happyReduction_29
happyReduction_29 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Unary Neg happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  11 happyReduction_30
happyReduction_30 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Unary Not happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  11 happyReduction_31
happyReduction_31 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Access happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  11 happyReduction_32
happyReduction_32 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Mutable happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  11 happyReduction_33
happyReduction_33 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn11
		 (Variable happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 41 41 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenKeyword "function" -> cont 12;
	TokenKeyword "if" -> cont 13;
	TokenKeyword "else" -> cont 14;
	TokenKeyword "true" -> cont 15;
	TokenKeyword "false" -> cont 16;
	TokenKeyword "var" -> cont 17;
	TokenKeyword "mutable" -> cont 18;
	TokenKeyword "return" -> cont 19;
	Symbol ";" -> cont 20;
	TokenIdent happy_dollar_dollar -> cont 21;
	Digits happy_dollar_dollar -> cont 22;
	Symbol "=" -> cont 23;
	Symbol "+" -> cont 24;
	Symbol "-" -> cont 25;
	Symbol "*" -> cont 26;
	Symbol "/" -> cont 27;
	Symbol "<" -> cont 28;
	Symbol ">" -> cont 29;
	Symbol "<=" -> cont 30;
	Symbol ">=" -> cont 31;
	Symbol "==" -> cont 32;
	Symbol "&&" -> cont 33;
	Symbol "!" -> cont 34;
	Symbol "@" -> cont 35;
	Symbol "||" -> cont 36;
	Symbol "(" -> cont 37;
	Symbol ")" -> cont 38;
	Symbol "{" -> cont 39;
	Symbol "}" -> cont 40;
	_ -> happyError' (tk:tks)
	}

happyError_ 41 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . happyError

parser tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


symbols = ["+", "-", "*", "/", "(", ")", "{", "}", ";", "==", "=", "<=", ">=", "<", ">", "||", "&&", "!", "@"]
keywords = ["function", "var", "if", "else", "true", "false", "mutable", "return"]
parseExp str = parser (lexer symbols keywords str)

parseInput = do
  input <- getContents
  print (parseExp input)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<command-line>" #-}





# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














# 1 "/usr/include/x86_64-linux-gnu/bits/predefs.h" 1 3 4

# 18 "/usr/include/x86_64-linux-gnu/bits/predefs.h" 3 4












# 31 "/usr/include/stdc-predef.h" 2 3 4








# 5 "<command-line>" 2
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 45 "templates/GenericTemplate.hs" #-}








{-# LINE 66 "templates/GenericTemplate.hs" #-}

{-# LINE 76 "templates/GenericTemplate.hs" #-}

{-# LINE 85 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 154 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 255 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 321 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
