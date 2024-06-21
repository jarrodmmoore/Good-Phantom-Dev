#feedback noise to anyone spectating us
function phan:tell_spectators
execute if score #10Hz value matches 1 as @a[tag=tellMe] at @s run playsound minecraft:block.note_block.bit master @s ~ 100000 ~ 100000 2

#gradual point adding (because it looks cool for the bonus)
execute if score @s addPointsLater matches 1..999 run scoreboard players operation @s scoreCurrent += @s addPointsLater
execute if score @s addPointsLater matches 1..999 run scoreboard players set @s addPointsLater 0
execute if score @s addPointsLater matches 1000.. run scoreboard players add @s scoreCurrent 1000
execute if score @s addPointsLater matches 1000.. run scoreboard players remove @s addPointsLater 1000