#not loaded? exit out now
execute unless loaded ~ ~ ~ run return 0

#we require ground and the player is airborne? kick out of the function
execute if entity @s[tag=AIBC_requireGround] if score #OnGround value matches 0 unless block ~ ~ ~ water unless block ~ ~ ~ #phan:waterloggable[waterlogged=true] unless block ~ ~ ~ #minecraft:slabs[waterlogged=true] unless block ~ ~ ~ #minecraft:stairs[waterlogged=true] unless block ~ ~ ~ #minecraft:coral_plants[waterlogged=true] unless block ~ ~ ~ tall_seagrass run return 0

#write down our stuff
execute store result score #oldWpX value run data get entity @s Pos[0] 10
execute store result score #oldWpY value run data get entity @s Pos[1] 10
execute store result score #oldWpZ value run data get entity @s Pos[2] 10
scoreboard players operation #waypointDir1 value = @s AIBC_dir1
scoreboard players operation #waypointDir2 value = @s AIBC_dir2
scoreboard players operation #waypointDir3 value = @s AIBC_dir3
scoreboard players operation #waypointDir4 value = @s AIBC_dir4
scoreboard players operation #waypointEvent value = @s AIBC_event
scoreboard players operation #waypointModifier value = @s AIBC_modifier
scoreboard players set #waypointHook value 0
execute if entity @s[tag=AIBC_hookLeft,tag=!AIBC_hookRight] run scoreboard players set #waypointHook value 1
execute if entity @s[tag=!AIBC_hookLeft,tag=AIBC_hookRight] run scoreboard players set #waypointHook value 2
execute if entity @s[tag=AIBC_hookLeft,tag=AIBC_hookRight] run scoreboard players set #waypointHook value 3
execute store result score #waypointEventSkill value run execute if entity @s[tag=eventBadSkill]
execute if entity @s[tag=eventHighSkill] run scoreboard players set #waypointEventSkill value 2

#also check if we're sitting on a jump boost block
execute at @s store result score #waypointJumpBoost value run execute if block ~ ~-1 ~ #phan:jump_short
execute at @s if block ~ ~-1 ~ #phan:jump_high run scoreboard players set #waypointJumpBoost value 2

#we did it
scoreboard players set #success value 1
execute if entity @s[tag=AIBC_requireGround] run scoreboard players set #success value 2