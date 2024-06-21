#count up age
scoreboard players add @s age 1

#...but don't count up if our entity exists!
scoreboard players set #test value 0
scoreboard players operation #checkID value = @s enemyID
execute if score #5Hz value matches 0 as @e[tag=baddyWithID] if score @s enemyID = #checkID value run scoreboard players set #test value 1
execute if score #test value matches 1 run scoreboard players set @s age 0

#spawn again when age goes above 60
execute if score @s age matches 60.. run function phan:game/1/objects/spawner_go