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

#are we behind the best ranked player and 5sec behind 1st? speed up slightly
execute if score @s racePosDisplay > #foundBestHuman value if score @s timeBehind1st matches 100.. run scoreboard players set @s botRubberbanding 1

#is there a human near us? no speeding up allowed
execute if score @s botRubberbanding matches 1.. positioned ~-9 ~-9 ~-9 if entity @a[tag=playing,gamemode=adventure,dx=18,dy=18,dz=18] if score @s timeBehind1st matches ..159 run scoreboard players set @s botRubberbanding 0

#are we ahead of the rival? slow down slightly
execute if score @s racePosDisplay < #botRivalPosition value run scoreboard players set @s botRubberbanding -1