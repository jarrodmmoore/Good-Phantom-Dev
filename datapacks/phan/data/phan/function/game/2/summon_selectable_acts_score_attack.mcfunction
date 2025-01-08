#spawn exactly 3 levels.

#i can't be bothered to make score attack mode support a dynamic number of levels.
#changing the parallel multiplayer code would probably be a nightmare!
#it's been over a year since i worked on it, and i don't fully recall what crimes i committed in the code to make that work.

#i'll also be very surprised if anyone ever makes a custom dream that supports score attack.

#score attack mode when played at a high level is super fun and sick to watch and i will die on that hill
#...but realistically, 95% of players will never invest enough in the mode to really understand it
#i guess this kind of arcade-like game design died off for a reason ;(

#or maybe minecraft java players are just the wrong audience for this?
#probably a bit of both.

scoreboard players set #math2 value 1
data modify storage phan:level_index act set value 1
execute if score #desiredGamemode value matches 1 run data modify storage phan:level_index block set value yellow_concrete
execute if score #desiredGamemode value matches 2 run data modify storage phan:level_index block set value red_concrete
#3-act pattern (left to right)
execute positioned 204 -22 112 run function phan:game/2/summon_act_score_attack with storage phan:level_index
execute positioned 204 -22 117 run function phan:game/2/summon_act_score_attack with storage phan:level_index
execute positioned 204 -22 122 run function phan:game/2/summon_act_score_attack with storage phan:level_index

#let us animate the previews smoothly?
execute as @e[type=item_display,tag=actPreviewImage] run data merge entity @s {teleport_duration:5,billboard:"center",interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}