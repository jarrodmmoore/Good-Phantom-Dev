#$(selection) holds id of point 1

execute store result score #test value run execute if entity @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}]

#abort if nothing found
execute unless score #test value matches 1.. run return 0

#store the id of point 2
scoreboard players operation #getID value = @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}] AIBC_id

#abort if source and target have the same id
execute if score @s AIBC_selected = #getID value run return run function phan:editor/panel/ai_waypoint/tools/waypoint_connector/error

#ok, we're in the clear now...

#connect node 1 to node 2 via the path
$execute if score @s AIBC_set_dir matches 1..4 run scoreboard players operation @e[type=marker,tag=AIBC,scores={AIBC_id=$(selection)}] AIBC_dir$(set_dir) = #getID value
$execute if score @s AIBC_set_dir matches 5 run scoreboard players operation @e[type=marker,tag=AIBC,scores={AIBC_id=$(selection)}] AIBC_modifier = #getID value

#feedback
execute at @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}] run particle happy_villager ~ ~.15 ~ 0.1 0.1 0.1 0 10 force
playsound block.note_block.chime master @a ~ ~ ~ 2 1

#success!
scoreboard players set @s AIBC_mode 0
scoreboard players reset @s AIBC_selected