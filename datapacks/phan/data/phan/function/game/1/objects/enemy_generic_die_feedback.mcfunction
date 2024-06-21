#feedback
particle large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.2 10 force
execute if score @s attackerID matches 1.. run playsound minecraft:entity.phantom.death master @a[tag=!lastEnemyScore] ~ ~ ~ 1.8 0.6
execute if score @s attackerID matches 1.. run playsound minecraft:entity.phantom.death master @a[tag=lastEnemyScore] ~ ~ ~ 1.8 0.6 .2
execute unless score @s attackerID matches 1.. run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 1.8 0.6