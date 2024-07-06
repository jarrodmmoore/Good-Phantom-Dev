#(waypointID is already taken care of)


#we're gonna do our best to write only what's absolutely necessary to the scoreboard

execute if score @s AIBC_dir1 matches -2147483648..2147483647 run scoreboard players operation #waypointDir1 value = @s AIBC_dir1
execute unless score @s AIBC_dir1 matches -2147483648..2147483647 run scoreboard players set #waypointDir1 value 0

execute if score @s AIBC_dir2 matches -2147483648..2147483647 run scoreboard players operation #waypointDir2 value = @s AIBC_dir1
execute unless score @s AIBC_dir2 matches -2147483648..2147483647 run scoreboard players set #waypointDir2 value 0

execute if score @s AIBC_dir3 matches -2147483648..2147483647 run scoreboard players operation #waypointDir3 value = @s AIBC_dir1
execute unless score @s AIBC_dir3 matches -2147483648..2147483647 run scoreboard players set #waypointDir3 value 0

execute if score @s AIBC_dir4 matches -2147483648..2147483647 run scoreboard players operation #waypointDir4 value = @s AIBC_dir1
execute unless score @s AIBC_dir4 matches -2147483648..2147483647 run scoreboard players set #waypointDir4 value 0

execute if score @s AIBC_event matches -2147483648..2147483647 run scoreboard players operation #waypointEvent value = @s AIBC_dir1
execute unless score @s AIBC_event matches -2147483648..2147483647 run scoreboard players set #waypointEvent value 0

execute if score @s AIBC_modifier matches -2147483648..2147483647 run scoreboard players operation #waypointModifier value = @s AIBC_dir1
execute unless score @s AIBC_modifier matches -2147483648..2147483647 run scoreboard players set #waypointModifier value 0

scoreboard players set #waypointGround value 0
execute if entity @s[tag=AIBC_requireGround] run scoreboard players set #waypointGround value 1