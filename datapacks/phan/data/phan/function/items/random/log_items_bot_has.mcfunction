#scoreboard players operation #hasAnvilOfJustice value = @s botHasItem11
scoreboard players operation #hasBlindingSquid value = @s botHasItem10
scoreboard players operation #hasEnderPearl value = @s botHasItem15
scoreboard players operation #hasEndermanThief value = @s botHasItem16
scoreboard players operation #hasEnergyPotion value = @s botHasItem4
scoreboard players operation #hasFirework value = @s botHasItem17
scoreboard players operation #hasLightning value = @s botHasItem9
scoreboard players operation #hasShield value = @s botHasItem19
scoreboard players operation #hasSonicBlast value = @s botHasItem12
scoreboard players operation #hasSuperJump value = @s botHasItem6
scoreboard players operation #hasSwiftness value = @s botHasItem5
scoreboard players operation #hasTnt value = @s botHasItem3
scoreboard players operation #hasWarp value = @s botHasItem14

scoreboard players operation #hasHighSpeedItem value = @s botHasItem8
scoreboard players operation #hasHighSpeedItem value += #hasEnergyPotion value
scoreboard players operation #hasHighSpeedItem value += #hasSwiftness value
scoreboard players operation #hasHighSpeedItem value += #hasFirework value
scoreboard players operation #hasHighSpeedItem value += #hasWarp value

scoreboard players operation #hasSpeedItem value = @s botHasItem7
scoreboard players operation #hasSpeedItem value += #hasEnderPearl value
scoreboard players operation #hasSpeedItem value += #hasSuperJump value
scoreboard players operation #hasSpeedItem value += #hasHighSpeedItem value