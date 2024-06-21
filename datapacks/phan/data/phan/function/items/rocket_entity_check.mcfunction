scoreboard players set #hit value 0
execute positioned ~-1 ~-1 ~-1 if entity @e[tag=tntCanHit,dx=2,dy=2,dz=2] run scoreboard players set #hit value 1

#explode if we found a thing
execute if score #hit value matches 1 at @s run function phan:items/rocket_hit