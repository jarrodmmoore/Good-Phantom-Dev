#get a cluster group
execute if score @s editArg1 matches ..0 run function phan:game/4/spawning/item_box_random_cluster_group

#get a unique ID
scoreboard players add #uniqieBoxID value 1
execute if score #uniqieBoxID value matches 0 run scoreboard players add #uniqieBoxID value 1
scoreboard players operation @s ringID = #uniqieBoxID value

#hitstun (i think this was a delay on picking up the box? i forget)
scoreboard players set @s hitstun 15

#clean up tag
tag @s remove setMe