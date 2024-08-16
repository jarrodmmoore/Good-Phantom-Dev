#improv flight!
tag @s add botImprovFlight
scoreboard players set @s botVaultUpwardTime 20

#need to enter flight mode if we're not flying already
execute if score @s botMoveState matches 0..1 run tag @s add botFlyWhenInAir
execute if score @s botMoveState matches 0 run scoreboard players set @s botJumpTimer 0
execute if entity @s[scores={botMoveState=1,airTime=..3}] run scoreboard players set @s botJumpTimer 0

#don't try to boost or use a different item while we're preparing to fly
scoreboard players set @s[scores={botItemThinkTime=..19}] botItemThinkTime 20
scoreboard players set @s[scores={botBoostThinkTime=..19}] botBoostThinkTime 20

#use firework as soon as we're gliding
tag @s add botUseFireworkInAir

#take alt route
scoreboard players set #botChoseAltRoute value 2