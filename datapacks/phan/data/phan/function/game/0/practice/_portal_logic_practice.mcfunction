#get target time for this act
scoreboard players operation #targetTimeTicks value = #targetTimeAct1 value
scoreboard players operation #targetTimeTicks value *= #20 value
scoreboard players set #portalInAct value 1

#loaded portal must check for players
scoreboard players operation #pearlsNeeded value = #practicePearlsNeeded value
execute as @e[type=marker,tag=portalCore,scores={area0SpawnA=1}] at @s run function phan:game/1/portal_core
#re-sync pearls needed for all players in this area
scoreboard players operation #practicePearlsNeeded value = #pearlsNeeded value