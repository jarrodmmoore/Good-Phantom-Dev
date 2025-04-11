#possible values are 72, 91, 105, 119
#-7 ---------------- 65, 84, 98,  112
#-14 --------------- 58, 77, 91,  105

#(this is very silly)
#big negative space in an effort to balance the HUD in the middle
execute if score #hudLeftDebt value matches ..58 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF006",italic:false,color:"white"}}
execute if score #hudLeftDebt value matches 59..65 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF006\uF010",italic:false,color:"white"}}
execute if score #hudLeftDebt value matches 66..72 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF006\uF010\uF010",italic:false,color:"white"}}
execute if score #hudLeftDebt value matches 73..77 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF007",italic:false,color:"white"}}
execute if score #hudLeftDebt value matches 78..84 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF007\uF010",italic:false,color:"white"}}
execute if score #hudLeftDebt value matches 85..91 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF008",italic:false,color:"white"}}
execute if score #hudLeftDebt value matches 92..98 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF008\uF010",italic:false,color:"white"}}
execute if score #hudLeftDebt value matches 99..105 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF009",italic:false,color:"white"}}
execute if score #hudLeftDebt value matches 106..112 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF009\uF010",italic:false,color:"white"}}
execute if score #hudLeftDebt value matches 113.. run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF009\uF010\uF010",italic:false,color:"white"}}

#store previous value
scoreboard players operation #hudPrev5 value = #hudLeftDebt value