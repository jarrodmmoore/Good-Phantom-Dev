scoreboard players add @s age 1
execute anchored eyes run particle dust{color:[1,0,0],scale:1} ^ ^ ^-1.2 0.1 0.1 0.1 0 1

#move forward
tp @s ^ ^ ^.7

#pickups?
scoreboard players operation #projID value = @s playerID
scoreboard players set #projDamage value 6
execute anchored eyes if entity @e[tag=shootable,distance=..2] run function phan:game/1/projectile/hit_index

#versus: check for players to hit
execute if score #gameState value matches 4 positioned ^ ^ ^ run function phan:game/4/projectile/detect_player
execute if score #gameState value matches 4 positioned ^ ^ ^0.35 run function phan:game/4/projectile/detect_player

#2 extra bites
execute if score @s age matches 6 run function phan:game/1/projectile/strong_bite_detect
execute if score @s age matches 12 run function phan:game/1/projectile/strong_bite_detect

#die
execute if score @s age matches 12.. run scoreboard players set @s[scores={lifespan=2..}] lifespan 1