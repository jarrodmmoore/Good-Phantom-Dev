#executed by a armor_stand entity that stores scores for some given level
#executed at the location of a sign we want to modify

#front_text.messages[0] = player name
#front_text.messages[1] = score (using special characters)
#front_text.messages[2] = rank letter
#front_text.messages[3] = placement (HANDLED LATER, NOT IN THIS FUNCTION)

#=====
# NAME
data modify block ~ ~ ~ front_text.messages[0] set value '{"nbt":"tag.name","storage":"phan:data","interpret":true}'
#=====

#=====
# SCORE
#(this is some absolutely unhinged datapack programmer behavior)

scoreboard players operation #arg value = #inputScore value

#split our score into many digits so the display can use it
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
execute if score #subtitleDigit8 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE977\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE978\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE979\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE980\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE981\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE982\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE983\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE984\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE985\\uF001","italic":false}'}
execute if score #subtitleDigit8 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000011 {CustomName:'{"text":"\\uE975\\uF001\\uE986\\uF001","italic":false}'}

#digit 2
execute if score #subtitleDigit7 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"","italic":false}'}
execute if score #subtitleDigit7 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE977\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE978\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE979\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE980\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE981\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE982\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE983\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE984\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE985\\uF001","italic":false}'}
execute if score #subtitleDigit7 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000012 {CustomName:'{"text":"\\uE986\\uF001","italic":false}'}

#digit 3
execute if score #subtitleDigit6 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"","italic":false}'}
execute if score #subtitleDigit6 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE977\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE978\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE979\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE980\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE981\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE982\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE983\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE984\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE985\\uF001","italic":false}'}
execute if score #subtitleDigit6 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000013 {CustomName:'{"text":"\\uE986\\uF001","italic":false}'}

#digit 4
execute if score #subtitleDigit5 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"","italic":false}'}
execute if score #subtitleDigit5 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE977\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE978\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE979\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE980\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE981\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE982\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE983\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE984\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE985\\uF001","italic":false}'}
execute if score #subtitleDigit5 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000014 {CustomName:'{"text":"\\uE986\\uF001","italic":false}'}

#digit 5
execute if score #subtitleDigit4 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"","italic":false}'}
execute if score #subtitleDigit4 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE977\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE978\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE979\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE980\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE981\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE982\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE983\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE984\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE985\\uF001","italic":false}'}
execute if score #subtitleDigit4 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000015 {CustomName:'{"text":"\\uE986\\uF001","italic":false}'}

#digit 6
execute if score #subtitleDigit3 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"","italic":false}'}
execute if score #subtitleDigit3 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE977\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE978\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE979\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE980\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE981\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE982\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE983\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE984\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE985\\uF001","italic":false}'}
execute if score #subtitleDigit3 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000016 {CustomName:'{"text":"\\uE986\\uF001","italic":false}'}

#digit 7
execute if score #subtitleDigit2 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"","italic":false}'}
execute if score #subtitleDigit2 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE977\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE978\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE979\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE980\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE981\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE982\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE983\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE984\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE985\\uF001","italic":false}'}
execute if score #subtitleDigit2 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000017 {CustomName:'{"text":"\\uE986\\uF001","italic":false}'}

#digit 8 + right end
execute if score #subtitleDigit1 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE977\\uF001\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE978\\uF001\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE979\\uF001\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE980\\uF001\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE981\\uF001\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE982\\uF001\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE983\\uF001\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE984\\uF001\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE985\\uF001\\uE976\\uF001","italic":false}'}
execute if score #subtitleDigit1 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000018 {CustomName:'{"text":"\\uE986\\uF001\\uE976\\uF001","italic":false}'}

#gee willy i wonder why i'm single

#now store it
data modify storage phan:data tag.score set value '["",{"selector":"00000000-0000-0328-0000-000000000011","color":"white"},{"selector":"00000000-0000-0328-0000-000000000012","color":"white"},{"selector":"00000000-0000-0328-0000-000000000013","color":"white"},{"selector":"00000000-0000-0328-0000-000000000014","color":"white"},{"selector":"00000000-0000-0328-0000-000000000015","color":"white"},{"selector":"00000000-0000-0328-0000-000000000016","color":"white"},{"selector":"00000000-0000-0328-0000-000000000017","color":"white"},{"selector":"00000000-0000-0328-0000-000000000018","color":"white"},{"text":" "}]'

#now put on sign
data modify block ~ ~ ~ front_text.messages[1] set value '{"nbt":"tag.score","storage":"phan:data","interpret":true}'
#=====

#=====
# RANK

execute if score #inputRank value matches ..0 run data modify storage phan:data tag.rank set value '["",{"text":"| ","bold":false,"color":"white"},{"text":"☆","bold":false,"color":"#FFFF22"},{"text":" |","bold":false,"color":"white"}]'
execute if score #inputRank value matches 1 run data modify storage phan:data tag.rank set value '["",{"text":"| ","bold":false,"color":"white"},{"text":"A","bold":true,"color":"#A030F0"},{"text":" |","bold":false,"color":"white"}]'
execute if score #inputRank value matches 2 run data modify storage phan:data tag.rank set value '["",{"text":"| ","bold":false,"color":"white"},{"text":"B","bold":true,"color":"#8030D0"},{"text":" |","bold":false,"color":"white"}]'
execute if score #inputRank value matches 3 run data modify storage phan:data tag.rank set value '["",{"text":"| ","bold":false,"color":"white"},{"text":"C","bold":true,"color":"#6030B0"},{"text":" |","bold":false,"color":"white"}]'
execute if score #inputRank value matches 4.. run data modify storage phan:data tag.rank set value '["",{"text":"| ","bold":false,"color":"white"},{"text":"D","bold":true,"color":"#403090"},{"text":" |","bold":false,"color":"white"}]'

data modify block ~ ~ ~ front_text.messages[2] set value '{"nbt":"tag.rank","storage":"phan:data","interpret":true}'
#=====