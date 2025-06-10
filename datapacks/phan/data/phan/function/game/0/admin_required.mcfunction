execute at @s run function phan:common/playsound_positionless_macro {sound:"minecraft: block.note_block.bass",targets:"@s",pitch:"1.8"}
tellraw @s ["",{text:"\n"},{translate:"gp.misc.admin_player",color:"red",with:[{selector:"@a[tag=admin]",color:"white"}]}]
tellraw @s ["",{text:" >> "},{translate:"gp.misc.need_admin_tag",color:"red"}]
scoreboard players set @s inputCooldown 20