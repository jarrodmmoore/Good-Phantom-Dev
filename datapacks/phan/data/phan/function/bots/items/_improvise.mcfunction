#if we're on input cooldown, kick out and try again in a few ticks
execute if entity @s[scores={inputCooldown=1..,botSkill=3}] run return run execute store result score @s botItemThinkTime run random value 3..8
execute if entity @s[scores={inputCooldown=1..,botSkill=4}] run return run execute store result score @s botItemThinkTime run random value 1..4
execute if entity @s[scores={inputCooldown=1..,botSkill=5..}] run return run execute store result score @s[scores={botSkill=5}] botItemThinkTime run random value 1..2
#bots with skill level 6 can spam items with tick-perfect timing. scary!
#=====

#run this function again in a random amount of time depending on skill level
execute if score @s botSkill matches ..1 store result score @s botItemThinkTime run random value 20..50
execute if score @s botSkill matches 2 store result score @s botItemThinkTime run random value 13..30
execute if score @s botSkill matches 3 store result score @s botItemThinkTime run random value 11..20
execute if score @s botSkill matches 4 store result score @s botItemThinkTime run random value 7..14
execute if score @s botSkill matches 5 store result score @s botItemThinkTime run random value 5..11
execute if score @s botSkill matches 6.. store result score @s botItemThinkTime run random value 3..8

#low skill bots on input cooldown get kicked out w/ their think time set to the random values above
execute if entity @s[scores={inputCooldown=1..,botSkill=..2}] run return 0
#=====

#-------------
#DEBUG
#force bot inventory for testing
#function phan:bots/debug_override_inventory
#-------------

#enderman thief active? determine if it's a danger to us
scoreboard players set #botFearsEnderman value 0
execute if score @s botSkill matches 2.. if score #activeEnderman value matches 1.. run function phan:bots/items/check_if_endermen_dangerous
scoreboard players operation @s botFearsEnderman = #botFearsEnderman value

#anvil about to hit us? higher level bots should react ASAP
execute if score @s botSkill matches 4.. if entity @e[tag=anvilEntity,type=armor_stand,distance=..8] if function phan:bots/items/check_if_anvil_dangerous run function phan:bots/items/try_reacting_to_anvil

#lost momentum while flying? higher level bots should react ASAP
execute if score @s[tag=botFlightPanic] botSkill matches 4.. run function phan:bots/items/try_recovering_from_flight_problem

#already holding an item? chance we'll stick to using that same item instead of switching around
execute if score @s botHoldingItem matches 1.. if function phan:bots/items/consider_using_held_item run return run function phan:bots/items/try_using_held_item_again

#=====

#take inventory on what items we have

#item types:
#-projectile
#-speed up (use at almost any time)
#-trap
#-global
#-defense

#start with nothing viable
execute in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] remove improvViable

#make things viable depending on what items we have

#projectiles (general) -- 1..4
scoreboard players set #test value 1
execute if score @s botHasItem1 matches ..0 if score @s botHasItem2 matches ..0 if score @s botHasItem3 matches ..0 run scoreboard players set #test value 0
execute if score #test value matches 1 in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..4}] add improvViable

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
#firework -- 12
execute if score @s botHasItem17 matches 1.. run tag 00000000-0000-0328-0000-00000000000c add improvViable

#traps (general) -- 13..15
scoreboard players set #test value 1
execute if score @s botHasItem13 matches ..0 if score @s botHasItem18 matches ..0 run scoreboard players set #test value 0
execute if score #test value matches 1 in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=13..15}] add improvViable

#defense (individual)
#sonic blast -- 16
execute if score @s botHasItem12 matches 1.. run tag 00000000-0000-0328-0000-000000000010 add improvViable
#shield -- 17..18
execute if score @s botHasItem19 matches 1.. in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=17..18}] add improvViable

#global (general) -- 19
scoreboard players set #test value 1
execute if score @s botHasItem9 matches ..0 if score @s botHasItem10 matches ..0 if score @s botHasItem11 matches ..0 if score @s botHasItem16 matches ..0 run scoreboard players set #test value 0
execute if score #test value matches 1 run tag 00000000-0000-0328-0000-000000000013 add improvViable

#chance of doing nothing (high skill bots less likely to do this)
execute if score @s botSkill matches ..1 in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=20..27}] add improvViable
execute if score @s botSkill matches 2 in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=21..27}] add improvViable
execute if score @s botSkill matches 3 in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=22..27}] add improvViable
execute if score @s botSkill matches 4 in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=23..27}] add improvViable
execute if score @s botSkill matches 5 in overworld run tag @e[tag=randomize,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=24..27}] add improvViable
execute if score @s botSkill matches 6.. in overworld run tag 00000000-0000-0328-0000-00000000001b add improvViable

#=====
#pick something at random
scoreboard players set #improvPick value 99
execute in overworld run scoreboard players operation #improvPick value = @e[limit=1,sort=random,tag=improvViable,type=armor_stand,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] r

execute if score #improvPick value matches 1..4 run return run function phan:bots/items/pick_projectile
execute if score #improvPick value matches 5 run return run function phan:bots/items/4_energy_potion/think
execute if score #improvPick value matches 6 run return run function phan:bots/items/5_swiftness_potion/think
execute if score #improvPick value matches 7 run return run function phan:bots/items/6_super_jump/think
execute if score #improvPick value matches 8 run return run function phan:bots/items/7_speed_pad/think
execute if score #improvPick value matches 9 run return run function phan:bots/items/8_super_speed_pad/think
execute if score #improvPick value matches 10 run return run function phan:bots/items/14_warp/think
execute if score #improvPick value matches 11 run return run function phan:bots/items/15_ender_pearl/think
execute if score #improvPick value matches 12 run return run function phan:bots/items/17_firework_rocket/think
execute if score #improvPick value matches 13..15 run return run function phan:bots/items/pick_trap
execute if score #improvPick value matches 16 run return run function phan:bots/items/12_sonic_blast/think
execute if score #improvPick value matches 17..18 run return run function phan:bots/items/19_shield/think
execute if score #improvPick value matches 19 run return run function phan:bots/items/pick_global
execute if score #improvPick value matches 20.. run scoreboard players set @s botHoldingItem 0