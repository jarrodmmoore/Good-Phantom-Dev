#must be player
execute if entity @s[type=!player] run return 0

#feedback
execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.bass",targets:"@s",pitch:"1.8"}
tellraw @s ["",{text:"[ ! ] ",color:"red"},{translate:"gp.error.max_bot_count",color:"red",with:[{score:{name:"#MAX_BOT_COUNT",objective:"value"}}]}]