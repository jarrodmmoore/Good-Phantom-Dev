scoreboard players set @s speedBoost 1
effect give @s speed 1 2 false
execute if score #assist_movement value matches 1.. run effect give @s speed 1 4 false

execute unless score @s speedBoost2 matches 1 run particle falling_dust{block_state:"yellow_concrete"} ~ ~1 ~ 0.4 0.4 0.4 1 20
execute unless score @s speedBoost2 matches 1 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.45
execute unless score @s speedBoost2 matches 1 unless score @s moveVelocity matches 200.. run scoreboard players set @s moveVelocity 200
execute unless score @s speedBoost2 matches 1 run scoreboard players add @s[scores={speedDecayDelay=..0}] moveVelocity 100

scoreboard players set @s speedDecayDelay 15

scoreboard players operation @s speedBoost2 = @s speedBoost