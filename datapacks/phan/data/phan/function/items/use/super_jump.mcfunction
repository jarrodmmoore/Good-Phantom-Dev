clear @s prismarine_crystals[custom_data~{superJump:1b}] 1

#do launch
function phan:items/launch_effect

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10