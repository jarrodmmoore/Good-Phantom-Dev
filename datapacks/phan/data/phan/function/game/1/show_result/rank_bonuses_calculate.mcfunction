#scoreTotal

#F +0
#D +0
#C +1000
#B +2500
#A +5000
#S +10000

#zero is default
scoreboard players set #bonusTotal value 0
scoreboard players set #bonus1 value 0
scoreboard players set #bonus2 value 0
scoreboard players set #bonus3 value 0

#get bonus points based on act rank
execute if score @s rankArea1 matches 3 run scoreboard players set #bonus1 value 1000
execute if score @s rankArea1 matches 2 run scoreboard players set #bonus1 value 2500
execute if score @s rankArea1 matches 1 run scoreboard players set #bonus1 value 5000
execute if score @s rankArea1 matches 0 run scoreboard players set #bonus1 value 10000
scoreboard players operation #bonusTotal value += #bonus1 value
execute if score @s rankArea2 matches 3 run scoreboard players set #bonus2 value 1000
execute if score @s rankArea2 matches 2 run scoreboard players set #bonus2 value 2500
execute if score @s rankArea2 matches 1 run scoreboard players set #bonus2 value 5000
execute if score @s rankArea2 matches 0 run scoreboard players set #bonus2 value 10000
scoreboard players operation #bonusTotal value += #bonus2 value
execute if score @s rankArea3 matches 3 run scoreboard players set #bonus3 value 1000
execute if score @s rankArea3 matches 2 run scoreboard players set #bonus3 value 2500
execute if score @s rankArea3 matches 1 run scoreboard players set #bonus3 value 5000
execute if score @s rankArea3 matches 0 run scoreboard players set #bonus3 value 10000
scoreboard players operation #bonusTotal value += #bonus3 value