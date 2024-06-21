#lose the last place tag if gamemode is NOT versus race
scoreboard players set #removeLast value 1
execute if score #gameState value matches 4 if score #vGameType value matches 1 run scoreboard players set #removeLast value 0
execute if score #removeLast value matches 1 run tag @s[tag=lastPlace] remove lastPlace

#solo race: use special randomization table that makes all relevant items available for training
execute if score #gameState value matches 4 if score #hudPeakPlayers value matches ..1 run scoreboard players set @s itemLuck -1

#battle mode uses its own randomization...
execute if score #gameState value matches 4 if score #vGameType value matches 2 run scoreboard players set @s itemLuck 0

#count number of speed pads on the field
execute store result score #givenPads value run execute if entity @e[type=armor_stand,tag=speedPadCount]

#count number of mines on the field
execute store result score #givenMines value run execute if entity @e[type=armor_stand,tag=mineCount]

#figure out what items we already have
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

#clean up temporary item bans
#(note: there are 27 randomize armor stands)
tag @e[type=armor_stand,tag=randomize,tag=tempItemBan] remove tempItemBan

#index based on item luck
#(lower itemLuck means you're closer to 1st place)
execute if score @s itemLuck matches 1 run function phan:items/random/pick_luck_1
execute if score @s itemLuck matches 2 run function phan:items/random/pick_luck_2
execute if score @s itemLuck matches 3 run function phan:items/random/pick_luck_3
execute if score @s itemLuck matches 4 run function phan:items/random/pick_luck_4
execute if score @s itemLuck matches 5.. run function phan:items/random/pick_luck_5
#battle mode items
execute if score @s itemLuck matches 0 run function phan:items/random/pick_battle
#solo race practice items
execute if score @s itemLuck matches ..-1 run function phan:items/random/pick_solo

#if we have the lastPlace tag, we might get some bonus trap items to mess with 1st place
execute if entity @s[tag=lastPlace] run function phan:items/random/pick_bonus_mine

#one-off: any player who is not in 1st will get a bonus anvil of justice if the game deemed one neccessary
execute if entity @s[tag=!pickedBonusMine] if score #cooldownAnvil value matches ..0 if score #gameState value matches 4 if score #vGameType value matches 1 if score @s racePosDisplay matches 2.. if score #mandateAnvil value matches 1 run function phan:items/give/anvil_of_justice {count:1}
tag @s[tag=pickedBonusMine] remove pickedBonusMine

#count up time since we've gotten certain stuff
scoreboard players add @s picksSinceSpeed 1
scoreboard players add @s picksSinceBigSpeed 1
scoreboard players add @s picksSinceOffense 1
scoreboard players add @s picksSinceTrap 1
scoreboard players add @s picksSinceGlobal 1
scoreboard players add @s picksSinceUtility 1

#count down number of things given globally
execute if score #givenRockets value matches 1.. run scoreboard players remove #givenRockets value 1