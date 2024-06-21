scoreboard players set @s pPenaltyTime 1
scoreboard players set @s combo 0
scoreboard players add @s combosDropped 1

#alarm went off! now you've done it
function phan:tell_spectators
execute as @a[tag=tellMe] at @s run playsound minecraft:custom_sfx/alarm_bell master @s ~ 100000 ~ 100000