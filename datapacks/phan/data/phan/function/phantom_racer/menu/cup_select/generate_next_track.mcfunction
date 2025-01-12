#$(cup) = cup id
#$(round) = round number

#do this again in a second
scoreboard players set #tvShowTrackTimer value 22

#look up the storage of the level

#get max round count
$execute store result score #test1 value run data get storage phan_grand_prix_$(cup):metadata rounds

#loop and do nothing if we've exceeded max round count
execute if score #tvShowTrack value > #test1 value run return run scoreboard players set #tvShowTrack value 1
#=====

#spawn the correct preview image
$data modify storage phan:level_index level_id set from storage phan_grand_prix_$(cup):round_$(round) dream
$data modify storage phan:level_index act set from storage phan_grand_prix_$(cup):round_$(round) act
function phan:phantom_racer/menu/cup_select/generate_next_track_go with storage phan:level_index

#once that whole function stack is done, increment round
scoreboard players add #tvShowTrack value 1