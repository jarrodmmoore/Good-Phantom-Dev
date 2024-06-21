#iron golem is angry at player
data modify entity @e[tag=ironGolemSelf,limit=1] AngryAt set from entity @s UUID

#set recursions based on how fast the player is moving
scoreboard players set #recursions value 0
scoreboard players operation #recursions value = @s moveVelocity
scoreboard players operation #recursions value /= #20 value
#max recursions is 25
execute if score #recursions value matches 26.. run scoreboard players set #recursions value 25

#not moving? place the target right here
execute unless score @s moveDirection matches 1..8 run scoreboard players set #recursions value 0
execute unless score @s moveDirection matches 1..8 rotated 0 90 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive

#moving? project target in a direction
execute if score @s moveDirection matches 1 rotated 180 0 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive
execute if score @s moveDirection matches 2 rotated 225 0 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive
execute if score @s moveDirection matches 3 rotated 270 0 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive
execute if score @s moveDirection matches 4 rotated 315 0 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive
execute if score @s moveDirection matches 5 rotated 0 0 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive
execute if score @s moveDirection matches 6 rotated 45 0 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive
execute if score @s moveDirection matches 7 rotated 90 0 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive
execute if score @s moveDirection matches 8 rotated 135 0 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive