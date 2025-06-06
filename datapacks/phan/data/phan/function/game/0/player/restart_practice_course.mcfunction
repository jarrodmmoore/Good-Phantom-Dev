#go to the place
tp @s 879 2 -972 315 0

#respawn info
scoreboard players set @s pCurrentArea 1
scoreboard players set @s currentLoad 1
scoreboard players set @s previousLoad -1

#play sound
execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.enderman.teleport",targets:"@s",pitch:".8",volume:"1"}