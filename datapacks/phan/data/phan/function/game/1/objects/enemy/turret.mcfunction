#editArg1 tracks whether we're aggro or not
#editArg2 is shoot cooldown

#use the "age" variable to check LOS to player every few ticks
scoreboard players add @s age 1
execute if score @s age matches 10.. if entity @s[tag=!declawed] run function phan:game/1/objects/enemy/turret_check_los

#targeting a player? run aggro code
execute if score @s editArg1 matches 1 run function phan:game/1/objects/enemy/turret_aggro

#otherwise be normal
execute unless score @s editArg1 matches 1 run function phan:game/1/objects/enemy/turret_neutral

#keep the base alive
execute on vehicle if entity @s[tag=turretBase] run scoreboard players set @s lifespan 3