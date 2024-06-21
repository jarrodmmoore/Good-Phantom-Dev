#sound and swap
scoreboard players add #platformSwap value 1
execute if score #platformSwap value matches 2.. run scoreboard players set #platformSwap value 0

#run the swaps right away!
#blue solid when platformSwap is 0
execute if score #platformSwap value matches 0 run function phan:levels/neon_nightway/area_2_platforms_blue

#yellow solid when platformSwap is 1
execute if score #platformSwap value matches 1 run function phan:levels/neon_nightway/area_2_platforms_yellow