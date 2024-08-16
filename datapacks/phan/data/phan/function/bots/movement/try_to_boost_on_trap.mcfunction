scoreboard players set @s[scores={botMoveState=..0}] botJumpTimer 0
execute if score @s botMoveState matches 0..1 run tag @s add botFlyWhenInAir
scoreboard players set @s botPreparedToDodgeTrap 0
tag @s add botIsTargetingMine