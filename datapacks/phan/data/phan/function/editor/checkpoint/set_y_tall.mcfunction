scoreboard players set @e[tag=selected,tag=checkpoint] checkMinY -64
scoreboard players set @e[tag=selected,tag=checkpoint] checkMaxY 360

function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
tellraw @s ["",{text:" > Minimum y-trigger coordinate set to y=-70"}]
tellraw @s ["",{text:" > Maximum y-trigger coordinate set to y=360"}]

scoreboard players set @s editVisualTimer 0