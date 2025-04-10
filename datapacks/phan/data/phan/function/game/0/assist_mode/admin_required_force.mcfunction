execute at @s run playsound block.note_block.bass master @s ~ 100000 ~ 100000 1.8 0
tellraw @s ["",{translate:"gp.misc.need_admin_tag",color:"red"}]
scoreboard players set @s inputCooldown 20

#clear whatever we grabbed
clear @s *[custom_data~{assistMenu:1b}]