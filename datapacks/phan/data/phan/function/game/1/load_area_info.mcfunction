#honestly this function is just redundant now.
#the default variables here are never used and score attack logic is run per-player now

#fallback variables, intended to be overridden by the level we're going to
scoreboard players set #pearlsNeeded value 12
scoreboard players set #timeRemaining value 1219
#scoreboard players set @a[tag=playing] pPearlsNeeded 12
#scoreboard players set @a[tag=playing] pTimeRemaining 1219

function phan:levels/_index_area_data