scoreboard players set @s speedBoost 2
effect give @s speed 1 5 false
execute if score #assist_movement value matches 1.. run effect give @s speed 1 10 false

#bot uses this score to move faster
scoreboard players set @s botEffectSpeedPad2 20

execute unless score @s speedBoost2 matches 2 run particle falling_dust{block_state:"diamond_block"} ~ ~1 ~ 0.4 0.4 0.4 1 20
execute unless score @s speedBoost2 matches 2 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.8
execute unless score @s speedBoost2 matches 2 unless score @s moveVelocity matches 200.. run scoreboard players set @s moveVelocity 200
execute unless score @s speedBoost2 matches 2 run scoreboard players add @s[scores={speedDecayDelay=..0}] moveVelocity 150

scoreboard players set @s speedDecayDelay 15

scoreboard players operation @s speedBoost2 = @s speedBoost