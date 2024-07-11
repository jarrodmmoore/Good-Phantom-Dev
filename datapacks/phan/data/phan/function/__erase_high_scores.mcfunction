#erase highscores
execute as @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..5}] run function phan:erase_level_scores
scoreboard players set #scoresRecorded value 0