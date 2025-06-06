tag @e[tag=selected,tag=checkpoint,tag=posCalc] add removeCalc
tag @e[tag=selected,tag=checkpoint] add posCalc
tag @e[tag=removeCalc] remove posCalc
tag @e[tag=removeCalc] remove removeCalc

function phan:common/playsound_positionless_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
tellraw @s ["",{text:" > toggled position calc for selected checkpoints"}]