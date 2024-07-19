execute as @a run attribute @s generic.movement_speed base set 0.15
execute as @a run attribute @s minecraft:generic.water_movement_efficiency base set 1
execute as @a run attribute @s generic.step_height base set 1.0

#catch a bug where dimensions changes screw up player effects
effect clear @a jump_boost
#this was allegedly fixed in 1.20.6 but that was a LIE! >:(

scoreboard players set @a moveVelocity 0
scoreboard players set @a airTime 0
scoreboard players set @a hitstun 0

scoreboard players set @a swiftnessTime 0

scoreboard players set @a walkDistance 0
scoreboard players set @a sprintDistance 0

#bots, too
execute if score #botsEnabled value matches 1.. run function phan:bots/reset_speeds