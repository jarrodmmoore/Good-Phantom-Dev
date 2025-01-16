#dream, mode and act must both be playable
$execute store result score #test value run data get storage phan_dream_$(level_id):dream_data selectable
execute if score #test value matches 0 run return 0
$execute store result score #test value run data get storage phan_dream_$(level_id):portal_race selectable
execute if score #test value matches 0 run return 0
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_$(act) playable
execute if score #test value matches 0 run return 0
#=====

#can't be a locked level
$scoreboard players set #test2 value $(level_id)
$execute if score #test2 value matches ..999 if score #d$(level_id)a$(act)Unlocked value matches 0 run return 0
#=====

#filter based on race/battle random setting, if any
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_$(act) game_type
execute if score #randomSetting value matches 1 unless score #test value matches 1 run return 0
execute if score #randomSetting value matches 2 unless score #test value matches 2 run return 0
#=====

#add this tuple to the list of viable options!
$data modify storage phan:data random_table append value [$(level_id),$(act)]
scoreboard players add #randomLength value 1