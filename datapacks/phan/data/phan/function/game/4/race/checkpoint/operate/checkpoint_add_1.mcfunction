#next checkpoint!
scoreboard players add @s check 1
#for advancement: count how many checkpoints we've hit without touching the ground
execute if score @s airTime matches 2.. run scoreboard players add @s airCheckpoints 1
execute if score @s airCheckpoints > #vCheckPoints value run advancement grant @s only phan:portal_race/the_floor_is_lava

#bot needs to update controller
tag @s[tag=ai] add hasDataToSend