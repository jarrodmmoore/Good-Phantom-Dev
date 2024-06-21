#target got shot? swap colors
execute as @e[tag=targetNode,type=marker] if score @s editArg1 matches 1.. at @s run function phan:levels/neon_nightway/area_2_platform_swap
execute if score #platformSwapImpulse value matches 1 if score #platformSwapImpulse2 value matches 0 run function phan:levels/neon_nightway/area_2_platform_swap_go
scoreboard players operation #platformSwapImpulse2 value = #platformSwapImpulse value
execute if score #platformSwapImpulse value matches 1 run scoreboard players set #platformSwapImpulse value 0

#make sure platforms are set based on "#platformSwap"

#blue solid when platformSwap is 0
execute if score #5Hz value matches 0 if score #platformSwap value matches 0 run function phan:levels/neon_nightway/area_2_platforms_blue

#yellow solid when platformSwap is 1
execute if score #5Hz value matches 1 if score #platformSwap value matches 1 run function phan:levels/neon_nightway/area_2_platforms_yellow