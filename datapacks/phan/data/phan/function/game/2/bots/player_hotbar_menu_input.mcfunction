#input handling
scoreboard players set @s inputCooldown 7
scoreboard players reset @s carrotInput

#can only add lvl 6 bots in free play mode
scoreboard players set #temp value 0
execute if score #freePlay value matches 1.. if entity @s[tag=sneaking] run scoreboard players set #temp value 1

#start game
execute if items entity @s weapon.mainhand light_blue_dye[custom_data~{slot0:1b}] run function phan:game/2/team_select_fast_start

#add or remove bots depending on what we're holding
execute if items entity @s weapon.mainhand light_blue_wool[custom_data~{slot2:1b}] run function phan:game/2/bots/create_bot {difficulty:1}
execute if items entity @s weapon.mainhand light_blue_wool[custom_data~{slot3:1b}] run function phan:game/2/bots/create_bot {difficulty:2}
execute if items entity @s weapon.mainhand light_blue_wool[custom_data~{slot4:1b}] run function phan:game/2/bots/create_bot {difficulty:3}
execute if items entity @s weapon.mainhand light_blue_wool[custom_data~{slot5:1b}] run function phan:game/2/bots/create_bot {difficulty:4}
execute if score #temp value matches 0 if items entity @s weapon.mainhand light_blue_wool[custom_data~{slot6:1b}] run function phan:game/2/bots/create_bot {difficulty:5}
execute if score #temp value matches 1 if items entity @s weapon.mainhand light_blue_wool[custom_data~{slot6:1b}] run function phan:game/2/bots/create_bot {difficulty:6}
execute if items entity @s[tag=!sneaking] weapon.mainhand tnt[custom_data~{slot7:1b}] run function phan:game/2/bots/delete_bot
execute if items entity @s[tag=sneaking] weapon.mainhand tnt[custom_data~{slot7:1b}] run function phan:game/2/bots/delete_all_bots