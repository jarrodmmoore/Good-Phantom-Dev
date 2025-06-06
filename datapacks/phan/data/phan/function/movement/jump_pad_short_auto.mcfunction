#feedback
effect give @s hero_of_the_village 1 1 false
playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1.25 .85

#get vertical launch. this should hopefully work at any x and z coordinate
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 12000
scoreboard players set $z player_motion.api.launch 0
function player_motion:api/launch_xyz

#don't do again for 0.5 seconds
scoreboard players set @s autoJumpPadCooldown 10