#lvl 1 bot doesn't know how to shoot at eyes
execute if score @s botSkill matches ..1 run return 0

#random chance we might just not
execute store result score #random value run random value 1..100
#lower chance if we're ahead of the rival bot
execute if score @s racePosDisplay < #botRivalPosition value run scoreboard players remove #random value 40
execute if score @s botSkill matches 2 if score #random value matches ..55 run return 0
execute if score @s botSkill matches 3 if score #random value matches ..40 run return 0
execute if score @s botSkill matches 4 if score #random value matches ..25 run return 0
execute if score @s botSkill matches 5 if score #random value matches ..10 run return 0
execute if score @s botSkill matches 6.. if score #random value matches ..5 run return 0

#deny if we don't have energy
execute if score @s energy matches ..1 run return 0

#deny if we're on cooldown for projectile
execute if score @s inputCooldownC matches 1.. run return 0

#=====

#look at one of our viable targets and shoot at it
scoreboard players set #test value 0
execute as @e[tag=viableTarget,type=item_display,distance=..60,limit=1,sort=random] run function phan:bots/battle/targeting/consider_shooting_at_ever_eye_pick_me
execute if entity 0001e453-0000-0000-0000-000000000007 facing entity 0001e453-0000-0000-0000-000000000007 eyes run function phan:bots/items/b1_heavy_projectile/use
execute unless score #test value matches 0 run scoreboard players operation @s botIgnoreEyeID = #test value

#delete temp target
kill 0001e453-0000-0000-0000-000000000007