tag @e[tag=selected,tag=checkpoint,tag=checkFlyRespawn] add removeCalc
tag @e[tag=selected,tag=checkpoint] add checkFlyRespawn
tag @e[tag=removeCalc] remove checkFlyRespawn
tag @e[tag=removeCalc] remove removeCalc

function phan:common/playsound_positionless_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
tellraw @s ["",{text:" > toggled upward launch on respawn for selected checkpoints"}]