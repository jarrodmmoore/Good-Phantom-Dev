#no rubberband by default
scoreboard players set @s botRubberbanding 0

#battle mode: we are always slower than the player
execute if score #vGameType value matches 2 run return run scoreboard players set @s botRubberbanding -3
#=====

#we need to know what position the worst ranked player is
execute if score #foundWorstHuman value matches 0 as @a[tag=doneWithIntro,gamemode=adventure,scores={racePosDisplay=1..}] run function phan:bots/rubber_band/find_human_worst_position

#note:
#foundWorstHuman value matches 0
#means no human was found

#are we ahead of the rival? slow down
execute if score @s racePosDisplay < #botRivalPosition value run scoreboard players set @s botRubberbanding -2

#are we ahead of the worst ranked player? let's slow down and let them catch up
execute if score @s racePosDisplay < #foundWorstHuman value unless score #foundWorstHuman value matches 0 run scoreboard players set @s botRubberbanding -3

#is there a human near us? slow down slightly
execute positioned ~-9 ~-9 ~-9 if entity @a[tag=playing,gamemode=adventure,dx=18,dy=18,dz=18] run scoreboard players set @s botRubberbanding -2