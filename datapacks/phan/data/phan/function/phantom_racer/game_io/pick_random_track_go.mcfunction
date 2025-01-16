#random number for index
data modify storage phan:level_index index set value 0
$execute if score #randomLength value matches 2.. store result storage phan:level_index index int 1 run random value 0..$(random_max_index)

#look up what's in the index
function phan:phantom_racer/game_io/pick_random_track_go_2 with storage phan:level_index