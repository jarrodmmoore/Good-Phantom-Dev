#kick out if not loaded, or relevant scores aren't loaded
scoreboard players set #test5 value 0
execute if loaded ~ ~ ~ run scoreboard players add #test5 value 1
execute if score @s editNode matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s editYaw matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s editPitch matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s editArea matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s editLoadArea matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute unless score #clearCacheProgress value matches 1.. run scoreboard players add #test5 value 1
execute unless score #test5 value matches 7 run return 0
#=====

#start point
#portal core
#portal slot
#clock
execute if score @s editNode matches 7..10 run function phan:editor/panel/repair_timers_and_presents_go

#present
execute if score @s editNode matches 12 run function phan:editor/panel/repair_timers_and_presents_go