#publish the last position we were assigned while our entity was un-loaded as our finish position
scoreboard players operation @s finishPos = @s racePosDisplay
tag @s add finished

#there is a tiny 1-tick window where this could result in the wrong position being assigned to us
#but that's just a loss we'll have to accept

#best that we don't have huge gaps in the scoreboard if a bunch of the bots were un-loaded when the last player finished