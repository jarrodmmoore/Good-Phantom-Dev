#no rubberband by default
scoreboard players set @s botRubberbanding 0

#we need to know what position the best ranked player is
execute if score #foundBestHuman value matches 2147483647 as @a[tag=doneWithIntro,gamemode=adventure,scores={racePosDisplay=1..}] run function phan:bots/rubber_band/find_human_best_position

#still no human found? exit
execute if score #foundBestHuman value matches 2147483647 run return 0
#=====

#are we ahead of the best ranked player? slow down slightly
execute if score @s racePosDisplay < #foundBestHuman value run scoreboard players set @s botRubberbanding -1

#are we ahead of the rival? slow down slightly
execute if score @s racePosDisplay < #botRivalPosition value run scoreboard players set @s botRubberbanding -1