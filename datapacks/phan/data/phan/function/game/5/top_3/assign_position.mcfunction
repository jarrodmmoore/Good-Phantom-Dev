#players and bots have different methods of doing stuff
#(these functions should both spawn an aec)
execute if entity @s[type=player] run function phan:game/5/top_3/assign_position_player
execute if entity @s[tag=botController] run function phan:game/5/top_3/assign_position_bot

#placement score
$scoreboard players set @e[tag=setMe,type=area_effect_cloud,distance=..1] editArg1 $(position)

#save points on aec as well
scoreboard players operation @e[tag=setMe,type=area_effect_cloud,distance=..1] versusPoints = @s versusPoints

#clean up tag
tag @e[tag=setMe,type=area_effect_cloud,distance=..1] remove setMe


#don't rank us again!
tag @s add podiumRanked