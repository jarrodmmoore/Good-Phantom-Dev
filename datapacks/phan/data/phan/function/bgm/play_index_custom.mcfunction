#copy music function into more generalized section of storage so we can use the function namespace at the same time
execute if score @s musicTrack matches -1 run data modify storage phan_dream_active:dream_data music_function set from storage phan_dream_active:pr_act_1 music_function
execute if score @s musicTrack matches -2 run data modify storage phan_dream_active:dream_data music_function set from storage phan_dream_active:pr_act_2 music_function
execute if score @s musicTrack matches -3 run data modify storage phan_dream_active:dream_data music_function set from storage phan_dream_active:pr_act_3 music_function
execute if score @s musicTrack matches -4 run data modify storage phan_dream_active:dream_data music_function set from storage phan_dream_active:pr_act_4 music_function

execute if score @s musicTrack matches -101 run data modify storage phan_dream_active:dream_data music_function set from storage phan_dream_active:sa_act_1 music_function
execute if score @s musicTrack matches -102 run data modify storage phan_dream_active:dream_data music_function set from storage phan_dream_active:sa_act_2 music_function
execute if score @s musicTrack matches -103 run data modify storage phan_dream_active:dream_data music_function set from storage phan_dream_active:sa_act_3 music_function

#run it
function phan:level_manager/load/function_music with storage phan_dream_active:dream_data