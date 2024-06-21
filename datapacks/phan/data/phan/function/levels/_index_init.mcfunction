#default stuff that individual levels can override
scoreboard players set #nightVision value 0
scoreboard players set #brightMines value 0
scoreboard players set #portal1StopsMusic value 0
scoreboard players set #portal2StopsMusic value 0
scoreboard players set #portal3StopsMusic value 0

#run level init function
execute if score #chosenLevel value matches 1 run function phan:levels/pastel_palace/_init
execute if score #chosenLevel value matches 2 run function phan:levels/moonlit_mountains/_init
execute if score #chosenLevel value matches 3 run function phan:levels/shattered_city/_init
execute if score #chosenLevel value matches 4 run function phan:levels/neon_nightway/_init
execute if score #chosenLevel value matches 5 run function phan:levels/deep_dive/_init