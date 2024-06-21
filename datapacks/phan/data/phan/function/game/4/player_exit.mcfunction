#leave the game
tag @s remove playing
tag @s remove playerReservation
execute unless score #gameState value matches 0 unless score #gameState value matches 2 run gamemode spectator @s

#get off the sidebar please and thanks
scoreboard players reset @s racePosDisplay2

#announce forfeit
tellraw @a ["",{"translate":"gp.game.player_forfeit","with":[{"selector":"@s","color":"white"}],"color":"#FF5040"}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 100000

#reset trigger
scoreboard players reset @s exit