#summon armor stand that will do a thing later
execute if entity @s[type=player] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,Tags:["tickObject","explosion","setme"]}
execute if entity @s[type=!player] run summon armor_stand ~ ~.2 ~ {Marker:1b,Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,Tags:["tickObject","explosion","setme"]}

#give boost to player that spawned this if they're gliding
scoreboard players operation #checkID value = @s playerID
execute as @a if score @s playerID = #checkID value run tag @s add explosionOwner
tag @a[gamemode=adventure,scores={shieldTime=1..}] add explosionOwner
#give advancement for doing this (if in versus mode)
execute if score #gameState value matches 4 at @s as @a[gamemode=adventure,tag=explosionOwner,scores={fallFlying=1},distance=..3] run advancement grant @s only phan:portal_race/pro_strats
execute at @s if entity @a[gamemode=adventure,tag=explosionOwner,scores={fallFlying=1},distance=..3] at @a[limit=1,sort=nearest,gamemode=adventure,tag=explosionOwner,scores={fallFlying=1},distance=..3] positioned ^ ^ ^-.2 run tp @e[tag=setme] ~ ~ ~

#run part 2 at location of explosion
execute at @e[tag=setme,limit=1] run function phan:items/generic_explode_friendly_part2
tag @a[tag=explosionOwner] remove explosionOwner

#bye
scoreboard players set @e[tag=setme,tag=explosion] lifespan 5
tag @e[tag=setme] remove setme