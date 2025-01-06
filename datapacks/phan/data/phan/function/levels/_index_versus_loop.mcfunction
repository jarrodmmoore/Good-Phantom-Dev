#look up with storage
execute unless score #activeDimension value matches 2..3 in overworld run function phan:level_manager/load/function_versus_loop with storage phan_dream_active:dream_data
execute if score #activeDimension value matches 2 in the_nether run function phan:level_manager/load/function_versus_loop with storage phan_dream_active:dream_data
execute if score #activeDimension value matches 3 in the_end run function phan:level_manager/load/function_versus_loop with storage phan_dream_active:dream_data

#old, hard-coded index
#execute if score #chosenLevel value matches 1 run function phan:levels/pastel_palace/_index_versus_loop
#execute if score #chosenLevel value matches 2 run function phan:levels/moonlit_mountains/_index_versus_loop
#execute if score #chosenLevel value matches 3 in minecraft:the_end run function phan:levels/shattered_city/_index_versus_loop
#execute if score #chosenLevel value matches 4 run function phan:levels/neon_nightway/_index_versus_loop
#execute if score #chosenLevel value matches 5 run function phan:levels/deep_dive/_index_versus_loop