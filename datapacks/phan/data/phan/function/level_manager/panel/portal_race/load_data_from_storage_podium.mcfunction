#executed by levelEntry armor_stand

#figure out teleport dimension
$execute store result score #dimensionPR value run data get storage phan_dream_$(level_id):pr_podium teleport_dimension 1

#get coordinates
$execute store result score #coord_x value run data get storage phan_dream_$(level_id):pr_podium teleport_location[0] 1
$execute store result score #coord_y value run data get storage phan_dream_$(level_id):pr_podium teleport_location[1] 1
$execute store result score #coord_z value run data get storage phan_dream_$(level_id):pr_podium teleport_location[2] 1

#night vision
$execute store result score #test value run data get storage phan_dream_$(level_id):pr_podium night_vision 1
tag @s remove podiumNightVision
execute if score #test value matches 1 run tag @s add podiumNightVision