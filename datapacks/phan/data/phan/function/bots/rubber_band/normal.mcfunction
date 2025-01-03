#no rubberband by default
scoreboard players set @s botRubberbanding 0

#battle mode: we are always slower than the player
execute if score #vGameType value matches 2 run return run scoreboard players set @s botRubberbanding -1
#=====

#we need to know what position the best ranked player is
execute if score #foundBestHuman value matches 2147483647 as @a[tag=doneWithIntro,gamemode=adventure,scores={racePosDisplay=1..}] run function phan:bots/rubber_band/find_human_best_position

#note:
#foundBestHuman value matches 2147483647
#means no human was found

#are we ahead of the best ranked player? slow down slightly
execute if score @s racePosDisplay < #foundBestHuman value unless score #foundBestHuman value matches 2147483647 run scoreboard players set @s botRubberbanding -1

#are we ahead of the rival? slow down slightly
execute if score @s racePosDisplay < #botRivalPosition value run scoreboard players set @s botRubberbanding -1