#executed by levelEntry armor_stand
#argument $(act) should be set when this runs

#figure out which acts are playable
tag @s add act1SelectableSA
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_1 playable 1
execute if score #test value matches 0 run tag @s remove act1SelectableSA

tag @s add act2SelectableSA
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_2 playable 1
execute if score #test value matches 0 run tag @s remove act2SelectableSA

tag @s add act3SelectableSA
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_3 playable 1
execute if score #test value matches 0 run tag @s remove act3SelectableSA


#figure out teleport dimension
$execute store result score #dimensionSA value run data get storage phan_dream_$(level_id):sa_act_$(act) teleport_dimension 1

#get coordinates
$execute store result score #coord_x value run data get storage phan_dream_$(level_id):sa_act_$(act) teleport_location[0] 1
$execute store result score #coord_y value run data get storage phan_dream_$(level_id):sa_act_$(act) teleport_location[1] 1
$execute store result score #coord_z value run data get storage phan_dream_$(level_id):sa_act_$(act) teleport_location[2] 1

#use area transition?
$tag @s add act$(act)AreaTransition
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_$(act) use_area_transition 1
$execute if score #test value matches 0 run tag @s remove act$(act)AreaTransition

#night vision?
$tag @s add act$(act)NightVision
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_$(act) night_vision 1
$execute if score #test value matches 0 run tag @s remove act$(act)NightVision

#bright mines?
$tag @s add act$(act)BrightMines
$execute store result score #test value run data get storage phan_dream_$(level_id):sa_act_$(act) bright_mines 1
$execute if score #test value matches 0 run tag @s remove act$(act)BrightMines

#figure out music track
$execute store result score #musicTrackSA value run data get storage phan_dream_$(level_id):sa_act_$(act) music_track 1