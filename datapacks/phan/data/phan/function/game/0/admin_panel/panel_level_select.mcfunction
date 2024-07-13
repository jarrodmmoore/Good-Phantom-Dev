#this will be fun to write...

#check to see what we've got

scoreboard players set #testReset value 0


#go back
scoreboard players set #testSlotA value 0
execute if items entity @s enderchest.* purple_dye run scoreboard players set #testSlotA value 1
execute if score #testSlotA value matches 0 run scoreboard players add #testReset value 1


#level slots
#dream 1
scoreboard players set #testSlot1A value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct1a:1b}] run scoreboard players set #testSlot1A value 1
execute if score #testSlot1A value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot1B value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct1b:1b}] run scoreboard players set #testSlot1B value 1
execute if score #testSlot1B value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot1C value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct1c:1b}] run scoreboard players set #testSlot1C value 1
execute if score #testSlot1C value matches 0 run scoreboard players add #testReset value 1

#dream 2
scoreboard players set #testSlot2A value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct2a:1b}] run scoreboard players set #testSlot2A value 1
execute if score #testSlot2A value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot2B value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct2b:1b}] run scoreboard players set #testSlot2B value 1
execute if score #testSlot2B value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot2C value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct2c:1b}] run scoreboard players set #testSlot2C value 1
execute if score #testSlot2C value matches 0 run scoreboard players add #testReset value 1

#dream 3
scoreboard players set #testSlot3A value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct3a:1b}] run scoreboard players set #testSlot3A value 1
execute if score #testSlot3A value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot3B value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct3b:1b}] run scoreboard players set #testSlot3B value 1
execute if score #testSlot3B value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot3C value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct3c:1b}] run scoreboard players set #testSlot3C value 1
execute if score #testSlot3C value matches 0 run scoreboard players add #testReset value 1

#dream 4
scoreboard players set #testSlot4A value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct4a:1b}] run scoreboard players set #testSlot4A value 1
execute if score #testSlot4A value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot4B value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct4b:1b}] run scoreboard players set #testSlot4B value 1
execute if score #testSlot4B value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot4C value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct4c:1b}] run scoreboard players set #testSlot4C value 1
execute if score #testSlot4C value matches 0 run scoreboard players add #testReset value 1

#dream 5
scoreboard players set #testSlot5A value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct5a:1b}] run scoreboard players set #testSlot5A value 1
execute if score #testSlot5A value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot5B value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct5b:1b}] run scoreboard players set #testSlot5B value 1
execute if score #testSlot5B value matches 0 run scoreboard players add #testReset value 1

scoreboard players set #testSlot5C value 0
execute if items entity @s enderchest.* magenta_dye[custom_data~{setAct5c:1b}] run scoreboard players set #testSlot5C value 1
execute if score #testSlot5C value matches 0 run scoreboard players add #testReset value 1

#reset
scoreboard players set #testSlotR value 0
execute if items entity @s enderchest.* player_head[custom_data~{setActRandom:1b}] run scoreboard players set #testSlotR value 1
execute if score #testSlotR value matches 0 if score #dreamsCompleted value matches 5.. run scoreboard players add #testReset value 1


#missing one slot but still have the others? we clicked something!
execute if score #testReset value matches 1 if score #testSlotA value matches 0 run function phan:game/0/admin_panel/click_back_to_gamemode_select

execute if score #testReset value matches 1 if score #testSlot1A value matches 0 run function phan:game/0/admin_panel/try_act/d1a1
execute if score #testReset value matches 1 if score #testSlot1B value matches 0 run function phan:game/0/admin_panel/try_act/d1a2
execute if score #testReset value matches 1 if score #testSlot1C value matches 0 run function phan:game/0/admin_panel/try_act/d1a3

execute if score #testReset value matches 1 if score #testSlot2A value matches 0 run function phan:game/0/admin_panel/try_act/d2a1
execute if score #testReset value matches 1 if score #testSlot2B value matches 0 run function phan:game/0/admin_panel/try_act/d2a2
execute if score #testReset value matches 1 if score #testSlot2C value matches 0 run function phan:game/0/admin_panel/try_act/d2a3

