#leave the game
tag @s remove playing
tag @s remove playerReservation
execute unless score #gameState value matches 0 unless score #gameState value matches 2 run gamemode spectator @s

#announce forfeit in multiplayer
execute if score #multiplayer value matches 1 if score #freePlay value matches 0 as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 100000
execute if score #multiplayer value matches 1 if score #freePlay value matches 0 run tellraw @a ["",{"translate":"gp.game.player_forfeit","with":[{"selector":"@s","color":"white"}],"color":"#FF5040"}]

#not multiplayer? kick gameTime forward so we can end immediately
execute if score #multiplayer value matches 0 run scoreboard players set #gameTime value 520

#reset trigger
scoreboard players reset @s exit