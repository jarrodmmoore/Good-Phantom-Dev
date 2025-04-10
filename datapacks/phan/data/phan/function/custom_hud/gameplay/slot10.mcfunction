#left end + possible digit
execute if score @s scoreDigit7 matches ..-1 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001",italic:false}}

execute if score @s scoreDigit7 matches 0 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE922\uF001",italic:false}}
execute if score @s scoreDigit7 matches 1 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE923\uF001",italic:false}}
execute if score @s scoreDigit7 matches 2 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE924\uF001",italic:false}}
execute if score @s scoreDigit7 matches 3 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE925\uF001",italic:false}}
execute if score @s scoreDigit7 matches 4 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE926\uF001",italic:false}}
execute if score @s scoreDigit7 matches 5 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE927\uF001",italic:false}}
execute if score @s scoreDigit7 matches 6 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE928\uF001",italic:false}}
execute if score @s scoreDigit7 matches 7 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE929\uF001",italic:false}}
execute if score @s scoreDigit7 matches 8 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE930\uF001",italic:false}}
execute if score @s scoreDigit7 matches 9 run data merge entity 00000000-0000-0328-0000-00000000000a {CustomName:{text:"\uE903\uF001\uE931\uF001",italic:false}}
execute if score @s scoreDigit7 matches 10..19 run function phan:custom_hud/gameplay/points_positive/slot10
execute if score @s scoreDigit7 matches 20.. run function phan:custom_hud/gameplay/points_negative/slot10

#store previous value
scoreboard players operation #hudPrev10 value = @s scoreDigit7