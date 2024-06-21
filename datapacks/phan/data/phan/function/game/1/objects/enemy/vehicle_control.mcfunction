#stay alive
scoreboard players set @s lifespan 3

#count down movement delay
scoreboard players remove @s[scores={movementDelay=1..}] movementDelay 1

#movement?
execute if score #movementPattern value matches 1 unless score @s movementDelay matches 1.. run function phan:game/1/objects/enemy/vehicle_movement_1
execute if score #movementPattern value matches 2 unless score @s movementDelay matches 1.. run function phan:game/1/objects/enemy/vehicle_movement_2
execute if score #movementPattern value matches 3 unless score @s movementDelay matches 1.. run function phan:game/1/objects/enemy/vehicle_movement_3