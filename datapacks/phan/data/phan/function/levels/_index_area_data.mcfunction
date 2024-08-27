execute if score #chosenLevel value matches 1 run function phan:levels/pastel_palace/_area_data
execute if score #chosenLevel value matches 2 run function phan:levels/moonlit_mountains/_area_data
execute if score #chosenLevel value matches 3 run function phan:levels/shattered_city/_area_data
execute if score #chosenLevel value matches 4 run function phan:levels/neon_nightway/_area_data
execute if score #chosenLevel value matches 5 run function phan:levels/deep_dive/_area_data

#assist mode: get extra time
execute if score #assist_time_limit value matches 1 run scoreboard players operation @s pTimeRemaining *= #CONST_ASSIST_TIME value
execute if score #assist_time_limit value matches 1 run scoreboard players operation @s pTimeRemaining /= #100 value
#assist mode: no time limit
execute if score #assist_time_limit value matches 2 run scoreboard players set @s pTimeRemaining 900000000

#time attack mode: fixed time limit of 5 mins
execute if score #gameState value matches 3 run scoreboard players set @s pTimeRemaining 6019

#total score goal? just sum of 3
scoreboard players operation #scoreRankST value = #scoreRankS1 value
scoreboard players operation #scoreRankST value += #scoreRankS2 value
scoreboard players operation #scoreRankST value += #scoreRankS3 value

scoreboard players operation #scoreRankAT value = #scoreRankA1 value
scoreboard players operation #scoreRankAT value += #scoreRankA2 value
scoreboard players operation #scoreRankAT value += #scoreRankA3 value

scoreboard players operation #scoreRankBT value = #scoreRankB1 value
scoreboard players operation #scoreRankBT value += #scoreRankB2 value
scoreboard players operation #scoreRankBT value += #scoreRankB3 value

scoreboard players operation #scoreRankCT value = #scoreRankC1 value
scoreboard players operation #scoreRankCT value += #scoreRankC2 value
scoreboard players operation #scoreRankCT value += #scoreRankC3 value

#account for rank bonuses at the end
scoreboard players add #scoreRankST value 30000
scoreboard players add #scoreRankAT value 15000
scoreboard players add #scoreRankBT value 7500
scoreboard players add #scoreRankCT value 3000

#Q: why do we do rank bonuses?
#A: so the final rank we get makes more sense. without bonuses it's easy to get something like |C| |C| |A| and get an overall |A| if one of the acts was particularly strong