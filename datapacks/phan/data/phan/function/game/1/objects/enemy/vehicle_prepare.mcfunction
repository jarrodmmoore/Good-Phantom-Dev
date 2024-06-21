#vehicle does things (this is for enemies that have pre-set movement patterns)
execute if score @s movementPattern matches 4.. run function phan:game/1/objects/enemy/vehicle_movement_delay_set
scoreboard players operation #movementPattern value = @s movementPattern
execute on vehicle at @s run function phan:game/1/objects/enemy/vehicle_control