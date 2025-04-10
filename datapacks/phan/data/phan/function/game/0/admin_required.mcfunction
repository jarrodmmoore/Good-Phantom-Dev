execute at @s run playsound block.note_block.bass master @s ~ 100000 ~ 100000 1.8 0
tellraw @s ["",{text:"\n"},{translate:"gp.misc.admin_player",color:"red",with:[{selector:"@a[tag=admin]",color:"white"}]}]
tellraw @s ["",{text:" >> "},{translate:"gp.misc.need_admin_tag",color:"red"}]
scoreboard players set @s inputCooldown 20