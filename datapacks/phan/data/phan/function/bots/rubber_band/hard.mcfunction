#no rubberband by default
scoreboard players set @s botRubberbanding 0

#battle mode: no rubber band
execute if score #vGameType value matches 2 run return 0
#=====

#don't speed up in 1st, ever
execute if score @s racePosDisplay matches ..1 run return 0

#also don't speed up if within 2sec of 1st
execute if score @s timeBehind1st matches ..40 run return 0
#=====

#we need to know what position the best ranked player is
execute if score #foundBestHuman value matches 2147483647 run scoreboard players operation #foundBestHuman value < @a[tag=doneWithIntro,gamemode=adventure,scores={racePosDisplay=1..}] racePosDisplay

#note:
#foundBestHuman value matches 2147483647
#means no human was found

#are we behind the best ranked player? speed up slightly
execute if score @s racePosDisplay < #foundBestHuman value unless score #foundBestHuman value matches 2147483647 run scoreboard players set @s botRubberbanding 1

#are we really far behind 1st? speed up a bit more
execute if score @s timeBehind1st matches 180.. run scoreboard players set @s botRubberbanding 2

#are we ahead of the rival? no speeding up allowed
execute if score @s racePosDisplay < #botRivalPosition value run scoreboard players set @s botRubberbanding 0

#is there a human near us? no speeding up allowed
execute if score @s botRubberbanding matches 1.. positioned ~-9 ~-9 ~-9 if entity @a[tag=playing,gamemode=adventure,dx=18,dy=18,dz=18] run scoreboard players set @s botRubberbanding 0