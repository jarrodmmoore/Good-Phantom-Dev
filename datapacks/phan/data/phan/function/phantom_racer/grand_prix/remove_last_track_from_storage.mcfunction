#$(gp_id) is the id of the cup we're editing

#get number of rounds
$execute store result score #math value run data get storage phan_grand_prix_$(gp_id):metadata rounds
execute store result storage phan:gp_index index int 1 run scoreboard players get #math value

#if already at 0, do nothing
execute unless score #math value matches 1.. run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8
#=====

#delete the entry at this slot
function phan:phantom_racer/grand_prix/remove_last_track_from_storage_go with storage phan:gp_index

#increment round count by 1 and store it again
scoreboard players remove #math value 1
$execute store result storage phan_grand_prix_$(gp_id):metadata rounds int 1 run scoreboard players get #math value

#feedback sound
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 1