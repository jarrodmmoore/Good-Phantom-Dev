scoreboard players set @e[tag=selected,tag=checkpoint] visualLength 0

function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
tellraw @s ["",{text:" > Disabled visual line"}]