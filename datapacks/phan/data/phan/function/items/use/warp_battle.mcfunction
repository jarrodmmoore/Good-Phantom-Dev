#warp straight to the portal if we're ready to finish
execute if entity @s[tag=vsHomeStretch] if entity @e[type=marker,tag=portalCore,scores={versusSpawn=1},limit=1] run function phan:items/use/warp_battle_portal

#otherwise: warp to the nearest ever eye
execute if entity @s[tag=!vsHomeStretch] if entity @e[type=item_display,tag=enderEye,limit=1,distance=..500] run function phan:items/use/warp_battle_nearest_eye