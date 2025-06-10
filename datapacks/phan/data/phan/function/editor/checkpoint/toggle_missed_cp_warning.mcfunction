tag @e[tag=selected,tag=checkpoint,tag=checkWarn] add removeCalc
tag @e[tag=selected,tag=checkpoint] add checkWarn
tag @e[tag=removeCalc] remove checkWarn
tag @e[tag=removeCalc] remove removeCalc

function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
tellraw @s ["",{text:" > toggled missed cp warning for selected checkpoints"}]