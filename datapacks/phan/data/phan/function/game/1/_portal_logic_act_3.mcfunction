#get target time for this act
scoreboard players operation #targetTimeTicks value = #targetTimeAct3 value
scoreboard players operation #targetTimeTicks value *= #20 value
scoreboard players set #portalInAct value 3

#loaded portal must check for players
scoreboard players operation #pearlsNeeded value = @s pPearlsNeeded
execute as @e[type=marker,tag=portalCore,scores={area0SpawnC=1}] at @s run function phan:game/1/portal_core
#re-sync pearls needed for all players in this area
scoreboard players operation @a[tag=playing,scores={pCurrentArea=3}] pPearlsNeeded = #pearlsNeeded value