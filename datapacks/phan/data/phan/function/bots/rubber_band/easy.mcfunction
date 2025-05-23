#no rubberband by default
scoreboard players set @s botRubberbanding 0

#battle mode: we are always slower than the player
execute if score #vGameType value matches 2 run return run scoreboard players set @s botRubberbanding -2
#=====

#we need to know what position the best ranked player is
execute if score #foundBestHuman value matches 2147483647 run scoreboard players operation #foundBestHuman value < @a[tag=doneWithIntro,gamemode=adventure,scores={racePosDisplay=1..}] racePosDisplay

#note:
#foundBestHuman value matches 2147483647
#means no human was found

#are we ahead of the best ranked player? slow down
execute if score @s racePosDisplay < #foundBestHuman value unless score #foundBestHuman value matches 2147483647 run scoreboard players set @s botRubberbanding -2

#are we ahead of the rival? slow down
execute if score @s racePosDisplay < #botRivalPosition value run scoreboard players set @s botRubberbanding -2

#is there a human near us? also slow down
execute if score @s botRubberbanding matches ..-1 positioned ~-9 ~-9 ~-9 if entity @a[tag=playing,gamemode=adventure,dx=18,dy=18,dz=18] run scoreboard players set @s botRubberbanding -1