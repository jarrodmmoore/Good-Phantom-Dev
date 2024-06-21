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
tellraw @s ["",{"text":"\n"},{"translate":"gp.versus.times_up","color":"red"},{"text":"\n"}]
execute at @s run playsound minecraft:entity.iron_golem.death master @s ~ 100000 ~ 100000 1.35