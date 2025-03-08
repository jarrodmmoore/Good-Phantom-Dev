#execute store result score #hasAnvilOfJustice value run clear @s anvil[custom_data~{anvilOfJustice:1b}] 0
execute store result score #hasBlindingSquid value run clear @s cyan_dye[custom_data~{blindingSquid:1b}] 0
execute store result score #hasEnderPearl value run clear @s ender_pearl[custom_data~{enderPearl:1b}] 0
execute store result score #hasEndermanThief value run clear @s cyan_dye[custom_data~{endermanThief:1b}] 0
execute store result score #hasEnergyPotion value run clear @s amethyst_shard[custom_data~{energyPotion:1b}] 0
execute store result score #hasFirework value run clear @s firework_rocket[custom_data~{fireworkRocket:1b}] 0
execute store result score #hasLightning value run clear @s blaze_rod[custom_data~{lightningStrike:1b}] 0
execute store result score #hasShield value run clear @s light_gray_candle[custom_data~{shield:1b}] 0
execute store result score #hasSonicBlast value run clear @s quartz[custom_data~{sonicBlast:1b}] 0
execute store result score #hasSuperJump value run clear @s prismarine_crystals[custom_data~{superJump:1b}] 0
execute store result score #hasSwiftness value run clear @s prismarine_shard[custom_data~{swiftnessPotion:1b}] 0
execute store result score #hasTnt value run clear @s tnt[custom_data~{throwableTnt:1b}] 0
execute store result score #hasWarp value run clear @s lime_candle[custom_data~{warp:1b}] 0

execute store result score #hasHighSpeedItem value run clear @s cyan_dye[custom_data~{superSpeedPad:1b}] 0
scoreboard players operation #hasHighSpeedItem value += #hasEnergyPotion value
scoreboard players operation #hasHighSpeedItem value += #hasSwiftness value
scoreboard players operation #hasHighSpeedItem value += #hasFirework value
scoreboard players operation #hasHighSpeedItem value += #hasWarp value

execute store result score #hasSpeedItem value run clear @s cyan_dye[custom_data~{speedPad:1b}] 0
scoreboard players operation #hasSpeedItem value += #hasEnderPearl value
scoreboard players operation #hasSpeedItem value += #hasSuperJump value
scoreboard players operation #hasSpeedItem value += #hasHighSpeedItem value