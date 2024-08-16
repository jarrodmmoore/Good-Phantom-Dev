execute positioned ^ ^ ^2 positioned ~ ~-2 ~ run tag @e[tag=ai,type=zombie,distance=..2] add biteHit
execute positioned ^ ^ ^2 positioned ~ ~-1 ~ run tag @e[tag=ai,type=zombie,distance=..2] add biteHit
execute positioned ^ ^ ^2 positioned ~ ~ ~ run tag @e[tag=ai,type=zombie,distance=..2] add biteHit
execute positioned ~ ~ ~ run tag @e[tag=ai,type=zombie,distance=..1] add biteHit
execute positioned ~ ~1 ~ run tag @e[tag=ai,type=zombie,distance=..1] add biteHit

tag @s add projSelf
execute as @e[tag=biteHit,type=zombie,distance=..10] unless score @s playerID = #projID value run function phan:game/4/projectile/player_get_hit
tag @e[tag=biteHit,type=zombie,distance=..10] remove biteHit
tag @s remove projSelf