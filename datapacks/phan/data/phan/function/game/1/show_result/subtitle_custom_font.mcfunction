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
execute if score #subtitleDigit8 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE955\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE956\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE957\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE958\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE959\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE960\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE961\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE962\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE963\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE953\\uF001\\uE964\\uF001","italic":false}'}

#digit 2
execute if score #subtitleDigit7 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE955\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE956\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE957\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE958\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE959\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE960\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE961\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE962\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE963\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE964\\uF001","italic":false}'}

#digit 3
execute if score #subtitleDigit6 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE955\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE956\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE957\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE958\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE959\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE960\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE961\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE962\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE963\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE964\\uF001","italic":false}'}

#digit 4
execute if score #subtitleDigit5 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE955\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE956\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE957\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE958\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE959\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE960\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE961\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE962\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE963\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE964\\uF001","italic":false}'}

#digit 5
execute if score #subtitleDigit4 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE955\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE956\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE957\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE958\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE959\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE960\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE961\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE962\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE963\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE964\\uF001","italic":false}'}

#digit 6
execute if score #subtitleDigit3 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE955\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE956\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE957\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE958\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE959\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE960\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE961\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE962\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE963\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE964\\uF001","italic":false}'}

#digit 7
execute if score #subtitleDigit2 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE955\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE956\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE957\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE958\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE959\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE960\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE961\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE962\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE963\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE964\\uF001","italic":false}'}

#digit 8 + right end
execute if score #subtitleDigit1 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE955\\uF001\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE956\\uF001\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE957\\uF001\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE958\\uF001\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE959\\uF001\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE960\\uF001\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE961\\uF001\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE962\\uF001\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE963\\uF001\\uE954\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE964\\uF001\\uE954\\uF001","italic":false}'}


#this isn't on a bossbar so we can just show it right here right now
title @a[tag=tellMe] subtitle ["",{"selector":"00000000-0000-0328-0000-000000000011"},{"selector":"00000000-0000-0328-0000-000000000012"},{"selector":"00000000-0000-0328-0000-000000000013"},{"selector":"00000000-0000-0328-0000-000000000014"},{"selector":"00000000-0000-0328-0000-000000000015"},{"selector":"00000000-0000-0328-0000-000000000016"},{"selector":"00000000-0000-0328-0000-000000000017"},{"selector":"00000000-0000-0328-0000-000000000018"},{"text":" "}]