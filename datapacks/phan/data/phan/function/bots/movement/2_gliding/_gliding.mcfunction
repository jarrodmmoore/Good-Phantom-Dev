#exit out if we're not moving
execute if score #botWantsToMove value matches 0 run return 0
#=====

#open our wings to pretend like we're flying
data merge entity @s {FallFlying:1b}

#remove "fly when in air" tag
tag @s[tag=botFlyWhenInAir] remove botFlyWhenInAir

#store y coord because we're gonna need it this time
execute store result storage phan:coords target_y int 1 run scoreboard players get @s botTargetY
execute store result storage phan:coords target_y_dec int 1 run scoreboard players get @s botTargetY10

#are we in improvised flight mode? target a potentially higher y coordinate
execute if entity @s[tag=botImprovFlight] run function phan:bots/movement/2_gliding/use_improvised_y_coordinate

#vehicle must face target and also not be in an invalid place
scoreboard players set #success value 0
execute on vehicle if entity @s[tag=botElytraHeightFix] on vehicle if entity @s[tag=botElytra] at @s run function phan:bots/movement/2_gliding/manage_vehicle

#bot: face the target
function phan:bots/movement/2_gliding/face_target with storage phan:coords
#vault upwards with elytra?
execute if score @s botVaultUpwardTime matches 1.. at @s rotated ~ ~-30 run tp @s ~ ~ ~ ~ ~

#get rid of fire from lighting if we're slowed
execute if score @s botEffectSlowness matches 1.. run function phan:bots/movement/slowness_effect_amplifier

#use firework if we've been waiting to do that
execute if entity @s[tag=botUseFireworkInAir,scores={inputCooldown=..0}] run function phan:bots/movement/2_gliding/try_use_firework

#perform pad jump?
execute if entity @s[tag=botPadJumpWhenMidAir] run function phan:bots/movement/1_air/perform_pad_jump

#count down explosion boost time
scoreboard players remove @s[scores={botExplosionBoostTime=1..}] botExplosionBoostTime 1

#store the last yaw we looked at
execute store result score @s botWanderYaw run data get entity @s Rotation[0] 1

#cancel flight if that's what we wanted
execute if score #success value matches 0 run function phan:bots/movement/cancel_flight