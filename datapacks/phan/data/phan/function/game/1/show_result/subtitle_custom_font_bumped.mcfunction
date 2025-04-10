#executed by a player
#send in with a value for "arg" that you want to display

#split our score into many digits so the subtitle HUD can use it
scoreboard players operation #subtitleDigit1 value = #arg value
scoreboard players operation #subtitleDigit1 value %= #10 value

scoreboard players operation #subtitleDigit2 value = #arg value
scoreboard players operation #subtitleDigit2 value %= #100 value
scoreboard players operation #subtitleDigit2 value /= #10 value

scoreboard players operation #subtitleDigit3 value = #arg value
scoreboard players operation #subtitleDigit3 value %= #1000 value
scoreboard players operation #subtitleDigit3 value /= #100 value

scoreboard players operation #subtitleDigit4 value = #arg value
scoreboard players operation #subtitleDigit4 value %= #10000 value
scoreboard players operation #subtitleDigit4 value /= #1000 value

scoreboard players operation #subtitleDigit5 value = #arg value
scoreboard players operation #subtitleDigit5 value %= #100000 value
scoreboard players operation #subtitleDigit5 value /= #10000 value

scoreboard players operation #subtitleDigit6 value = #arg value
scoreboard players operation #subtitleDigit6 value %= #1000000 value
scoreboard players operation #subtitleDigit6 value /= #100000 value

scoreboard players operation #subtitleDigit7 value = #arg value
scoreboard players operation #subtitleDigit7 value %= #10000000 value
scoreboard players operation #subtitleDigit7 value /= #1000000 value

scoreboard players operation #subtitleDigit8 value = #arg value
scoreboard players operation #subtitleDigit8 value %= #100000000 value
scoreboard players operation #subtitleDigit8 value /= #10000000 value

#set digits to -1 if they aren't being used
execute if score #arg value matches ..9 run scoreboard players set #subtitleDigit2 value -1
execute if score #arg value matches ..99 run scoreboard players set #subtitleDigit3 value -1
execute if score #arg value matches ..999 run scoreboard players set #subtitleDigit4 value -1
execute if score #arg value matches ..9999 run scoreboard players set #subtitleDigit5 value -1
execute if score #arg value matches ..99999 run scoreboard players set #subtitleDigit6 value -1
execute if score #arg value matches ..999999 run scoreboard players set #subtitleDigit7 value -1
execute if score #arg value matches ..9999999 run scoreboard players set #subtitleDigit8 value -1

#now store onto the display markers...
#17 = left end + digit 1 (00000000-0000-0328-0000-000000000011)
#18 = digit 2
#19 = digit 3
#20 = digit 4
#21 = digit 5
#22 = digit 6
#23 = digit 7
#24 = digit 8 + right end (00000000-0000-0328-0000-000000000018)

#left end + digit 1
execute if score #subtitleDigit8 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE965\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE966\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE967\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE968\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE969\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE970\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE971\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE972\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE973\uF001",italic:false}}
execute if score #subtitleDigit8 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:{text:"\uE953\uF001\uE974\uF001",italic:false}}

#digit 2
execute if score #subtitleDigit7 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"",italic:false}}
execute if score #subtitleDigit7 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE965\uF001",italic:false}}
execute if score #subtitleDigit7 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE966\uF001",italic:false}}
execute if score #subtitleDigit7 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE967\uF001",italic:false}}
execute if score #subtitleDigit7 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE968\uF001",italic:false}}
execute if score #subtitleDigit7 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE969\uF001",italic:false}}
execute if score #subtitleDigit7 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE970\uF001",italic:false}}
execute if score #subtitleDigit7 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE971\uF001",italic:false}}
execute if score #subtitleDigit7 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE972\uF001",italic:false}}
execute if score #subtitleDigit7 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE973\uF001",italic:false}}
execute if score #subtitleDigit7 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:{text:"\uE974\uF001",italic:false}}

#digit 3
execute if score #subtitleDigit6 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"",italic:false}}
execute if score #subtitleDigit6 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE965\uF001",italic:false}}
execute if score #subtitleDigit6 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE966\uF001",italic:false}}
execute if score #subtitleDigit6 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE967\uF001",italic:false}}
execute if score #subtitleDigit6 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE968\uF001",italic:false}}
execute if score #subtitleDigit6 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE969\uF001",italic:false}}
execute if score #subtitleDigit6 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE970\uF001",italic:false}}
execute if score #subtitleDigit6 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE971\uF001",italic:false}}
execute if score #subtitleDigit6 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE972\uF001",italic:false}}
execute if score #subtitleDigit6 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE973\uF001",italic:false}}
execute if score #subtitleDigit6 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:{text:"\uE974\uF001",italic:false}}

