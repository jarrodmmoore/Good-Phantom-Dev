execute if entity @s[tag=ai] run tag @s add botTargetMidAir
execute if entity @s[tag=ai] run tag @s add botFlyWhenInAir
execute if entity @s[tag=ai] at @s run function phan:items/launch_effect

execute if score #test1 dataTransfer matches 1.. run scoreboard players set #test1 dataTransfer 0