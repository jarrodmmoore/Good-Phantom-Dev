#must roll a 3 or lower for a jump
#must roll a 2 or lower for an elytra jump
scoreboard players set #random value 10
execute if score @s botSkill matches 2 store result score #random value run random value 3..9
execute if score @s botSkill matches 3 store result score #random value run random value 2..8
execute if score @s botSkill matches 4 store result score #random value run random value 2..7
execute if score @s botSkill matches 5 store result score #random value run random value 1..5
execute if score @s botSkill matches 6 store result score #random value run random value 1..4

#must do elytra jump if we were commanded to do so
execute if entity @s[tag=botPadJumpWhenMidAir] run scoreboard players set #random value 2
execute if entity @s[tag=botPadJumpWhenMidAir] run tag @s add botSpamJumpKey
tag @s[tag=botPadJumpWhenMidAir] remove botPadJumpWhenMidAir

#must do elytra jump if we were previously flying
execute if score @s botMoveState matches 2 run scoreboard players set #random value 2

#do jump?
execute if score #random value matches ..3 run tag @s add botDelayPadJump

#do elytra?
execute if score #random value matches ..2 run tag @s add botFlyWhenInAir
execute if score #random value matches ..2 run tag @s add botImprovFlight
execute if score #random value matches ..2 run scoreboard players set @s botVaultUpwardTime 5