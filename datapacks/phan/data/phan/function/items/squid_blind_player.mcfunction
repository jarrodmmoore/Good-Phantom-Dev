#credit attacker
scoreboard players operation @s attackerID = #attackerID value
scoreboard players set @s attackTime 100
#(no damage)

#summon squid that will get us
execute anchored eyes positioned ^ ^ ^5 run summon squid ~ ~ ~ {Tags:["tickObject","blindingSquidEntity","squidAttackPlayer","giveID","sonicBlastDestroys"],NoGravity:1b,NoAI:1b,Invulnerable:1b}
execute anchored eyes positioned ^ ^ ^5 rotated as @s as @e[tag=giveID,type=squid,distance=..6] run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[tag=giveID,type=squid,distance=..6] playerID = @s playerID
scoreboard players set @e[tag=giveID,type=squid,distance=..6] lifespan 10
scoreboard players set @e[tag=giveID,type=squid,distance=..6] itemValidSpawn 1
tag @e[tag=giveID,type=squid,distance=..6] remove giveID

#visuals
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 .5
execute anchored eyes run particle smoke ^ ^ ^4 0.2 0.2 0.2 0.07 20 force @s