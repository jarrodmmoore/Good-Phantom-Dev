#(this is some lame s*** right here)


#vanilla /spectate is very broken, so we're doing a bunch of legwork here to catch any problems.

#what problems are we trying to catch?
# 1) spectate breaks if the target moves more than 40ish blocks in a single tick
# 2) spectate breaks if the target moves into an unloaded chunk
#   (minecraft's chunk loading algorithm still thinks we're at the location where we initially spectated the target, so this happens a LOT)
# 3) initiating a /spectate when too far away from the target often causes an issue i like to call "schrödinger's spectator"

#we fix these problems by "bucking" the spectator, which involves
# 1) quickly switching the spec from spectator mode -> adventure mode -> spectator mode (un-spectates, makes minecraft stop freaking out)
# 2) teleporting the spec to the target again so the /spectate command will pick them up without issue on the next few ticks


#edit: i'm from the future (2025) and it seems like mojang has fixed most of these issues. cool! <3
#i'm leaving this code active just in case something goes wrong, though.
#i could easily see some fussy modified server or client having problems with /spectate. better safe than sorry...


scoreboard players set #spectator_buck value 0

#if the player moves more than 30 blocks in x, y, or z axis in the span of a few ticks, re-spec them
scoreboard players add @s spectator_x 0
scoreboard players add @s spectator_y 0
scoreboard players add @s spectator_z 0
scoreboard players operation #compare_x value = #spectator_current_x value
scoreboard players operation #compare_x value -= @s spectator_x
scoreboard players operation #compare_y value = #spectator_current_y value
scoreboard players operation #compare_y value -= @s spectator_y
scoreboard players operation #compare_z value = #spectator_current_z value
scoreboard players operation #compare_z value -= @s spectator_z
execute unless score #compare_x value matches -30..30 run scoreboard players set #spectator_buck value 1
execute unless score #compare_y value matches -30..30 run scoreboard players set #spectator_buck value 1
execute unless score #compare_z value matches -30..30 run scoreboard players set #spectator_buck value 1

#AND... if the player moves more than 100 blocks away from the initial spec location, re-spec them
scoreboard players add @s spectator_xinit 0
scoreboard players add @s spectator_yinit 0
scoreboard players add @s spectator_zinit 0
scoreboard players operation #compare_x value = #spectator_current_x value
scoreboard players operation #compare_x value -= @s spectator_xinit
#scoreboard players operation #compare_y value = #spectator_current_y value
#scoreboard players operation #compare_y value -= @s spectator_yinit
scoreboard players operation #compare_z value = #spectator_current_z value
scoreboard players operation #compare_z value -= @s spectator_zinit
execute unless score #compare_x value matches -100..100 run scoreboard players set #spectator_buck value 1
#execute unless score #compare_y value matches -100..100 run scoreboard players set #spectator_buck value 1
execute unless score #compare_z value matches -100..100 run scoreboard players set #spectator_buck value 1

#need to buck if we just switched from spectating a game object (like the camera)
execute if score #spectatingObject value matches 0 if score @s spectatingObject2 matches 1.. run scoreboard players set #spectator_buck value 1

#some nonsense
scoreboard players remove @s[scores={specDelayedBuck=1..}] specDelayedBuck 1
execute if score @s specDelayedBuck matches 1 run tag @s add spectatorBuck
#can force a buck using a tag
execute if entity @s[tag=spectatorBuck] unless score @s specDelayedBuck matches 1 run scoreboard players set @s specDelayedBuck 10
execute if entity @s[tag=spectatorBuck] run scoreboard players set #spectator_buck value 1

#do the buck
execute if score #spectator_buck value matches 1 at @a[tag=specTarget,limit=1] run function phan:game/1/spectator/spectator_buck

#now sync spectator's location and state with current location
scoreboard players operation @s spectator_x = #spectator_current_x value
scoreboard players operation @s spectator_y = #spectator_current_y value
scoreboard players operation @s spectator_z = #spectator_current_z value
scoreboard players operation @s spectatingObject2 = #spectatingObject value