#random chance
execute store result score #random value run random value 2..71

#more likely to give up at higher skill
scoreboard players operation #random value -= @s botSkill

#very high chance if facing a wall
execute rotated ~ 0 positioned ~ ~1.4 ~ unless block ^ ^ ^1 #phan:not_solid run scoreboard players remove #random value 35

#give up if random 1 or lower
execute if score #random value matches ..1 run scoreboard players set @s botTargetID 0