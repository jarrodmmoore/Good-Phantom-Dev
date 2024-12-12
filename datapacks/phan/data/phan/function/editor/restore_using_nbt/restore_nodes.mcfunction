scoreboard players set #restore_nbt_tick value 0
execute as @e[type=marker,tag=node] unless score @s editNode matches -2147483648..2147483647 run function phan:editor/restore_using_nbt/node_standard