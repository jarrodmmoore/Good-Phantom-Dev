#check to see what we've got

scoreboard players set #testReset value 0

#lock
scoreboard players set #testSlotA value 0
execute if items entity @s enderchest.* magenta_dye run scoreboard players set #testSlotA value 2
execute if score #testSlotA value matches 0 run scoreboard players add #testReset value 1


#clear items if there's a we have something we shouldn't
execute if score #testReset value matches 1.. run function phan:game/0/admin_panel/clear_items


#restore inventory
item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air

item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with minecraft:magenta_dye[custom_name='{"translate":"gp.misc.need_admin_tag","bold":false,"italic":false,"color":"gray"}',lore=['{"text":" "}','{"text":"/tag <PLAYERNAME> add admin","color":"aqua","italic":false}','{"text":" "}','{"translate":"gp.misc.admins_can_do_things_1","color":"gray","italic":false}','{"translate":"gp.misc.admins_can_do_things_2","color":"gray","italic":false}'],custom_data={adminMenu:1b}]
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air

item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air