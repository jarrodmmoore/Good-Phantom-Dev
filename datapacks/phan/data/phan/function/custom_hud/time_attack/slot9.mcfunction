#possible values are 112, 126

#(this is very silly)
#big negative space in an effort to balance the HUD in the middle
execute if score #hudRightDebt value matches ..112 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uF022",italic:false,color:"white"}}
execute if score #hudRightDebt value matches 113.. run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uF022\uF010\uF010",italic:false,color:"white"}}

#store previous value
scoreboard players operation #hudPrev9 value = #hudRightDebt value