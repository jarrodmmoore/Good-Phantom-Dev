#$(gp_id) is the id of the cup we're editing

#use number of rounds as the index for what we're about to write
$execute store result score #math value run data get storage phan_grand_prix_$(gp_id):metadata rounds
scoreboard players add #math value 1
execute store result storage phan:gp_index index int 1 run scoreboard players get #math value

#i'm gonna stop players from adding more at 99
execute if score #math value matches 100.. run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8
#=====

#do it
function phan:phantom_racer/grand_prix/add_track_to_storage_go with storage phan:gp_index

#increment round count by 1 and store it again
$execute store result storage phan_grand_prix_$(gp_id):metadata rounds int 1 run scoreboard players get #math value

#feedback sound
playsound block.note_block.chime master @a ~ ~ ~ 1 1.25

#particle
execute as @e[type=text_display,tag=tvSubtitle6,distance=..10] at @s run particle dust{color:[0,1,0],scale:0.75f} ~ ~ ~ 0.1 0.0 0.3 1 15