#input management
scoreboard players set @s inputCooldown 15
scoreboard players reset @s carrotInput

#abort if nothing found
execute store result score #test value run execute if entity @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}]
execute unless score #test value matches 1.. run tellraw @s ["",{translate:"gp.editor.error.nothing_nearby",color:"red"}]
execute unless score #test value matches 1.. run return 0

#clear data on the waypoint we're looking at
execute as @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}] at @s run function phan:editor/panel/ai_waypoint/tools/waypoint_clear/clear_data_on_waypoint