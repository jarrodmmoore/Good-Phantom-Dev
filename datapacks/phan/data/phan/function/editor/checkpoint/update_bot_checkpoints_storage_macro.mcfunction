#executed by a checkpoint

#do nothing if not in a valid area
execute unless score @s editArea matches 1..4 run return 0
#=====

#do nothing if not a valid number checkpoint
execute unless score @s editArg1 matches 1..25 run return 0
#=====

#-1 = optional
#0.. = mandatory (n = number of eyes given for passing checkpoint)
scoreboard players set #math2 value -1
execute if score @s editArg2 matches 0 run scoreboard players set #math2 value 0
execute if score #math2 value matches 0 run scoreboard players operation #math2 value = @s editArg3
execute store result storage phan:level_index value int 1 run scoreboard players get #math2 value

#index of checkpoint is checkpoint number minus 1
scoreboard players operation #math2 value = @s editArg1
scoreboard players remove #math2 value 1
execute store result storage phan:level_index index int 1 run scoreboard players get #math2 value

#area = act
execute store result storage phan:level_index act int 1 run scoreboard players get @s editArea

#now record it
function phan:editor/checkpoint/update_bot_checkpoints_storage_macro_go with storage phan:level_index
