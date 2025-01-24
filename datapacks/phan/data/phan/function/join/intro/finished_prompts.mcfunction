#blindness for a sec...
effect give @s blindness 2 2 true

#make the health system work?
effect give @s absorption 1 1 true

#clear display
title @s title [""]
title @s actionbar [""]

#run world setup if world data is corrupted
execute unless entity @e[tag=randomize,type=armor_stand,scores={r=1..}] run function phan:world_setup

#gameState is zero, adopt skybox but don't do anything else
execute if score #gameState value matches 0 run scoreboard players set @s skyboxSet 1

#gameState is NOT zero, lose the doneWithIntro tag right away and let the game TP us to our player.
execute if score #gameState value matches 1 run function phan:join/intro/mid_game_join_gameplay
execute if score #gameState value matches 2 run function phan:join/intro/mid_game_join_mode_select
execute if score #gameState value matches 3.. run function phan:join/intro/mid_game_join_gameplay

#gameState=0, play the lil movie of us flying into the cabin
#(don't need to do anything else here)