#digit 4
execute if score #subtitleDigit5 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"",italic:false}}
execute if score #subtitleDigit5 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE965\uF001",italic:false}}
execute if score #subtitleDigit5 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE966\uF001",italic:false}}
execute if score #subtitleDigit5 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE967\uF001",italic:false}}
execute if score #subtitleDigit5 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE968\uF001",italic:false}}
execute if score #subtitleDigit5 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE969\uF001",italic:false}}
execute if score #subtitleDigit5 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE970\uF001",italic:false}}
execute if score #subtitleDigit5 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE971\uF001",italic:false}}
execute if score #subtitleDigit5 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE972\uF001",italic:false}}
execute if score #subtitleDigit5 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE973\uF001",italic:false}}
execute if score #subtitleDigit5 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:{text:"\uE974\uF001",italic:false}}

#digit 5
execute if score #subtitleDigit4 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"",italic:false}}
execute if score #subtitleDigit4 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE965\uF001",italic:false}}
execute if score #subtitleDigit4 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE966\uF001",italic:false}}
execute if score #subtitleDigit4 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE967\uF001",italic:false}}
execute if score #subtitleDigit4 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE968\uF001",italic:false}}
execute if score #subtitleDigit4 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE969\uF001",italic:false}}
execute if score #subtitleDigit4 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE970\uF001",italic:false}}
execute if score #subtitleDigit4 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE971\uF001",italic:false}}
execute if score #subtitleDigit4 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE972\uF001",italic:false}}
execute if score #subtitleDigit4 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE973\uF001",italic:false}}
execute if score #subtitleDigit4 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:{text:"\uE974\uF001",italic:false}}

#digit 6
execute if score #subtitleDigit3 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"",italic:false}}
execute if score #subtitleDigit3 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE965\uF001",italic:false}}
execute if score #subtitleDigit3 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE966\uF001",italic:false}}
execute if score #subtitleDigit3 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE967\uF001",italic:false}}
execute if score #subtitleDigit3 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE968\uF001",italic:false}}
execute if score #subtitleDigit3 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE969\uF001",italic:false}}
execute if score #subtitleDigit3 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE970\uF001",italic:false}}
execute if score #subtitleDigit3 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE971\uF001",italic:false}}
execute if score #subtitleDigit3 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE972\uF001",italic:false}}
execute if score #subtitleDigit3 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE973\uF001",italic:false}}
execute if score #subtitleDigit3 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:{text:"\uE974\uF001",italic:false}}

#digit 7
execute if score #subtitleDigit2 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"",italic:false}}
execute if score #subtitleDigit2 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE965\uF001",italic:false}}
execute if score #subtitleDigit2 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE966\uF001",italic:false}}
execute if score #subtitleDigit2 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE967\uF001",italic:false}}
execute if score #subtitleDigit2 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE968\uF001",italic:false}}
execute if score #subtitleDigit2 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE969\uF001",italic:false}}
execute if score #subtitleDigit2 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE970\uF001",italic:false}}
execute if score #subtitleDigit2 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE971\uF001",italic:false}}
execute if score #subtitleDigit2 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE972\uF001",italic:false}}
execute if score #subtitleDigit2 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE973\uF001",italic:false}}
execute if score #subtitleDigit2 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:{text:"\uE974\uF001",italic:false}}

#digit 8 + right end
execute if score #subtitleDigit1 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE965\uF001\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE966\uF001\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE967\uF001\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE968\uF001\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE969\uF001\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE970\uF001\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE971\uF001\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE972\uF001\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE973\uF001\uE990\uF001",italic:false}}
execute if score #subtitleDigit1 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:{text:"\uE974\uF001\uE990\uF001",italic:false}}


#this isn't on a bossbar so we can just show it right here right now
title @a[tag=tellMe] subtitle ["",{selector:"00000000-0000-0328-0000-000000000011",shadow_color:[0,0,0,0]},{selector:"00000000-0000-0328-0000-000000000012",shadow_color:[0,0,0,0]},{selector:"00000000-0000-0328-0000-000000000013",shadow_color:[0,0,0,0]},{selector:"00000000-0000-0328-0000-000000000014",shadow_color:[0,0,0,0]},{selector:"00000000-0000-0328-0000-000000000015",shadow_color:[0,0,0,0]},{selector:"00000000-0000-0328-0000-000000000016",shadow_color:[0,0,0,0]},{selector:"00000000-0000-0328-0000-000000000017",shadow_color:[0,0,0,0]},{selector:"00000000-0000-0328-0000-000000000018",shadow_color:[0,0,0,0]},{text:" "}]