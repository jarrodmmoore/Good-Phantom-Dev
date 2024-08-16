#finished!
function phan:bots/race/player_finish_controller
scoreboard players set @s botTimeSinceCP -999999

#let other bots know when rival has finished
execute if entity @s[tag=botRival] run scoreboard players set #botRivalFinished value 1
execute if entity @s[tag=botRival] run scoreboard players set #botRivalPosition value 2147483647

#figure out how long everyone else has to finish
function phan:game/4/race/player_finish_set_race_end_time

#increment the min position assignment number by 1
scoreboard players add #positionAssignMin value 1

#stop mandating anvils to stop 1st place
scoreboard players set #1stPlaceLeadTime value 0

#if only 1 player left, cancel any outstanding anvil mandate
execute store result score #playerCount value run execute if entity @a[tag=playing]
execute as @e[tag=ai,type=zombie] run scoreboard players add #playerCount value 1
execute if score #playerCount value matches ..1 run scoreboard players set #mandateAnvil value 0

#announce to everyone else that we finished (this time with macros! whoa)
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ 100000 ~ 100000 1
scoreboard players set @a[tag=doneWithIntro] actionbarDelay 40
execute if score @s finishPos matches ..1 run return run function phan:bots/controller/controller_player_finish_1st_macro with storage phan:bot_data
execute if score @s finishPos matches 33.. run return run function phan:bots/controller/controller_player_finish_32plus_macro with storage phan:bot_data
execute if score @s finishPos matches 2 run data modify storage phan:bot_data finishpos set value "2nd"
execute if score @s finishPos matches 3 run data modify storage phan:bot_data finishpos set value "3rd"
execute if score @s finishPos matches 4 run data modify storage phan:bot_data finishpos set value "4th"
execute if score @s finishPos matches 5 run data modify storage phan:bot_data finishpos set value "5th"
execute if score @s finishPos matches 6 run data modify storage phan:bot_data finishpos set value "6th"
execute if score @s finishPos matches 7 run data modify storage phan:bot_data finishpos set value "7th"
execute if score @s finishPos matches 8 run data modify storage phan:bot_data finishpos set value "8th"
execute if score @s finishPos matches 9 run data modify storage phan:bot_data finishpos set value "9th"
execute if score @s finishPos matches 10 run data modify storage phan:bot_data finishpos set value "10th"
execute if score @s finishPos matches 11 run data modify storage phan:bot_data finishpos set value "11th"
execute if score @s finishPos matches 12 run data modify storage phan:bot_data finishpos set value "12th"
execute if score @s finishPos matches 13 run data modify storage phan:bot_data finishpos set value "13th"
execute if score @s finishPos matches 14 run data modify storage phan:bot_data finishpos set value "14th"
execute if score @s finishPos matches 15 run data modify storage phan:bot_data finishpos set value "15th"
execute if score @s finishPos matches 16 run data modify storage phan:bot_data finishpos set value "16th"
execute if score @s finishPos matches 17 run data modify storage phan:bot_data finishpos set value "17th"
execute if score @s finishPos matches 18 run data modify storage phan:bot_data finishpos set value "18th"
execute if score @s finishPos matches 19 run data modify storage phan:bot_data finishpos set value "19th"
execute if score @s finishPos matches 20 run data modify storage phan:bot_data finishpos set value "20th"
execute if score @s finishPos matches 21 run data modify storage phan:bot_data finishpos set value "21st"
execute if score @s finishPos matches 22 run data modify storage phan:bot_data finishpos set value "22nd"
execute if score @s finishPos matches 23 run data modify storage phan:bot_data finishpos set value "23rd"
execute if score @s finishPos matches 24 run data modify storage phan:bot_data finishpos set value "24th"
execute if score @s finishPos matches 25 run data modify storage phan:bot_data finishpos set value "25th"
execute if score @s finishPos matches 26 run data modify storage phan:bot_data finishpos set value "26th"
execute if score @s finishPos matches 27 run data modify storage phan:bot_data finishpos set value "27th"
execute if score @s finishPos matches 28 run data modify storage phan:bot_data finishpos set value "28th"
execute if score @s finishPos matches 29 run data modify storage phan:bot_data finishpos set value "29th"
execute if score @s finishPos matches 30 run data modify storage phan:bot_data finishpos set value "30th"
execute if score @s finishPos matches 31 run data modify storage phan:bot_data finishpos set value "31st"
execute if score @s finishPos matches 32 run data modify storage phan:bot_data finishpos set value "32nd"
execute if score @s finishPos matches 2..32 run function phan:bots/controller/controller_player_finish_nth_macro with storage phan:bot_data