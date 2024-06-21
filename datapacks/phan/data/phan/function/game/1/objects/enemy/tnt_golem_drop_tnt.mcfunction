#feedback
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 3 1

#summon a TNT. no velocity this time.
execute if loaded ~ ~1.8 ~ run summon tnt ~ ~2.1 ~ {fuse:1000,Tags:["giveID","enemyTNT","sonicBlastDestroys"]}

#give color
team join colorRed @e[limit=1,tag=giveID]
#make sure it doesn't instantly explode on ourselves
scoreboard players set @s playerID -1
scoreboard players set @e[limit=1,tag=giveID] playerID -1
tag @e[limit=1,tag=giveID] remove giveID