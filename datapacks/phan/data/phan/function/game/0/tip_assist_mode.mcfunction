#do again in some amount of time
scoreboard players set @s playerTipTime -200
scoreboard players set @s fails -7

#show us a tip!
tellraw @s ["",{"text":"[","color":"#BB33FF","bold":true},{"translate":"gp.tip.tip","color":"#BB33FF","bold":true},{"text":"]","color":"#BB33FF","bold":true},{"text":" "},{"translate":"gp.lobby.try_assist_mode","with":[{"translate":"gp.assist.assist_mode","color":"#BB33FF"}]}]

#look at the chest please
execute if score #gameState value matches 0 if score #assist_enabled value matches 0 run tp @s 198 -6 118 facing 194 -8 111
execute if score #gameState value matches 0 if score #assist_enabled value matches 0 run effect give @s slow_falling 1 2 true
execute if score #gameState value matches 0 if score #assist_enabled value matches 0 run effect give @s blindness 1 2 true
particle instant_effect 194 -6 111 0 0 0 0.2 10 force @s