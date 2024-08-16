#high difficulty bots likely to keep using held item
scoreboard players set #random value 1
execute if score @s botSkill matches 1 store result score #random value run random value 1..16
execute if score @s botSkill matches 2 store result score #random value run random value 1..13
execute if score @s botSkill matches 3 store result score #random value run random value 1..10
execute if score @s botSkill matches 4 store result score #random value run random value 1..8
execute if score @s botSkill matches 5.. store result score #random value run random value 1..7

#high level bots will put item away if enderman did global sound cue and is about to strike
scoreboard players operation #checkID value = @s playerID
execute if score @s botSkill matches 4 in overworld as @e[type=marker,tag=endermanController,x=198,y=-6,z=118,distance=..1,scores={age=30..99}] unless score @s playerID = #checkID value run scoreboard players add #random value 4
execute if score @s botSkill matches 5.. in overworld as @e[type=marker,tag=endermanController,x=198,y=-6,z=118,distance=..1,scores={age=16..99}] unless score @s playerID = #checkID value run scoreboard players set #random value 99

#we can be forced to keep using with a tag
execute if entity @s[tag=botUseItemSoon] run scoreboard players set #random value 1

#5 or lower means keep using held item
execute if score #random value matches ..5 run return 1

#6 or higher means don't care
return 0