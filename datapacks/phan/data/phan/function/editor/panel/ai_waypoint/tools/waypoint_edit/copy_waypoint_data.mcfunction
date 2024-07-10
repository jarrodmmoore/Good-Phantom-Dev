#(executed by a waypoint)

#particle to indicate we copied the thing
particle minecraft:sonic_boom ~ ~.2 ~ 0 0 0 0 1 force

#get the data
scoreboard players operation #waypointDir1 value = @s AIBC_dir1
scoreboard players operation #waypointDir2 value = @s AIBC_dir1
scoreboard players operation #waypointDir3 value = @s AIBC_dir1
scoreboard players operation #waypointDir4 value = @s AIBC_dir1
scoreboard players operation #waypointEvent value = @s AIBC_event
scoreboard players operation #waypointModifier value = @s AIBC_modifier
execute store result score #waypointSpreadX value run data get entity @s Rotation[0] 10
execute store result score #waypointSpreadZ value run data get entity @s Rotation[1] 10
execute store result score #waypointGround value run execute if entity @s[tag=AIBC_requireGround]
execute store result score #waypointHookLeft value run execute if entity @s[tag=AIBC_hookLeft]
execute store result score #waypointHookRight value run execute if entity @s[tag=AIBC_hookRight]
execute store result score #waypointMidAir value run execute if entity @s[tag=AIBC_midAir]
execute store result score #waypointBadSkill value run execute if entity @s[tag=eventBadSkill]
execute store result score #waypointHighSkill value run execute if entity @s[tag=eventHighSkill]

#missing value is 0
execute unless score @s AIBC_dir1 matches -2147483648..2147483647 run scoreboard players set #waypointDir1 value 0
execute unless score @s AIBC_dir2 matches -2147483648..2147483647 run scoreboard players set #waypointDir2 value 0
execute unless score @s AIBC_dir3 matches -2147483648..2147483647 run scoreboard players set #waypointDir3 value 0
execute unless score @s AIBC_dir4 matches -2147483648..2147483647 run scoreboard players set #waypointDir4 value 0
execute unless score @s AIBC_event matches -2147483648..2147483647 run scoreboard players set #waypointEvent value 0
execute unless score @s AIBC_modifier matches -2147483648..2147483647 run scoreboard players set #waypointModifier value 0