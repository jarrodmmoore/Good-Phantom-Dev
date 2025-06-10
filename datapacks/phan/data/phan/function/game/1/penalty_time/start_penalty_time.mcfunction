scoreboard players set @s pPenaltyTime 1
scoreboard players set @s combo 0
scoreboard players add @s combosDropped 1

#alarm went off! now you've done it
function phan:player/tell_spectators
execute as @a[tag=tellMe] at @s run function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/alarm_bell",targets:"@s",pitch:"1",volume:".85"}