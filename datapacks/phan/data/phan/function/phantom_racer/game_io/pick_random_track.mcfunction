#$(mode)
#   0 = any
#   1 = race only
#   2 = battle only

$scoreboard players set #randomSetting value $(mode)

#generate table
function phan:phantom_racer/game_io/generate_random_table
#if the pool of available options is 1 or less, just ignore cooldowns and pick whatever
execute if score #randomLength value matches ..1 run function phan:phantom_racer/game_io/generate_random_table_ignore_cooldown

#store max selectable index
scoreboard players remove #randomLength value 1
execute store result storage phan:data random_max_index int 1 run scoreboard players get #randomLength value
scoreboard players add #randomLength value 1

#pick a random option from the generated list
execute if score #randomLength value matches 1.. run function phan:phantom_racer/game_io/pick_random_track_go with storage phan:data

#if pool of options is 0, boot a fallback track
#non-battle = Pastel Palace 1
execute if score #randomLength value matches ..0 run scoreboard players set #chosenLevel value 1
execute if score #randomLength value matches ..0 run scoreboard players set #vAct value 1
#battle = Phantom Forest 4
execute if score #randomSetting value matches 2 if score #randomLength value matches ..0 run scoreboard players set #chosenLevel value 6
execute if score #randomSetting value matches 2 if score #randomLength value matches ..0 run scoreboard players set #vAct value 4