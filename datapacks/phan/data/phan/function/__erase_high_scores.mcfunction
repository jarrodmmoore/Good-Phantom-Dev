#erase highscores
execute as @e[tag=randomize,type=armor_stand,scores={r=1..5}] run function phan:erase_level_scores
scoreboard players set #scoresRecorded value 0