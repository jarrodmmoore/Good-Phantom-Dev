#(waypointID is already taken care of)


#we're gonna do our best to write only what's absolutely necessary to the scoreboard

execute if score @s AIBC_dir1 matches -2147483648..2147483647 run scoreboard players operation #waypointDir1 value = @s AIBC_dir1
execute unless score @s AIBC_dir1 matches -2147483648..2147483647 run scoreboard players set #waypointDir1 value 0

execute if score @s AIBC_dir2 matches -2147483648..2147483647 run scoreboard players operation #waypointDir2 value = @s AIBC_dir2
execute unless score @s AIBC_dir2 matches -2147483648..2147483647 run scoreboard players set #waypointDir2 value 0

execute if score @s AIBC_dir3 matches -2147483648..2147483647 run scoreboard players operation #waypointDir3 value = @s AIBC_dir3
execute unless score @s AIBC_dir3 matches -2147483648..2147483647 run scoreboard players set #waypointDir3 value 0

execute if score @s AIBC_dir4 matches -2147483648..2147483647 run scoreboard players operation #waypointDir4 value = @s AIBC_dir4
execute unless score @s AIBC_dir4 matches -2147483648..2147483647 run scoreboard players set #waypointDir4 value 0

execute if score @s AIBC_event matches -2147483648..2147483647 run scoreboard players operation #waypointEvent value = @s AIBC_event
execute unless score @s AIBC_event matches -2147483648..2147483647 run scoreboard players set #waypointEvent value 0

execute if score @s AIBC_modifier matches -2147483648..2147483647 run scoreboard players operation #waypointModifier value = @s AIBC_modifier
execute unless score @s AIBC_modifier matches -2147483648..2147483647 run scoreboard players set #waypointModifier value 0

execute if score @s AIBC_spread_x matches -2147483648..2147483647 run scoreboard players operation #waypointModifier value = @s AIBC_spread_x
execute unless score @s AIBC_spread_x matches -2147483648..2147483647 run scoreboard players set #waypointSpreadX value 0

execute if score @s AIBC_spread_z matches -2147483648..2147483647 run scoreboard players operation #waypointModifier value = @s AIBC_spread_z
execute unless score @s AIBC_spread_z matches -2147483648..2147483647 run scoreboard players set #waypointSpreadZ value 0

execute store result score #waypointGround value run execute if entity @s[tag=AIBC_requireGround]
execute store result score #waypointMidAir value run execute if entity @s[tag=AIBC_midAir]
execute store result score #waypointHookRight value run execute if entity @s[tag=AIBC_hookRight]
execute store result score #waypointHookLeft value run execute if entity @s[tag=AIBC_hookLeft]
execute store result score #waypointBadSkill value run execute if entity @s[tag=eventBadSkill]
execute store result score #waypointHighSkill value run execute if entity @s[tag=eventHighSkill]