attribute @s generic.movement_speed base set 0.15
attribute @s minecraft:generic.water_movement_efficiency base set 1
attribute @s generic.step_height base set 1.1

effect clear @s jump_boost

scoreboard players set @s moveVelocity 0
scoreboard players set @s airTime 0
scoreboard players set @s hitstun 0

scoreboard players set @s swiftnessTime 0

scoreboard players set @s walkDistance 0
scoreboard players set @s sprintDistance 0

tag @s remove resistAfterNextDmgTick