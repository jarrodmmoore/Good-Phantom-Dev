#bots will start noticing the tnt after a few ticks
tag @s add botRecognizesTrap

#get a unique ID (for bot temporary target system)
scoreboard players add #uniqieBoxID value 1
execute if score #uniqieBoxID value matches 0 run scoreboard players add #uniqieBoxID value 1
scoreboard players operation @s ringID = #uniqieBoxID value