#sounds
execute if score @s pGameTime matches 100 at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.pling",targets:"@s",pitch:"1.5"}
execute if score @s pGameTime matches 120 at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.pling",targets:"@s",pitch:"1.7"}

#act subtitle
execute if score @s pGameTime matches ..119 run title @s subtitle [""]
execute unless score #gameState value matches 4 if entity @s[scores={pGameTime=120,pCurrentArea=1}] run title @s subtitle ["",{nbt:"act_name",storage:"phan_dream_active:sa_act_1",interpret:false}]
execute unless score #gameState value matches 4 if entity @s[scores={pGameTime=120,pCurrentArea=2}] run title @s subtitle ["",{nbt:"act_name",storage:"phan_dream_active:sa_act_2",interpret:false}]
execute unless score #gameState value matches 4 if entity @s[scores={pGameTime=120,pCurrentArea=3}] run title @s subtitle ["",{nbt:"act_name",storage:"phan_dream_active:sa_act_3",interpret:false}]
execute if score #gameState value matches 4 if entity @s[scores={pGameTime=120,pCurrentArea=1}] run title @s subtitle ["",{nbt:"act_name",storage:"phan_dream_active:pr_act_1",interpret:false}]
execute if score #gameState value matches 4 if entity @s[scores={pGameTime=120,pCurrentArea=2}] run title @s subtitle ["",{nbt:"act_name",storage:"phan_dream_active:pr_act_2",interpret:false}]
execute if score #gameState value matches 4 if entity @s[scores={pGameTime=120,pCurrentArea=3}] run title @s subtitle ["",{nbt:"act_name",storage:"phan_dream_active:pr_act_3",interpret:false}]
execute if score #gameState value matches 4 if entity @s[scores={pGameTime=120,pCurrentArea=4}] run title @s subtitle ["",{nbt:"act_name",storage:"phan_dream_active:pr_act_4",interpret:false}]

#level title
title @s title ["",{nbt:"name_display",storage:"phan_dream_active:dream_data",interpret:true}]

#"discover" the associated dream (so the name no longer shows up as ???)
function phan:levels/_index_discover_dream