#wait 1 second before doing anything...
scoreboard players add @s death 1

#do different thing depending on game mode
execute if score @s death matches 10.. if score #gameState value matches 0 run function phan:game/0/player/portal_to_lobby

execute if score @s death matches 10.. if score #gameState value matches 1 if score #checkLoadHeight value matches -1.. in minecraft:overworld at @s run function phan:game/1/player/respawn
execute if score @s death matches 10.. if score #gameState value matches 1 if score #checkLoadHeight value matches 0.. in minecraft:the_end at @s run function phan:game/1/player/respawn

execute if score @s death matches 10.. if score #gameState value matches 2 run scoreboard players set @s join 1

execute if score @s death matches 10.. if score #gameState value matches 3 if score #checkLoadHeight value matches -1.. in minecraft:overworld at @s run function phan:game/1/player/respawn
execute if score @s death matches 10.. if score #gameState value matches 3 if score #checkLoadHeight value matches 0.. in minecraft:the_end at @s run function phan:game/1/player/respawn

execute if score @s death matches 10.. if score #gameState value matches 4 if score #vGameType value matches ..1 if score #checkLoadHeight value matches -1.. in minecraft:overworld at @s run function phan:game/4/race/respawn
execute if score @s death matches 10.. if score #gameState value matches 4 if score #vGameType value matches ..1 if score #checkLoadHeight value matches 0.. in minecraft:the_end at @s run function phan:game/4/race/respawn

execute if score @s death matches 10.. if score #gameState value matches 4 if score #vGameType value matches 2.. if score #checkLoadHeight value matches -1.. in minecraft:overworld at @s run function phan:game/4/battle/respawn
execute if score @s death matches 10.. if score #gameState value matches 4 if score #vGameType value matches 2.. if score #checkLoadHeight value matches 0.. in minecraft:the_end at @s run function phan:game/4/battle/respawn

execute if score @s death matches 10.. unless score #gameState value matches 0..4 run scoreboard players set @s join 1

#reset music... because of dimension shenanigans
scoreboard players set @s musicTime 20


execute if score @s death matches 10.. run scoreboard players reset @s death

#get 2 seconds of respawn invulnerability
scoreboard players set @s spawnInvulnerability 40


#give credit to someone if they ko'd us
function phan:items/ko_credit