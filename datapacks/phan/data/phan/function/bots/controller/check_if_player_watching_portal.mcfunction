#if somebody is looking at the portal, deny advance
execute as @a[tag=doneWithIntro,gamemode=adventure] at @s positioned ^ ^ ^35 if entity @e[type=marker,tag=portalCore,scores={versusSpawn=1},distance=..50] run return 1

#nobody looking, we're fine
return 0