scoreboard players set @s stoppedTime -1
scoreboard players add @s airTime 1

#if moving horizontally: we can still gain velocity for two ticks after leaving the ground
execute if entity @s[scores={moving=1,airTime=..2}] run scoreboard players set @s stoppedTime 0

#override moving to be -1 again
scoreboard players set @s moving -1