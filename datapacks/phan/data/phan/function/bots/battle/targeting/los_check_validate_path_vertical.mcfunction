#height cannot increase by more than 1 meter between steps of the parent raycast.
#if it does, then the bot won't be able to reach the target by walking because the terrain is too steep

#find height
scoreboard players set #height value -1
execute unless block ~ ~ ~ #phan:not_solid_not_water run function phan:bots/battle/targeting/los_check_validate_path_vertical_recursion
execute if block ~ ~ ~ #phan:not_solid_not_water run scoreboard players set #height value 0
execute if block ~ ~ ~ #phan:not_solid_not_water run function phan:bots/battle/targeting/los_check_validate_path_vertical_downward_recursion

#this function will break if there's a drop-off followed by an overhang somewhere, but ah well

#previous - current = slope
scoreboard players operation #test value = #heightPrev value
scoreboard players operation #test value -= #height value
#save previous value
scoreboard players operation #heightPrev value = #height value

#slope is 2 or higher? that's no good
execute if score #test value matches 2.. run return 0

#otherwise ok
return 1