#run by a armor_stand entity that stores scores for some given level
#executed at the location of a sign we want to modify

#front_text.messages[0] = player name
#front_text.messages[1] = time (using special characters)
#front_text.messages[2] = medal
#front_text.messages[3] = placement (HANDLED LATER, NOT IN THIS FUNCTION)

##############
# NAME
data modify block ~ ~ ~ front_text.messages[0] set value '{"nbt":"tag.name","storage":"phan:data","interpret":true}'
##############

##############
# TIME

scoreboard players operation #arg value = #inputScore value

#msec (2 digits, second digit is either 0 or 5)
scoreboard players operation #showTimeMsec value = #arg value
scoreboard players operation #showTimeMsec value %= #20 value
scoreboard players operation #showTimeMsec2 value = #showTimeMsec value
scoreboard players operation #showTimeMsec2 value %= #2 value
execute if score #showTimeMsec2 value matches 1 run scoreboard players set #showTimeMsec2 value 5
scoreboard players operation #showTimeMsec value /= #2 value
#seconds
scoreboard players operation #showTimeSec value = #arg value
scoreboard players operation #showTimeSec value /= #20 value
scoreboard players operation #showTimeSec value %= #60 value
#minutes
scoreboard players operation #showTimeMin value = #arg value
scoreboard players operation #showTimeMin value /= #1200 value

#now store it
execute if score #showTimeSec value matches ..9 run data modify storage phan:data tag.score set value '["",{"score":{"name":"#showTimeMin","objective":"value"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"#showTimeSec","objective":"value"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#showTimeMsec","objective":"value"},"color":"white"},{"score":{"name":"#showTimeMsec2","objective":"value"},"color":"white"}]'
execute if score #showTimeSec value matches 10.. run data modify storage phan:data tag.score set value '["",{"score":{"name":"#showTimeMin","objective":"value"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"#showTimeSec","objective":"value"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#showTimeMsec","objective":"value"},"color":"white"},{"score":{"name":"#showTimeMsec2","objective":"value"},"color":"white"}]'

#now put on sign
data modify block ~ ~ ~ front_text.messages[1] set value '{"nbt":"tag.score","storage":"phan:data","interpret":true}'
##############

##############
# RANK

execute if score #inputRank value matches ..1 run data modify storage phan:data tag.rank set value '{"text":"\\uE011","bold":false,"color":"white"}'
execute if score #inputRank value matches 2 run data modify storage phan:data tag.rank set value '{"text":"\\uE010","bold":false,"color":"white"}'
execute if score #inputRank value matches 3 run data modify storage phan:data tag.rank set value '{"text":"\\uE009","bold":false,"color":"white"}'
execute if score #inputRank value matches 4 run data modify storage phan:data tag.rank set value '{"text":"\\uE008","bold":false,"color":"white"}'
execute if score #inputRank value matches 5.. run data modify storage phan:data tag.rank set value '{"text":"","bold":false,"color":"white"}'

data modify block ~ ~ ~ front_text.messages[2] set value '{"nbt":"tag.rank","storage":"phan:data","interpret":true}'
##############