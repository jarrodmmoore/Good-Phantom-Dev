#executed by a waypoint we're trying to target

#get id
scoreboard players operation #wpTarget value = @s AIBC_id
#get coordinates and spread (both x10 for extra accuracy)
execute store result score #wpX value run data get entity @s Pos[0] 10
execute store result score #wpY value run data get entity @s Pos[1] 10
execute store result score #wpZ value run data get entity @s Pos[2] 10
execute store result score #wpSpreadX value run data get entity @s Rotation[0] 100
execute store result score #wpSpreadZ value run data get entity @s Rotation[1] 100
#catch invalid spread stored on rotation
execute if score #wpSpreadX value matches 101.. run scoreboard players set #wpSpreadX value 100
execute if score #wpSpreadX value matches ..-1 run scoreboard players set #wpSpreadX value 0
execute if score #wpSpreadZ value matches 101.. run scoreboard players set #wpSpreadZ value 100
execute if score #wpSpreadZ value matches ..-1 run scoreboard players set #wpSpreadZ value 0
#get optimal spread (if it exists)
scoreboard players set #wpOptimalX value -2147483648
execute if score @s AIBC_spread_x matches -2147483648..2147483647 run scoreboard players operation #wpOptimalX value = @s AIBC_spread_x
scoreboard players set #wpOptimalZ value -2147483648
execute if score @s AIBC_spread_z matches -2147483648..2147483647 run scoreboard players operation #wpOptimalZ value = @s AIBC_spread_z

#find min and max possible coordinates we can hit at
scoreboard players operation #wpMaxX value = #wpX value
scoreboard players operation #wpMaxX value += #wpSpreadX value
scoreboard players operation #wpMinX value = #wpX value
scoreboard players operation #wpMinX value -= #wpSpreadX value

scoreboard players operation #wpMaxZ value = #wpZ value
scoreboard players operation #wpMaxZ value += #wpSpreadZ value
scoreboard players operation #wpMinZ value = #wpZ value
scoreboard players operation #wpMinZ value -= #wpSpreadZ value

#calculate the highest possible y coordinate a player is allowed hit this at
scoreboard players set #recursions value 25
scoreboard players operation #wpCeiling value = #wpY value
execute if entity @s[tag=!AIBC_requireGround] at @s positioned ~ ~2 ~ if block ~ ~ ~ #phan:not_solid run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target_check_ceiling
execute if entity @s[tag=AIBC_requireGround] run scoreboard players add #wpCeiling value 15

#we did it
scoreboard players set #foundNode value 1