#respawn based on where we are
#not in practice course
execute if entity @s[tag=!practiceCourse] run tp @s 844 32 -1054 90 0
#in practice course
execute if entity @s[tag=practiceCourse,scores={currentLoad=..1}] run tp @s 880 2 -971 315 0
execute if entity @s[tag=practiceCourse,scores={currentLoad=2}] run tp @s 945 -5 -899 270 0
execute if entity @s[tag=practiceCourse,scores={currentLoad=3}] run tp @s 981 -10 -858 0 0
execute if entity @s[tag=practiceCourse,scores={currentLoad=4}] run tp @s 951 -3 -855 90 0
execute if entity @s[tag=practiceCourse,scores={currentLoad=5..}] run tp @s 850 -17 -901 180 0

#feedback
execute at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2

#reset trigger
scoreboard players reset @s respawn