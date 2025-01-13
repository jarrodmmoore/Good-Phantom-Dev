#executed by a player
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
execute as @e[type=marker,tag=checkpoint,distance=..20] run function phan:editor/checkpoint/update_bot_checkpoints_storage_macro