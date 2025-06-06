execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft: block.note_block.bass",targets:"@s",pitch:"1.8",volume:"1"}
tellraw @s ["",{translate:"gp.misc.need_admin_tag",color:"red"}]
scoreboard players set @s inputCooldown 20

#clear whatever we grabbed
clear @s *[custom_data~{assistMenu:1b}]