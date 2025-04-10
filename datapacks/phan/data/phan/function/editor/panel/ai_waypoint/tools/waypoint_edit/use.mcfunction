#input management
scoreboard players set @s inputCooldown 15
scoreboard players reset @s carrotInput

#abort if nothing found
execute store result score #test value run execute if entity @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}]
execute unless score #test value matches 1.. run tellraw @s ["",{translate:"gp.editor.error.nothing_nearby",color:"red"}]
execute unless score #test value matches 1.. run return 0

#adopt score of the node we're looking at
scoreboard players operation @s AIBC_selected = @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}] AIBC_id
scoreboard players set @s AIBC_mode 2

#feedback
playsound block.note_block.bit master @s ~ ~ ~ 2 1.15

#bring up the menu, adopt data of selected waypoint
tag @s add importSelectedWaypoint
function phan:editor/panel/ai_waypoint/tools/waypoint_edit/_menu