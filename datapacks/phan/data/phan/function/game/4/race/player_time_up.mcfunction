#finished!
tag @s add playerReservation
tag @s remove playing
scoreboard players set @s spectateDelay 80

gamemode spectator @s

#set music
tag @s add noSpecDataAdopt
scoreboard players set @s musicTrack 0
function phan:bgm/set_bgm_self

#finish pos -1 means we DNF'd
scoreboard players set @s finishPos -1

#message and sound
tellraw @s ["",{text:"\n"},{translate:"gp.versus.times_up",color:"red"},{text:"\n"}]
execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.iron_golem.death",targets:"@s",pitch:"1.35"}