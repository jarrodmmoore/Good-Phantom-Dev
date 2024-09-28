execute unless loaded ~ ~ ~ run return 0

#need to supply argument "#setTime value" for base temporary rotation time

#summon marker and use it to record the rotation part of the execution context we're using
summon marker ~ ~ ~ {UUID:[I;123987,0,0,5]}
execute positioned ^ ^ ^1 if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;123987,0,0,6]}
execute as 0001e453-0000-0000-0000-000000000005 run tp @s ~ ~ ~ facing entity 0001e453-0000-0000-0000-000000000006 feet
execute as 0001e453-0000-0000-0000-000000000005 store result score #rot_yaw value run data get entity @s Rotation[0] 1
execute as 0001e453-0000-0000-0000-000000000005 store result score #rot_pitch value run data get entity @s Rotation[1] 1
kill 0001e453-0000-0000-0000-000000000005
kill 0001e453-0000-0000-0000-000000000006

#tellraw @a ["",{"text":" "}]
#tellraw @a ["",{"score":{"name":"#rot_yaw","objective":"value"}}]
#tellraw @a ["",{"score":{"name":"#rot_pitch","objective":"value"}}]

#hold that pose!
#adopt rotation
scoreboard players operation @s botTempRotYaw = #rot_yaw value
scoreboard players operation @s botTempRotPitch = #rot_pitch value
scoreboard players operation @s botTempRotTime = #setTime value
execute store result score #randomRoll value run random value -3..3
scoreboard players operation @s botTempRotTime += #randomRoll value