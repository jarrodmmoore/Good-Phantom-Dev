#handle reset height
execute if score #vAct value matches 1 run function phan:level_manager/load/player_reset_height_pr with storage phan_dream_active:pr_act_1
execute if score #vAct value matches 2 run function phan:level_manager/load/player_reset_height_pr with storage phan_dream_active:pr_act_2
execute if score #vAct value matches 3 run function phan:level_manager/load/player_reset_height_pr with storage phan_dream_active:pr_act_3
execute if score #vAct value matches 4 run function phan:level_manager/load/player_reset_height_pr with storage phan_dream_active:pr_act_4

#look up with storage
execute unless score #activeDimension value matches 2..3 in overworld run function phan:level_manager/load/function_versus_loop with storage phan_dream_active:dream_data
execute if score #activeDimension value matches 2 in the_nether run function phan:level_manager/load/function_versus_loop with storage phan_dream_active:dream_data
execute if score #activeDimension value matches 3 in the_end run function phan:level_manager/load/function_versus_loop with storage phan_dream_active:dream_data
