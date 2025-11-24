#set self state
scoreboard players set @s botMoveState 2
scoreboard players set @s fallFlying 1

#update pose and visual
data merge entity @s {FallFlying:1b}
data modify entity @s pose set value fall_flying

#enter improvised flight if we were trying to vault upwards
execute if score @s botVaultUpwardTime matches 1.. run tag @s add botImprovFlight

#get velocity so we can apply it to the armor stand
execute store result score #xVelocity value run data get entity @s Motion[0] 100000
execute store result score #yVelocity value run data get entity @s Motion[1] 100000
execute store result score #zVelocity value run data get entity @s Motion[2] 100000

#add onto initial velocity somewhat depending on skill level
data modify storage phan:coords strength set value "0.0005"
execute if score @s botSkill matches 2 run data modify storage phan:coords strength set value "0.001"
execute if score @s botSkill matches 3 run data modify storage phan:coords strength set value "0.0015"
execute if score @s botSkill matches 4 run data modify storage phan:coords strength set value "0.0020"
execute if score @s botSkill matches 5 run data modify storage phan:coords strength set value "0.0025"
execute if score @s botSkill matches 6.. run data modify storage phan:coords strength set value "0.0030"
function phan:bots/movement/2_gliding/apply_velocity_to_vehicle_variable with storage phan:coords

#look the right way? via /rotate
rotate @s ~ ~

#clean-up
tag @s remove botFlyWhenInAir