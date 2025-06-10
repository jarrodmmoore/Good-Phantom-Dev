tag @e[tag=selected,tag=checkpoint,tag=checkWrongWay] add removeCalc
tag @e[tag=selected,tag=checkpoint] add checkWrongWay
tag @e[tag=removeCalc] remove checkWrongWay
tag @e[tag=removeCalc] remove removeCalc

function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
tellraw @s ["",{text:" > toggled wrong way warning for selected checkpoints"}]