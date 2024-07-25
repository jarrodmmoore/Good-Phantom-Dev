#if we're on input cooldown, kick and out try next tick
execute if entity @s[scores={inputCooldown=1..,botSkill=3}] run return run execute store result score @s botItemThinkTime run random value 3..8
execute if entity @s[scores={inputCooldown=1..,botSkill=4}] run return run execute store result score @s botItemThinkTime run random value 1..4
execute if entity @s[scores={inputCooldown=1..,botSkill=5..}] run return run scoreboard players set @s[scores={botSkill=5}] botItemThinkTime 1
#bots with skill level 6 can spam items with tick-perfect timing. scary!

#do again in a random amount of time depending on skill level
execute if score @s botSkill matches ..1 store result score @s botItemThinkTime run random value 13..30
execute if score @s botSkill matches 2 store result score @s botItemThinkTime run random value 11..20
execute if score @s botSkill matches 3 store result score @s botItemThinkTime run random value 9..17
execute if score @s botSkill matches 4 store result score @s botItemThinkTime run random value 7..14
execute if score @s botSkill matches 5 store result score @s botItemThinkTime run random value 5..11
execute if score @s botSkill matches 6.. store result score @s botItemThinkTime run random value 3..8

#low skill bots get kicked out with their think time set higher
execute if entity @s[scores={inputCooldown=1..,botSkill=..2}] run return 0

#=====

#take inventory on what items we have

#item types:
#-projectile
#-speed up (use at almost any time)
#-trap
#-global
#-defense

#start with nothing viable
tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] remove improvViable

#make things viable depending on what items we have

#projectiles (general) -- 1..4
scoreboard players set #test value 1
execute if score @s botHasItem1 matches ..0 if score @s botHasItem2 matches ..0 if score @s botHasItem3 matches ..0 run scoreboard players set #test value 0
execute if score #test value matches 1 run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..4}] add improvViable

#speed up (individual)
#energy potion -- 5
execute if score @s botHasItem4 matches 1.. run tag 00000000-0000-0328-0000-000000000005 add improvViable
#swiftness potion -- 6
execute if score @s botHasItem5 matches 1.. run tag 00000000-0000-0328-0000-000000000006 add improvViable
#super jump -- 7
execute if score @s botHasItem6 matches 1.. run tag 00000000-0000-0328-0000-000000000007 add improvViable
#speed pad -- 8
execute if score @s botHasItem7 matches 1.. run tag 00000000-0000-0328-0000-000000000008 add improvViable
#super speed pad -- 9
execute if score @s botHasItem8 matches 1.. run tag 00000000-0000-0328-0000-000000000009 add improvViable
#warp -- 10
execute if score @s botHasItem14 matches 1.. run tag 00000000-0000-0328-0000-00000000000a add improvViable
#ender pearl -- 11
execute if score @s botHasItem15 matches 1.. run tag 00000000-0000-0328-0000-00000000000b add improvViable

#traps (general) -- 12..14
scoreboard players set #test value 1
execute if score @s botHasItem13 matches ..0 if score @s botHasItem18 matches ..0 run scoreboard players set #test value 0
execute if score #test value matches 1 run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=12..14}] add improvViable

#defense (individual)
#sonic blast -- 15
execute if score @s botHasItem12 matches 1.. run tag 00000000-0000-0328-0000-00000000000f add improvViable
#shield -- 16..17
execute if score @s botHasItem19 matches 1.. run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=16..17}] add improvViable

#global (general) -- 18
scoreboard players set #test value 1
execute if score @s botHasItem9 matches ..0 if score @s botHasItem10 matches ..0 if score @s botHasItem11 matches ..0 if score @s botHasItem16 matches ..0 run scoreboard players set #test value 0
execute if score #test value matches 1 run tag 00000000-0000-0328-0000-000000000012 add improvViable

#chance of doing nothing (high skill bots less likely to do this)
execute if score @s botSkill matches ..1 run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=19..27}] add improvViable
execute if score @s botSkill matches 2 run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=20..27}] add improvViable
execute if score @s botSkill matches 3 run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=21..27}] add improvViable
execute if score @s botSkill matches 4 run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=23..27}] add improvViable
execute if score @s botSkill matches 5 run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=26..27}] add improvViable
execute if score @s botSkill matches 6.. run tag 00000000-0000-0328-0000-00000000001b add improvViable

#=====
#pick something at random
scoreboard players operation #improvPick value = @e[limit=1,sort=random,tag=improvViable,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] r

execute if score #improvPick value matches 1..4 run return run function phan:bots/items/pick_projectile
execute if score #improvPick value matches 5 run return run function phan:bots/items/4_energy_potion/think
execute if score #improvPick value matches 6 run return run function phan:bots/items/5_swiftness_potion/think
execute if score #improvPick value matches 7 run return run function phan:bots/items/6_super_jump/think
execute if score #improvPick value matches 8 run return run function phan:bots/items/7_speed_pad/think
execute if score #improvPick value matches 9 run return run function phan:bots/items/8_super_speed_pad/think
execute if score #improvPick value matches 10 run return run function phan:bots/items/14_warp/think
execute if score #improvPick value matches 11 run return run function phan:bots/items/15_ender_pearl/think
execute if score #improvPick value matches 12..14 run return run function phan:bots/items/pick_trap
execute if score #improvPick value matches 15 run return run function phan:bots/items/12_sonic_blast/think
execute if score #improvPick value matches 16..17 run return run function phan:bots/items/19_shield/think
execute if score #improvPick value matches 18 run return run function phan:bots/items/pick_global
execute if score #improvPick value matches 19.. run return run function phan:bots/items/hold_nothing