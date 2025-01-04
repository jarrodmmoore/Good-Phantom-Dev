#soft warning if map data is outdated
$execute store result score #mapVersionRead value run data get storage $(filename):dream_data map_data_version 1

#we did it!
scoreboard players set #success value 1