execute if score #testReset value matches 1 if score #testSlot3A value matches 0 run function phan:game/0/admin_panel/try_act/d3a1
execute if score #testReset value matches 1 if score #testSlot3B value matches 0 run function phan:game/0/admin_panel/try_act/d3a2
execute if score #testReset value matches 1 if score #testSlot3C value matches 0 run function phan:game/0/admin_panel/try_act/d3a3

execute if score #testReset value matches 1 if score #testSlot4A value matches 0 run function phan:game/0/admin_panel/try_act/d4a1
execute if score #testReset value matches 1 if score #testSlot4B value matches 0 run function phan:game/0/admin_panel/try_act/d4a2
execute if score #testReset value matches 1 if score #testSlot4C value matches 0 run function phan:game/0/admin_panel/try_act/d4a3

execute if score #testReset value matches 1 if score #testSlot5A value matches 0 run function phan:game/0/admin_panel/try_act/d5a1
execute if score #testReset value matches 1 if score #testSlot5B value matches 0 run function phan:game/0/admin_panel/try_act/d5a2
execute if score #testReset value matches 1 if score #testSlot5C value matches 0 run function phan:game/0/admin_panel/try_act/d5a3

execute if score #testReset value matches 1 if score #dreamsCompleted value matches 5.. if score #testSlotR value matches 0 run function phan:game/0/admin_panel/try_act/random


#clear items if there's a we have something we shouldn't
execute if score #testReset value matches 1.. run function phan:game/0/admin_panel/clear_items


#restore inventory
item replace entity @s enderchest.0 with minecraft:purple_dye[custom_name='{"translate":"gp.admin.go_back","bold":true,"italic":false}',custom_data={adminMenu:1b,goBack:1b}]
item replace entity @s enderchest.9 with air
execute if score #dreamsCompleted value matches ..4 run item replace entity @s enderchest.18 with air
execute if score #dreamsCompleted value matches 5.. run item replace entity @s enderchest.18 with player_head[custom_data={setActRandom:1b,adminMenu:1b},minecraft:custom_name='{"translate":"gp.misc.random_act","color":"white","bold":true,"italic":false}',profile={id:[I;-2103393621,-1644083299,-1977678434,-2028972227],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTk0NWY5MGVmNWQ4MjQxNGJjZjg1NGNiOGViODdkMGUzZTU3YTVmYTZjZjRjNWJiYTE5Y2NjNDM2ZTc4MGRlYSJ9fX0="}]}]

item replace entity @s enderchest.1 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.19 with air

#dream 1
execute if score #d1a1Unlocked value matches 1 run item replace entity @s enderchest.2 with minecraft:magenta_dye[custom_model_data=1000011,custom_name='{"text":"\\uE511","italic":false}',custom_data={setAct1a:1b,adminMenu:1b}]
execute unless score #d1a1Unlocked value matches 1 run item replace entity @s enderchest.2 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct1a:1b,adminMenu:1b}]
execute if score #d1a2Unlocked value matches 1 run item replace entity @s enderchest.11 with minecraft:magenta_dye[custom_model_data=1000012,custom_name='{"text":"\\uE512","italic":false}',custom_data={setAct1b:1b,adminMenu:1b}]
execute unless score #d1a2Unlocked value matches 1 run item replace entity @s enderchest.11 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct1b:1b,adminMenu:1b}]
execute if score #d1a3Unlocked value matches 1 run item replace entity @s enderchest.20 with minecraft:magenta_dye[custom_model_data=1000013,custom_name='{"text":"\\uE513","italic":false}',custom_data={setAct1c:1b,adminMenu:1b}]
execute unless score #d1a3Unlocked value matches 1 run item replace entity @s enderchest.20 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct1c:1b,adminMenu:1b}]

#dream 2
execute if score #d2a1Unlocked value matches 1 run item replace entity @s enderchest.3 with minecraft:magenta_dye[custom_model_data=1000021,custom_name='{"text":"\\uE521","italic":false}',custom_data={setAct2a:1b,adminMenu:1b}]
execute unless score #d2a1Unlocked value matches 1 run item replace entity @s enderchest.3 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct2a:1b,adminMenu:1b}]
execute if score #d2a2Unlocked value matches 1 run item replace entity @s enderchest.12 with minecraft:magenta_dye[custom_model_data=1000022,custom_name='{"text":"\\uE522","italic":false}',custom_data={setAct2b:1b,adminMenu:1b}]
execute unless score #d2a2Unlocked value matches 1 run item replace entity @s enderchest.12 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct2b:1b,adminMenu:1b}]
execute if score #d2a3Unlocked value matches 1 run item replace entity @s enderchest.21 with minecraft:magenta_dye[custom_model_data=1000023,custom_name='{"text":"\\uE523","italic":false}',custom_data={setAct2c:1b,adminMenu:1b}]
execute unless score #d2a3Unlocked value matches 1 run item replace entity @s enderchest.21 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct2c:1b,adminMenu:1b}]

