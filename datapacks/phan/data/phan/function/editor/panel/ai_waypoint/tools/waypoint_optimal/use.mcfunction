#input management
scoreboard players set @s inputCooldown 10
scoreboard players reset @s carrotInput

#already selected something? abort
execute if score @s AIBC_mode matches 4 run return run function phan:editor/panel/ai_waypoint/tools/waypoint_optimal/abort

#abort if nothing found
execute store result score #test value run execute if entity @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}]
execute unless score #test value matches 1.. run tellraw @s ["",{translate:"gp.editor.error.nothing_nearby",color:"red"}]
execute unless score #test value matches 1.. run return 0

#adopt score of the node we're looking at
scoreboard players operation @s AIBC_selected = @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}] AIBC_id
scoreboard players set @s AIBC_mode 4

#feedback
playsound block.note_block.guitar master @s ~ ~ ~ 2 1.15