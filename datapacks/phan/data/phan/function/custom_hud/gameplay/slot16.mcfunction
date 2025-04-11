#1's digit + stardust icon + right end
execute if score @s scoreDigit1 matches ..0 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE922\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 1 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE923\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 2 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE924\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 3 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE925\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 4 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE926\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 5 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE927\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 6 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE928\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 7 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE929\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 8 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE930\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 9 run data merge entity 00000000-0000-0328-0000-000000000010 {CustomName:{text:"\uE931\uF001\uE918\uF001\uE904\uF001",italic:false,color:"white"}}
execute if score @s scoreDigit1 matches 10..19 run function phan:custom_hud/gameplay/points_positive/slot16
execute if score @s scoreDigit1 matches 20..99 run function phan:custom_hud/gameplay/points_negative/slot16

#do some crazy macro stuff if we're showing a rank that we just beat
execute if score @s scoreDigit1 matches 100.. run function phan:custom_hud/gameplay/slot16_show_grade
#Q: why start using macros NOW? y'know, instead of using them to power this entire HUD system?
#A: well for one, macros weren't around when Good Phantom was first made for the Yeggs map jam
#A: second, we have multiple variable parts assigned to this one display slot, so macros are an easy answer for this
#A: third, i'm lazy

#store previous value
scoreboard players operation #hudPrev16 value = @s scoreDigit1