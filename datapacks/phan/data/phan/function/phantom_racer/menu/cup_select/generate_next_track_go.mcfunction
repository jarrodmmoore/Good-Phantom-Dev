#$(level_id) = dream
#$(act) = act

#read what level we're trying to load
$scoreboard players set #test2 value $(level_id)


#might override models in special cases:

#random track
execute if score #test2 value matches 0 run data modify storage phan:level_index model set value 'gp/map_preview/random'
execute if score #test2 value matches -1 run data modify storage phan:level_index model set value 'gp/map_preview/random_race'
execute if score #test2 value matches -2 run data modify storage phan:level_index model set value 'gp/map_preview/random_battle'
#exit out and render it right now! don't try to look up data on a level that doesn't exist.
execute if score #test2 value matches ..0 run return run function phan:phantom_racer/menu/cup_select/generate_next_track_go_2 with storage phan:level_index
#=====

#ok, we can look up the level just fine.

#get the true model
$data modify storage phan:level_index model set from storage phan_dream_$(level_id):pr_act_$(act) thumbnail_model

#level ids below 1000: replace image with static if we haven't discovered the level yet
$execute if score #test2 value matches ..999 if score #d$(level_id)a$(act)Unlocked value matches 0 run data modify storage phan:level_index model set value 'gp/map_preview/unknown_dream'

#we need to go deeper...
function phan:phantom_racer/menu/cup_select/generate_next_track_go_2 with storage phan:level_index