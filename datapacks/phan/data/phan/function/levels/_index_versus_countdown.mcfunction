#look up with storage
execute unless score #activeDimension value matches 2..3 in overworld run function phan:level_manager/load/function_versus_countdown with storage phan_dream_active:dream_data
execute if score #activeDimension value matches 2 in the_nether run function phan:level_manager/load/function_versus_countdown with storage phan_dream_active:dream_data
execute if score #activeDimension value matches 3 in the_end run function phan:level_manager/load/function_versus_countdown with storage phan_dream_active:dream_data
