#this gets used in portal race mode!

#summon armor stand that will do a thing later
execute if entity @s[type=player] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Tags:["tickObject","explosion","setme"]}
execute if entity @s[type=!player] run summon armor_stand ~ ~.2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Tags:["tickObject","explosion","setme"]}

#give boost to player that spawned this if they're gliding
scoreboard players operation #checkID value = @s playerID
execute as @a[gamemode=adventure] if score @s playerID = #checkID value run tag @s add explosionOwner
tag @a[gamemode=adventure,scores={shieldTime=1..},distance=..10] add explosionOwner
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #checkID value run tag @s add explosionOwner
execute if score #botsEnabled value matches 1.. run tag @e[tag=ai,type=zombie,scores={shieldTime=1..},distance=..10] add explosionOwner
#give advancement for doing this (if in versus mode)
execute if score #gameState value matches 4 at @s as @a[gamemode=adventure,tag=explosionOwner,scores={fallFlying=1},distance=..3] run advancement grant @s only phan:portal_race/pro_strats
#teleport tnt behind us (if explosion owner) for a sick speed boost
execute if score #botsEnabled value matches ..0 at @s if entity @a[gamemode=adventure,tag=explosionOwner,scores={fallFlying=1},distance=..3] at @a[limit=1,sort=nearest,gamemode=adventure,tag=explosionOwner,scores={fallFlying=1},distance=..3] positioned ^ ^ ^-.2 run tp @e[tag=setme,type=armor_stand,distance=..10] ~ ~ ~
execute if score #botsEnabled value matches 1.. at @s if entity @e[tag=explosionOwner,scores={fallFlying=1},distance=..3] at @e[limit=1,sort=nearest,tag=explosionOwner,scores={fallFlying=1},distance=..3] positioned ^ ^ ^-.2 run tp @e[tag=setme,type=armor_stand,distance=..10] ~ ~ ~
#run part 2 at location of explosion
execute at @e[tag=setme,limit=1,type=armor_stand,distance=..10] run function phan:items/generic_explode_friendly_part2
tag @a[tag=explosionOwner] remove explosionOwner
execute if score #botsEnabled value matches 1.. run tag @e[tag=explosionOwner,type=zombie] remove explosionOwner

#bye
scoreboard players set @e[tag=setme,tag=explosion,type=armor_stand,distance=..10] lifespan 5
tag @e[tag=setme,type=armor_stand,distance=..10] remove setme