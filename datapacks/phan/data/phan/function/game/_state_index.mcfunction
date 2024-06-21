#we are not considered "inLobby" unless one of the game states said we are
scoreboard players set #inLobby value 0

#0 = LOBBY - lobby / practice area
#1 = GAMEPLAY - score attack mode
#2 = LOBBY - selecting mode before entering a level
#3 = GAMEPLAY - time attack
#4 = GAMEPLAY - portal race (formerly known as "versus". is internally reffered to as such)

execute if score #gameState value matches 0 run function phan:game/0/_0_main
execute if score #gameState value matches 1 run function phan:game/1/_1_main
execute if score #gameState value matches 2 run function phan:game/2/_2_main
execute if score #gameState value matches 3 run function phan:game/3/_3_main
execute if score #gameState value matches 4 run function phan:game/4/_4_main

#this function was run successfully :)
scoreboard players set #errorCheck value 0