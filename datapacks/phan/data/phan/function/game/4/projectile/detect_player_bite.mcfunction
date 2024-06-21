execute positioned ^ ^ ^2 positioned ~ ~-2 ~ run tag @a[tag=playing,distance=..2] add biteHit
execute positioned ^ ^ ^2 positioned ~ ~-1 ~ run tag @a[tag=playing,distance=..2] add biteHit
execute positioned ^ ^ ^2 positioned ~ ~ ~ run tag @a[tag=playing,distance=..2] add biteHit
execute positioned ~ ~ ~ run tag @a[tag=playing,distance=..1] add biteHit
execute positioned ~ ~1 ~ run tag @a[tag=playing,distance=..1] add biteHit

tag @s add projSelf
execute as @a[tag=biteHit] unless score @s playerID = #projID value run function phan:game/4/projectile/player_get_hit
tag @e[tag=biteHit] remove biteHit
tag @s remove projSelf