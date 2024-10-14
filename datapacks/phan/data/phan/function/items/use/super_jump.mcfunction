#player can't use while underwater
execute if block ~ ~1 ~ water run return 0
execute if block ~ ~1 ~ #phan:waterloggable[waterlogged=true] run return 0

#=====

clear @s[type=player] prismarine_crystals[custom_data~{superJump:1b}] 1

#do launch
function phan:items/launch_effect

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10