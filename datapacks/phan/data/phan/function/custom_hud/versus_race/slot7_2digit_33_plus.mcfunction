execute store result score #test1 value run scoreboard players get #hudPeakPlayers value
#digit 2
scoreboard players operation #test2 value = #test1 value
scoreboard players operation #test2 value %= #10 value
#digit 1
scoreboard players operation #test1 value /= #10 value
#cap display at 99
execute if score #test1 value matches 10.. run scoreboard players set #test2 value 9

#store digits in storage
execute if score #test1 value matches ..0 run data modify storage phan:hud_characters digit1 set value "902"
execute if score #test1 value matches 1 run data modify storage phan:hud_characters digit1 set value "903"
execute if score #test1 value matches 2 run data modify storage phan:hud_characters digit1 set value "904"
execute if score #test1 value matches 3 run data modify storage phan:hud_characters digit1 set value "905"
execute if score #test1 value matches 4 run data modify storage phan:hud_characters digit1 set value "906"
execute if score #test1 value matches 5 run data modify storage phan:hud_characters digit1 set value "907"
execute if score #test1 value matches 6 run data modify storage phan:hud_characters digit1 set value "908"
execute if score #test1 value matches 7 run data modify storage phan:hud_characters digit1 set value "909"
execute if score #test1 value matches 8 run data modify storage phan:hud_characters digit1 set value "910"
execute if score #test1 value matches 9.. run data modify storage phan:hud_characters digit1 set value "911"

execute if score #test2 value matches ..0 run data modify storage phan:hud_characters digit2 set value "902"
execute if score #test2 value matches 1 run data modify storage phan:hud_characters digit2 set value "903"
execute if score #test2 value matches 2 run data modify storage phan:hud_characters digit2 set value "904"
execute if score #test2 value matches 3 run data modify storage phan:hud_characters digit2 set value "905"
execute if score #test2 value matches 4 run data modify storage phan:hud_characters digit2 set value "906"
execute if score #test2 value matches 5 run data modify storage phan:hud_characters digit2 set value "907"
execute if score #test2 value matches 6 run data modify storage phan:hud_characters digit2 set value "908"
execute if score #test2 value matches 7 run data modify storage phan:hud_characters digit2 set value "909"
execute if score #test2 value matches 8 run data modify storage phan:hud_characters digit2 set value "910"
execute if score #test2 value matches 9.. run data modify storage phan:hud_characters digit2 set value "911"

#now do it
function phan:custom_hud/versus_race/slot7_2digit_macro with storage phan:hud_characters