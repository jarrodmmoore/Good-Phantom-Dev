#battle mode: get invulnerability for a second.
#otherwise it's super common to die immediately after teleport. players are always shooting at ever eyes all around the arena
execute if score #vGameType value matches 2 run scoreboard players set @s spawnInvulnerability 20

#warp straight to the portal if we're ready to finish
execute if entity @s[tag=vsHomeStretch] if entity @e[type=marker,tag=portalCore,scores={versusSpawn=1},limit=1] run function phan:items/use/warp_battle_portal

#otherwise: warp to the nearest ever eye
execute if entity @s[tag=!vsHomeStretch] if entity @e[type=item_display,tag=enderEye,limit=1,distance=..500] run function phan:items/use/warp_battle_nearest_eye