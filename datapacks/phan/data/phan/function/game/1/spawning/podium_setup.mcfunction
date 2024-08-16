#chunks must be loaded! if not, try again later
scoreboard players set #test value 0
execute if loaded ~ ~ ~ if loaded ~4 ~ ~ if loaded ~ ~ ~4 if loaded ~4 ~ ~4 run scoreboard players set #test value 1
execute if score #test value matches 0 run tag @s add spawn_failed
execute if score #test value matches 0 run return 0

#make sure there's nothing here!
execute if score @s editArg2 matches 1 run fill ~ ~ ~ ~4 ~6 ~4 air
execute unless score @s editArg2 matches 1 run fill ~ ~ ~ ~3 ~6 ~3 air