#executed by levelEntry armor_stand
#argument $(act) should be set when this runs

#figure out which acts are playable
tag @s add act1SelectablePR
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_1 playable 1
execute if score #test value matches 0 run tag @s remove act1SelectablePR

tag @s add act2SelectablePR
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_2 playable 1
execute if score #test value matches 0 run tag @s remove act2SelectablePR

tag @s add act3SelectablePR
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_3 playable 1
execute if score #test value matches 0 run tag @s remove act3SelectablePR

tag @s add act4SelectablePR
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_4 playable 1
execute if score #test value matches 0 run tag @s remove act4SelectablePR


#figure out teleport dimension
$execute store result score #dimensionPR value run data get storage phan_dream_$(level_id):pr_act_$(act) teleport_dimension 1

#get coordinates
$execute store result score #coord_x value run data get storage phan_dream_$(level_id):pr_act_$(act) teleport_location[0] 1
$execute store result score #coord_y value run data get storage phan_dream_$(level_id):pr_act_$(act) teleport_location[1] 1
$execute store result score #coord_z value run data get storage phan_dream_$(level_id):pr_act_$(act) teleport_location[2] 1

#battle mode?
$tag @s remove act$(act)BattleMode
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_$(act) game_type 1
$execute if score #test value matches 2 run tag @s add act$(act)BattleMode

#supports bots?
$tag @s add act$(act)SupportsBots
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_act_$(act) supports_bots 1
$execute if score #test value matches 0 run tag @s remove act$(act)SupportsBots

#figure out music track
$execute store result score #musicTrackPR value run data get storage phan_dream_$(level_id):pr_act_$(act) music_track 1