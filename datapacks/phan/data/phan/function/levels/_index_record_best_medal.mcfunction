#executed by an individual player

#record rank if it's better than what we already have
execute if score #chosenLevel value matches 1 if score @s rankFinal < @s dream1Medal run scoreboard players operation @s dream1Medal = @s rankFinal
execute if score #chosenLevel value matches 2 if score @s rankFinal < @s dream2Medal run scoreboard players operation @s dream2Medal = @s rankFinal
execute if score #chosenLevel value matches 3 if score @s rankFinal < @s dream3Medal run scoreboard players operation @s dream3Medal = @s rankFinal
execute if score #chosenLevel value matches 4 if score @s rankFinal < @s dream4Medal run scoreboard players operation @s dream4Medal = @s rankFinal
execute if score #chosenLevel value matches 5 if score @s rankFinal < @s dream5Medal run scoreboard players operation @s dream5Medal = @s rankFinal

#check for advancements
execute if score @s rankFinal matches ..1 run advancement grant @s only phan:time_attack/power_nap

execute if score @s dream1Medal matches ..2 run advancement grant @s only phan:time_attack/clockwork cw_dream1
execute if score @s dream2Medal matches ..2 run advancement grant @s only phan:time_attack/clockwork cw_dream2
execute if score @s dream3Medal matches ..2 run advancement grant @s only phan:time_attack/clockwork cw_dream3
execute if score @s dream4Medal matches ..2 run advancement grant @s only phan:time_attack/clockwork cw_dream4
execute if score @s dream5Medal matches ..2 run advancement grant @s only phan:time_attack/clockwork cw_dream5

execute if score @s dream1Medal matches ..1 run advancement grant @s only phan:time_attack/speedrunner sr_dream1
execute if score @s dream2Medal matches ..1 run advancement grant @s only phan:time_attack/speedrunner sr_dream2
execute if score @s dream3Medal matches ..1 run advancement grant @s only phan:time_attack/speedrunner sr_dream3
execute if score @s dream4Medal matches ..1 run advancement grant @s only phan:time_attack/speedrunner sr_dream4
execute if score @s dream5Medal matches ..1 run advancement grant @s only phan:time_attack/speedrunner sr_dream5