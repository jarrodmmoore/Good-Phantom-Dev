#explosions
execute if entity @s[tag=explosion] at @s run function phan:items/explosion

#rockets
execute if entity @s[tag=rocket] at @s run function phan:items/rocket

#speed pads
execute if entity @s[tag=speedPadEntity] at @s run function phan:items/speed_pad
execute if entity @s[tag=superSpeedPadEntity] at @s run function phan:items/super_speed_pad

#blinding squid
execute if entity @s[tag=blindingSquidEntity] at @s run function phan:items/blinding_squid_entity

#enderman
execute if entity @s[tag=endermanController] at @s run function phan:items/enderman_controller_tick

#anvil
execute if entity @s[tag=anvilEntity] at @s run function phan:items/anvil_entity

#mine
execute if entity @s[tag=mineItemEntity] at @s run function phan:game/1/objects/enemy_generic

#check if we're valid. if not, delete.
execute unless entity @s[scores={itemValidSpawn=1}] unless entity @s[scores={lifespan=..1}] run scoreboard players set @s lifespan 1