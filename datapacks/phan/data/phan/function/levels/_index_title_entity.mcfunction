#check if this is an unlockable level that hasn't been discovered yet
scoreboard players set #success value 1
$execute if score #dream$(level_id)Discovered value matches 0 run scoreboard players set #success value 0

#summon level text
$execute positioned ~ ~1 ~ run function phan:level_manager/load/spawn_name_display {level_uid:$(level_id),rotation:90,offset_x:'.0',offset_y:'.6',offset_z:'.0'}
#level not unlocked? show '???' instead of level text
$execute if score #success value matches 0 as @e[type=text_display,tag=lobbyNameDisplay$(level_id)] run data modify entity @s text set value {text:"\uE300"}