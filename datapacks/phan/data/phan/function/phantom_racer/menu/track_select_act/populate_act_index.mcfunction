#$(level_id) -- the uid of the dream this act belongs to
#$(act) -- the act we're considering adding to the list

#this act must be playable, otherwise quit out
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_$(act) playable
execute if score #test value matches 0 run return 0
#=====

#passed tests! let's add it to the index.
execute store result storage phan:level_index index int 1 run scoreboard players get #math value
#ok, now add to the index
function phan:phantom_racer/menu/track_select_act/populate_act_index_go with storage phan:level_index
#count up the accumulator
scoreboard players add #math value 1