#dream 4
execute if score #d4a1Unlocked value matches 1 run item replace entity @s enderchest.4 with minecraft:magenta_dye[custom_model_data=1000041,custom_name='{"text":"\\uE541","italic":false}',custom_data={setAct4a:1b,adminMenu:1b}]
execute unless score #d4a1Unlocked value matches 1 run item replace entity @s enderchest.4 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct4a:1b,adminMenu:1b}]
execute if score #d4a2Unlocked value matches 1 run item replace entity @s enderchest.13 with minecraft:magenta_dye[custom_model_data=1000042,custom_name='{"text":"\\uE542","italic":false}',custom_data={setAct4b:1b,adminMenu:1b}]
execute unless score #d4a2Unlocked value matches 1 run item replace entity @s enderchest.13 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct4b:1b,adminMenu:1b}]
execute if score #d4a3Unlocked value matches 1 run item replace entity @s enderchest.22 with minecraft:magenta_dye[custom_model_data=1000043,custom_name='{"text":"\\uE543","italic":false}',custom_data={setAct4c:1b,adminMenu:1b}]
execute unless score #d4a3Unlocked value matches 1 run item replace entity @s enderchest.22 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct4c:1b,adminMenu:1b}]

#dream 5
execute if score #d5a1Unlocked value matches 1 run item replace entity @s enderchest.5 with minecraft:magenta_dye[custom_model_data=1000051,custom_name='{"text":"\\uE551","italic":false}',custom_data={setAct5a:1b,adminMenu:1b}]
execute unless score #d5a1Unlocked value matches 1 run item replace entity @s enderchest.5 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct5a:1b,adminMenu:1b}]
execute if score #d5a2Unlocked value matches 1 run item replace entity @s enderchest.14 with minecraft:magenta_dye[custom_model_data=1000052,custom_name='{"text":"\\uE552","italic":false}',custom_data={setAct5b:1b,adminMenu:1b}]
execute unless score #d5a2Unlocked value matches 1 run item replace entity @s enderchest.14 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct5b:1b,adminMenu:1b}]
execute if score #d5a3Unlocked value matches 1 run item replace entity @s enderchest.23 with minecraft:magenta_dye[custom_model_data=1000053,custom_name='{"text":"\\uE553","italic":false}',custom_data={setAct5c:1b,adminMenu:1b}]
execute unless score #d5a3Unlocked value matches 1 run item replace entity @s enderchest.23 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct5c:1b,adminMenu:1b}]

#dream 3
execute if score #d3a1Unlocked value matches 1 run item replace entity @s enderchest.6 with minecraft:magenta_dye[custom_model_data=1000031,custom_name='{"text":"\\uE531","italic":false}',custom_data={setAct3a:1b,adminMenu:1b}]
execute unless score #d3a1Unlocked value matches 1 run item replace entity @s enderchest.6 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct3a:1b,adminMenu:1b}]
execute if score #d3a2Unlocked value matches 1 run item replace entity @s enderchest.15 with minecraft:magenta_dye[custom_model_data=1000032,custom_name='{"text":"\\uE532","italic":false}',custom_data={setAct3b:1b,adminMenu:1b}]
execute unless score #d3a2Unlocked value matches 1 run item replace entity @s enderchest.15 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct3b:1b,adminMenu:1b}]
execute if score #d3a3Unlocked value matches 1 run item replace entity @s enderchest.24 with minecraft:magenta_dye[custom_model_data=1000033,custom_name='{"text":"\\uE533","italic":false}',custom_data={setAct3c:1b,adminMenu:1b}]
execute unless score #d3a3Unlocked value matches 1 run item replace entity @s enderchest.24 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.locked","color":"gray","bold":true,"italic":false}',custom_data={setAct3c:1b,adminMenu:1b}]


item replace entity @s enderchest.7 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.25 with air

item replace entity @s enderchest.8 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.26 with air