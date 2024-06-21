#tell the player to hurry up!
tellraw @a ["",{"text":"<","color":"yellow"},{"selector":"@s"},{"text":">","color":"yellow"},{"text":" "},{"translate":"gp.game.hurry_up_player","color":"yellow","bold":true}]
scoreboard players set @a[tag=playing,scores={pTimeRemaining=2020..}] pTimeRemaining 2019
execute if score #gameState value matches 3 run scoreboard players set @a[tag=playing,scores={pTimeRemaining=1220..}] pTimeRemaining 1219
scoreboard players set #hurryUp value -10

#done
scoreboard players reset @a hurryUp