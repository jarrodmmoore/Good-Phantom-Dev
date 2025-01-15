#count how many playable acts we have
scoreboard players set #math value 0
$execute store result score #test1 value run data get storage phan_dream_$(level_id):pr_act_1 playable
execute if score #test1 value matches 1.. run scoreboard players add #math value 1
$execute store result score #test2 value run data get storage phan_dream_$(level_id):pr_act_2 playable
execute if score #test2 value matches 1.. run scoreboard players add #math value 1
$execute store result score #test3 value run data get storage phan_dream_$(level_id):pr_act_3 playable
execute if score #test3 value matches 1.. run scoreboard players add #math value 1
$execute store result score #test4 value run data get storage phan_dream_$(level_id):pr_act_4 playable
execute if score #test4 value matches 1.. run scoreboard players add #math value 1

#math2 is will keep track of what level we are considering spawning
scoreboard players set #math2 value 1

#skip over missing levels
function phan:game/2/skip_over_missing_acts

#spawn a level
execute store result storage phan:level_index act int 1 run scoreboard players get #math2 value
#4-act pattern (left to right)
execute if score #math value matches 4 if score #math2 value matches ..4 positioned 203 -22 111 run function phan:game/2/summon_act_portal_race with storage phan:level_index
execute if score #math value matches 4 if score #math2 value matches ..4 positioned 204 -22 115 run function phan:game/2/summon_act_portal_race with storage phan:level_index
execute if score #math value matches 4 if score #math2 value matches ..4 positioned 204 -22 119 run function phan:game/2/summon_act_portal_race with storage phan:level_index
execute if score #math value matches 4 if score #math2 value matches ..4 positioned 203 -22 123 run function phan:game/2/summon_act_portal_race with storage phan:level_index
#3-act pattern (left to right)
execute if score #math value matches 3 if score #math2 value matches ..4 positioned 204 -22 112 run function phan:game/2/summon_act_portal_race with storage phan:level_index
execute if score #math value matches 3 if score #math2 value matches ..4 positioned 204 -22 117 run function phan:game/2/summon_act_portal_race with storage phan:level_index
execute if score #math value matches 3 if score #math2 value matches ..4 positioned 204 -22 122 run function phan:game/2/summon_act_portal_race with storage phan:level_index
#2-act pattern (left, right)
execute if score #math value matches 2 if score #math2 value matches ..4 positioned 204 -22 115 run function phan:game/2/summon_act_portal_race with storage phan:level_index
execute if score #math value matches 2 if score #math2 value matches ..4 positioned 204 -22 119 run function phan:game/2/summon_act_portal_race with storage phan:level_index
#1-act pattern (center)
execute if score #math value matches 1 if score #math2 value matches ..4 positioned 204 -22 117 run function phan:game/2/summon_act_portal_race with storage phan:level_index

#let us animate the previews smoothly?
execute as @e[type=text_display,tag=actPreviewImage] run data merge entity @s {teleport_duration:5,billboard:"vertical",interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.1f,0f],scale:[0.75f,0.75f,0.75f]}}