#summon anvil that will loom over us
execute positioned ~ ~2 ~ run summon armor_stand ~ ~ ~ {Tags:["tickObject","anvilEntity","giveID","sonicBlastDestroys"],NoGravity:0b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:anvil",count:1}}}
execute positioned ~ ~2 ~ rotated as @s rotated ~90 0 as @e[tag=giveID,type=armor_stand,distance=..4] run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[tag=giveID,type=armor_stand,distance=..4] playerID = @s playerID
scoreboard players operation @e[tag=giveID,type=armor_stand,distance=..4] attackerID = #attackerID value
scoreboard players set @e[tag=giveID,type=armor_stand,distance=..4] lifespan 10
scoreboard players set @e[tag=giveID,type=armor_stand,distance=..4] itemValidSpawn 1
tag @e[tag=giveID,type=armor_stand,distance=..4] remove giveID

#visuals
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 2 1.1
execute positioned ~ ~2 ~ run particle dust{color:[0.2,0.2,0.2],scale:2} ~ ~ ~ 0.25 0.25 0.25 1 20 force

#tag for message
tag @s add anvilWillHit

#we did it! A+
scoreboard players set #success value 1