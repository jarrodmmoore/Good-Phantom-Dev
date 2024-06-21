execute unless score #gameState value matches 4 run scoreboard players add @s[scores={enderEyes=..31}] enderEyes 1
execute if score #gameState value matches 4 run scoreboard players add @s eyesToAdd 1
scoreboard players add @s addScore 100
function phan:game/1/player/count_combo