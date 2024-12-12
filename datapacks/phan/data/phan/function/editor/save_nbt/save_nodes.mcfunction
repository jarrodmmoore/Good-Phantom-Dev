scoreboard players set #save_nbt_tick value 0
execute as @e[type=marker,tag=node] if score @s editNode matches -2147483648..2147483647 run function phan:editor/save_nbt/node_standard