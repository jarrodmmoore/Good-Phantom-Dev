execute anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:1} ^ ^ ^-1.3 0.05 0.05 0.05 0 1 force
execute anchored eyes run particle dust{color:[0.7,0.0,0.0],scale:1} ^ ^ ^-1.3 0.15 0.15 0.15 0 1 normal

#with this hit detect code, we never have to worry about this entity flying out of loaded chunks and wasting data

scoreboard players set #hit value 1
#check if we're in a valid place
execute anchored eyes unless block ^ ^ ^3 sponge run scoreboard players set #hit value 0
#hit if we run into a solid block or unloaded chunk
execute anchored eyes unless block ^ ^ ^0.4 #phan:not_solid run scoreboard players set #hit value 1
execute anchored eyes unless block ^ ^ ^0.8 #phan:not_solid run scoreboard players set #hit value 1
execute anchored eyes unless block ^ ^ ^1.2 #phan:not_solid run scoreboard players set #hit value 1
execute anchored eyes unless block ^ ^ ^1.6 #phan:not_solid run scoreboard players set #hit value 1
execute if score #checkLoadHeight value matches -64 if block ~ -63 ~ #phan:area_check unless score #gameState value matches 0 run scoreboard players set #hit value 1
execute if score #checkLoadHeight value matches 0 if block ~ 1 ~ #phan:area_check unless score #gameState value matches 0 run scoreboard players set #hit value 1
execute anchored eyes unless loaded ^ ^ ^3 run scoreboard players set #hit value 1

#hit player?
tag @s add evilProj
scoreboard players set #projDamage value 1
scoreboard players operation #projUID value = @s projectileID
execute positioned ~-.5 ~-1.1 ~-.5 if entity @a[tag=playing,gamemode=adventure,dx=1,dy=3,dz=1] positioned ~.5 ~1.1 ~.5 anchored eyes run function phan:game/1/projectile/hit_index_evil
execute positioned ~-.5 ~-1.1 ~-.5 if entity @e[tag=ai,type=zombie,dx=1,dy=3,dz=1] positioned ~.5 ~1.1 ~.5 anchored eyes run function phan:game/1/projectile/hit_index_evil_bot
tag @s remove evilProj

#live
execute if score #hit value matches 0 run tp @s ^ ^ ^1.6
#die
execute if score #hit value matches 1 anchored eyes run function phan:game/1/projectile/hit_wall_evil