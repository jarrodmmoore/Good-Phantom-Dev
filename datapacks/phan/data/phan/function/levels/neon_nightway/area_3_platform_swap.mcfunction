#sound and swap
scoreboard players add #platformSwapAct3 value 1
execute if score #platformSwapAct3 value matches 2.. run scoreboard players set #platformSwapAct3 value 0
execute if score #platformSwapAct3 value matches 0 run function phan:levels/neon_nightway/area_3_platform_swap_blue
execute if score #platformSwapAct3 value matches 1 run function phan:levels/neon_nightway/area_3_platform_swap_yellow

#reset timer
scoreboard players set #platformSwapTimer value 0

#run the swaps right away!
#blue solid when platformSwapAct3 is 0
execute if score #platformSwapAct3 value matches 0 run function phan:levels/neon_nightway/area_3_platforms_blue

#yellow solid when platformSwapAct3 is 1
execute if score #platformSwapAct3 value matches 1 run function phan:levels/neon_nightway/area_3_platforms_yellow