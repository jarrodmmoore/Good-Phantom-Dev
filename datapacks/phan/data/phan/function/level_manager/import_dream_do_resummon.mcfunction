#if not #gameState=0, exit out now
execute unless score #gameState value matches 0 run return 0
#=====

#change model of sleeping player
$data modify storage phan:data spawn_player_model set from storage phan_dream_$(level_id):dream_data sleeping_player_model
$execute as @e[limit=1,type=armor_stand,tag=lobbyPlayer$(level_id)] run function phan:level_manager/load/replace_sleeping_player_model with storage phan:data

#change display text above level
$execute as @e[limit=1,type=text_display,tag=lobbyNameDisplay$(level_id)] run data merge entity @s {text:'["",{"nbt":"name_display","storage":"phan_dream_$(level_id):dream_data","interpret":true}]'}