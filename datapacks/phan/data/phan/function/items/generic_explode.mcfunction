#summon armor stand that will do a thing later
execute if entity @s[type=player] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,Tags:["tickObject","explosion","setme"]}
execute if entity @s[type=!player] run summon armor_stand ~ ~.2 ~ {Marker:1b,Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1,Tags:["tickObject","explosion","setme"]}

#give boost to nearby gliding players
execute at @s if entity @a[gamemode=adventure,scores={fallFlying=1},distance=..3] at @a[limit=1,sort=nearest,gamemode=adventure,scores={fallFlying=1},distance=..3] positioned ^ ^ ^-.2 run tp @e[tag=setme] ~ ~ ~

#run part 2 at location of explosion
execute at @e[tag=setme,limit=1] run function phan:items/generic_explode_part2

#bye
scoreboard players set @e[tag=setme,tag=explosion] lifespan 5
tag @e[tag=setme] remove setme