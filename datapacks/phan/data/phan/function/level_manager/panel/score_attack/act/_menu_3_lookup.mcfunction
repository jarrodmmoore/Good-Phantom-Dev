#executed by a player
#this player should have a score pointing to whatever level we're editing the metadata of

#for our eyes only
tag @a[tag=tellMe] remove tellMe
tag @s add tellMe

#act number will be needed for macros up ahead
execute store result storage phan:level_index act int 1 run scoreboard players get @s levelManagerAct

#levelEntry armor_stand will handle this
scoreboard players operation #checkID value = @s levelUID
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
execute as @e[tag=levelEntry,type=armor_stand] if score @s levelUID = #checkID value run function phan:level_manager/panel/score_attack/act/_menu_3 with storage phan:level_index