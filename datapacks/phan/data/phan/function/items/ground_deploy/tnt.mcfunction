playsound minecraft:entity.tnt.primed master @a

#particles!
particle dust{color:[1,0,0],scale:1} ~ ~.5 ~ 0.35 0.35 0.35 0 20 force

#summon a TNT
summon tnt ~ ~ ~ {fuse:1000,Tags:["giveID","sonicBlastDestroys"]}

#entity can only exist in this current game session
scoreboard players set @e[tag=giveID] itemValidSpawn 1

#we did this. it was us.
scoreboard players operation @e[limit=1,tag=giveID] playerID = @s playerID
team join colorRed @e[limit=1,tag=giveID]
tag @e[limit=1,tag=giveID] remove giveID