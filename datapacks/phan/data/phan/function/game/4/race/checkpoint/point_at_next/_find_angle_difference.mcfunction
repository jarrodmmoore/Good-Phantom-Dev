#0001869f-0000-0000-0000-000000000001
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,UUID:[I;99999,0,0,1]}
tp 0001869f-0000-0000-0000-000000000001 ~ ~ ~ ~ ~

#find difference between the player's facing angle and the angle they'd need to face to match the execution context of this function
execute store result score #rot_yaw value run data get entity 0001869f-0000-0000-0000-000000000001 Rotation[0]
scoreboard players operation #rot_yaw value -= @s rot_yaw
scoreboard players operation #rot_yaw value %= #360 value

#thank you for your service
kill 0001869f-0000-0000-0000-000000000001

#assign compass direction
execute if score #rot_yaw value matches ..22 run scoreboard players set @s compassDirection 1
execute if score #rot_yaw value matches 23..67 run scoreboard players set @s compassDirection 2
execute if score #rot_yaw value matches 68..112 run scoreboard players set @s compassDirection 3
execute if score #rot_yaw value matches 113..157 run scoreboard players set @s compassDirection 4
execute if score #rot_yaw value matches 158..202 run scoreboard players set @s compassDirection 5
execute if score #rot_yaw value matches 203..247 run scoreboard players set @s compassDirection 6
execute if score #rot_yaw value matches 248..292 run scoreboard players set @s compassDirection 7
execute if score #rot_yaw value matches 293..337 run scoreboard players set @s compassDirection 8
execute if score #rot_yaw value matches 338.. run scoreboard players set @s compassDirection 1

#note: compassDirection 4,5,6 means we're facing backwards