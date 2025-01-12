#erase high scores
execute as @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={levelUID=-2147483648..2147483647}] run function phan:high_score/erase_level_scores
scoreboard players set #scoresRecorded value 0

#erase trophies
scoreboard players set #dream1Trophy value 0
scoreboard players set #dream2Trophy value 0
scoreboard players set #dream3Trophy value 0
scoreboard players set #dream4Trophy value 0
scoreboard players set #dream5Trophy value 0