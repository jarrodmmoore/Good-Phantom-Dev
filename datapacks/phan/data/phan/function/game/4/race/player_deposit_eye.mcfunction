scoreboard players remove @s eyesToDeposit 1

#play sound effect
function phan:player/tell_spectators
scoreboard players set #test value 0
execute if entity @e[type=marker,tag=portalCore,scores={versusSpawn=1}] run scoreboard players set #test value 1
execute if score #test value matches 1 as @e[type=marker,tag=portalCore,scores={versusSpawn=1},limit=1,sort=nearest] at @s run playsound minecraft:block.end_portal_frame.fill master @a[tag=tellMe] ~ ~ ~ 100000 1 1
execute if score #test value matches 0 at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.end_portal_frame.fill",targets:"@a[tag=tellMe]",pitch:"1",volume:"1"}
#sound for finishing portal
execute if score @s enderEyes >= #vEyesNeeded value if score @s eyesToDeposit matches ..0 at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.end_portal.spawn",targets:"@a[tag=tellMe]",pitch:"1",volume:"1"}
#should only play once!

#do again in a set amount of time
scoreboard players set @s eyeAddDelay 4