#chunks must be loaded! if not, try again later
scoreboard players set #test value 0
execute if loaded ~-5 ~ ~-5 if loaded ~-5 ~ ~5 if loaded ~5 ~ ~-5 if loaded ~5 ~ ~5 run scoreboard players set #test value 1
execute if score #test value matches 0 run tag @s add spawn_failed
execute if score #test value matches 0 run return 0

#make sure the portal is empty
fill ~-5 ~ ~-5 ~5 ~ ~5 barrier replace end_portal
fill ~-5 ~1 ~-5 ~5 ~1 ~5 structure_void replace orange_carpet

#using these to track cooldowns. apologies for the poor readability that will result from this
scoreboard players set @s editArg1 0
scoreboard players set @s editArg2 0
scoreboard players set @s enderEyes 0