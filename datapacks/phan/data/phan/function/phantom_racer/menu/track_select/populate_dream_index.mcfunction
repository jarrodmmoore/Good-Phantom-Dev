#$(id) -- the uid of the dream we're considering adding to the index

#this dream must be selectable
$execute store result score #test value run data get storage phan_dream_$(id):dream_data selectable
execute if score #test value matches 0 run return 0
#=====

#must also be playable in Portal Race mode
$execute store result score #test value run data get storage phan_dream_$(id):portal_race selectable
execute if score #test value matches 0 run return 0
#=====

#passed tests! let's add it to the index.
$data modify storage phan:level_index level_id set value $(id)
execute store result storage phan:level_index act int 1 run scoreboard players get #math value
#wait a minute, is this a stock level with 0 unlocked acts? replace the dream with a lock icon
$scoreboard players set #test value $(id)
$execute if score #test value matches ..999 run function phan:phantom_racer/menu/track_select/populate_dream_index_check_if_unlocked {id:$(id)}
#ok, now add to the index
function phan:phantom_racer/menu/track_select/populate_dream_index_go with storage phan:level_index
#count up the accumulator
scoreboard players add #math value 1