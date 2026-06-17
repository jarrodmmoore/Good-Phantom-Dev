#scoreTotal is a thing

#zero is default
scoreboard players set #bonusTotal value 0
scoreboard players set #bonus1 value 0
scoreboard players set #bonus2 value 0
scoreboard players set #bonus3 value 0

#get bonus points based on act rank
execute if score @s rankArea1 matches 3 run scoreboard players operation #bonus1 value = #C_RANK_BONUS value
execute if score @s rankArea1 matches 2 run scoreboard players operation #bonus1 value = #B_RANK_BONUS value
execute if score @s rankArea1 matches 1 run scoreboard players operation #bonus1 value = #A_RANK_BONUS value
execute if score @s rankArea1 matches 0 run scoreboard players operation #bonus1 value = #S_RANK_BONUS value
scoreboard players operation #bonusTotal value += #bonus1 value
execute if score @s rankArea2 matches 3 run scoreboard players operation #bonus2 value = #C_RANK_BONUS value
execute if score @s rankArea2 matches 2 run scoreboard players operation #bonus2 value = #B_RANK_BONUS value
execute if score @s rankArea2 matches 1 run scoreboard players operation #bonus2 value = #A_RANK_BONUS value
execute if score @s rankArea2 matches 0 run scoreboard players operation #bonus2 value = #S_RANK_BONUS value
scoreboard players operation #bonusTotal value += #bonus2 value
execute if score @s rankArea3 matches 3 run scoreboard players operation #bonus3 value = #C_RANK_BONUS value
execute if score @s rankArea3 matches 2 run scoreboard players operation #bonus3 value = #B_RANK_BONUS value
execute if score @s rankArea3 matches 1 run scoreboard players operation #bonus3 value = #A_RANK_BONUS value
execute if score @s rankArea3 matches 0 run scoreboard players operation #bonus3 value = #S_RANK_BONUS value
scoreboard players operation #bonusTotal value += #bonus3 value