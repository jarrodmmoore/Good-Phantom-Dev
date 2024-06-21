execute unless entity @s[tag=strongerProjectile] anchored eyes run particle dust{color:[0.6,0.6,1.0],scale:1} ^ ^ ^-1.4 0.05 0.05 0.05 0 1 force
execute unless entity @s[tag=strongerProjectile] anchored eyes run particle dust{color:[0.85,0.85,1.0],scale:1} ^ ^ ^-1.4 0.15 0.15 0.15 0 1 normal
execute if entity @s[tag=strongerProjectile] anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:1} ^ ^ ^-1.4 0.05 0.05 0.05 0 1 force
execute if entity @s[tag=strongerProjectile] anchored eyes run particle dust{color:[1.0,0.2,0.2],scale:1} ^ ^ ^-1.4 0.15 0.15 0.15 0 1 normal

#with this hit detect code, we never have to worry about this entity flying out of loaded chunks and wasting data

scoreboard players set #hit value 1
#check if we're in a valid place
execute anchored eyes unless block ^ ^ ^3 sponge run scoreboard players set #hit value 0
#hit if we run into a solid block or unloaded chunk
execute anchored eyes unless block ^ ^ ^0.4 #phan:not_solid run scoreboard players set #hit value 1
execute anchored eyes unless block ^ ^ ^0.8 #phan:not_solid run scoreboard players set #hit value 1
execute anchored eyes unless block ^ ^ ^1.2 #phan:not_solid run scoreboard players set #hit value 1
execute anchored eyes unless block ^ ^ ^1.6 #phan:not_solid run scoreboard players set #hit value 1
execute if block ~ -63 ~ #phan:area_check unless score #gameState value matches 0 run scoreboard players set #hit value 1
execute if block ~ 1 ~ #phan:area_check unless score #gameState value matches 0 run scoreboard players set #hit value 1
#certain spots where we don't want projectiles to pass through
execute anchored eyes if block ~ -64 ~ structure_void if block ^ ^ ^ barrier run scoreboard players set #hit value 1
execute anchored eyes unless loaded ^ ^ ^3 run scoreboard players set #hit value 1

#pickups?
scoreboard players operation #projID value = @s playerID
scoreboard players operation #projUID value = @s projectileID
scoreboard players set #projDamage value 1
execute if entity @s[tag=strongerProjectile] run scoreboard players set #projDamage value 2
execute anchored eyes if entity @e[tag=shootable,distance=..2] run function phan:game/1/projectile/hit_index
execute anchored eyes positioned ^ ^.6 ^ if entity @e[tag=shootable,distance=..2] run function phan:game/1/projectile/hit_index
execute anchored eyes positioned ^ ^1.2 ^ if entity @e[tag=shootable,distance=..2] run function phan:game/1/projectile/hit_index

#versus: check for players to hit
execute if score #gameState value matches 4 positioned ^ ^ ^ run function phan:game/4/projectile/detect_player
execute if score #gameState value matches 4 positioned ^ ^ ^0.8 run function phan:game/4/projectile/detect_player

#live
execute if score #hit value matches 0 run tp @s ^ ^ ^1.6
#die
execute if score #hit value matches 1 anchored eyes positioned ^ ^ ^1.6 run function phan:game/1/projectile/hit_wall