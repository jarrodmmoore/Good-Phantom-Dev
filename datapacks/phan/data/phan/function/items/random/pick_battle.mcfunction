#===== CONSTRAINTS

#never get enderman if it's on global cooldown
execute if score #cooldownEnderman value matches 1.. run tag 00000000-0000-0328-0000-000000000015 add tempItemBan

#never get squid if it's on global cooldown
execute if score #cooldownSquid value matches 1.. run tag 00000000-0000-0328-0000-000000000016 add tempItemBan

#can't get certain items again if they're already in our inventory
execute if score #hasSonicBlast value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=9..11}] add tempItemBan
execute if score #hasShield value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=9..11}] add tempItemBan
execute if score #hasSwiftness value matches 1.. run tag 00000000-0000-0328-0000-00000000000c add tempItemBan
execute if score #hasEnderPearl value matches 1.. run tag 00000000-0000-0328-0000-00000000000d add tempItemBan
execute if score #hasSuperJump value matches 1.. run tag 00000000-0000-0328-0000-00000000000e add tempItemBan
execute if score #hasEnergyPotion value matches 1.. run tag 00000000-0000-0328-0000-00000000000f add tempItemBan
execute if score #hasFirework value matches 1.. run tag 00000000-0000-0328-0000-000000000010 add tempItemBan
execute if score #hasWarp value matches 1.. run tag 00000000-0000-0328-0000-000000000011 add tempItemBan
execute if score #hasEndermanThief value matches 1.. run tag 00000000-0000-0328-0000-000000000015 add tempItemBan
execute if score #hasBlindingSquid value matches 1.. run tag 00000000-0000-0328-0000-000000000016 add tempItemBan

#calculate what percentile rank we are (~0 = 1st, 100 = last)
scoreboard players operation #test2 value = @s racePosDisplay
scoreboard players operation #test2 value *= #100 value
scoreboard players operation #test2 value /= #hudPeakPlayers value

#don't get homing rocket twice in a row
execute if score @s lastItemPicked matches 2 run tag 00000000-0000-0328-0000-000000000005 add tempItemBan

#don't get homing rocket if we're in top 25%
execute if score #test2 value matches ..25 run tag 00000000-0000-0328-0000-000000000005 add tempItemBan

#don't get an energy potion if we're near full energy
execute if score @s energy matches 10.. run tag 00000000-0000-0328-0000-00000000000f add tempItemBan

#cooldown on rolling speed items
execute if score @s picksSinceSpeed matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=12..17}] add tempItemBan

#cooldown on rolling utility items
execute if score @s picksSinceUtility matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=9..11}] add tempItemBan

#mandate an offense item if we haven't gotten one in a while
execute if score @s picksSinceOffense matches 3.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=10..22}] add tempItemBan

#cooldown on rolling global items
execute if score @s picksSinceGlobal matches ..3 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=21..22}] add tempItemBan

#cooldown on rolling trap items
execute if score @s picksSinceTrap matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=18..20}] add tempItemBan

#can't get mines if there are too many on the field at once
execute if score #givenMines value matches 12.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=18..20}] add tempItemBan

#can't get a shield from boxes if we're in the top 50% of players
execute if score #test2 value matches ..50 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=10..11}] add tempItemBan

#cut down on projectile spam
execute if score #givenRockets value matches 12.. run tag 00000000-0000-0328-0000-000000000001 add tempItemBan
execute if score #givenRockets value matches 14.. run tag 00000000-0000-0328-0000-000000000006 add tempItemBan

#=====

#red rocket -- 1..4
#homing rocket -- 5
#tnt -- 6..8

#sonic blast -- 9
#shield -- 10..11

#swiftness potion -- 12
#ender pearl -- 13
#super jump -- 14
#energy potion -- 15
#firework rocket -- 16
#warp -- 17

#mine -- 18..19
#trapped chest -- 20

#enderman thief -- 21
#blinding squid -- 22

#...note that lightning strike and anvil of justice don't drop in this mode.
#lightning is too disruptive.
#anvil makes being in 1st a death sentence. obvious strategy would be to hang out in 2nd until the very end. losing a higher number of eyes on death as you get close to the eye requirement is risk enough in my opinion.

#===== ROLL THE DICE

#pick random number
scoreboard players set #randomRoll value 0
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=!tempItemBan,type=armor_stand,scores={r=1..22}] r

#swiftness potions aren't super useful in this mode, so we'll split its randomization slot with the much more desirable energy potion.
#hear ye:
#we will either get a swiftness potion or energy potion if we roll a 12
#swiftness -- 1..2
#energy potion - 3..5
execute store result score #randomRoll2 value run random value 1..5
#in the bottom 20%? always get energy potion from a 12 roll
execute if score #test2 value matches 80.. run scoreboard players set #randomRoll2 value 5
#in the top 50%? can't get an energy potion from a 12 roll
execute if score #test2 value matches ..50 run scoreboard players set #randomRoll2 value 1
#can't get an energy potion from a 12 roll if we've already got one OR if we're near full energy
execute if score #hasEnergyPotion value matches 1.. run scoreboard players set #randomRoll2 value 1
execute if score @s energy matches 10.. run scoreboard players set #randomRoll2 value 1

#fallback
execute if score #randomRoll value matches 0 run function phan:items/give/red_rocket {count:1}

#get the item
execute if score #randomRoll value matches 1..4 run function phan:items/give/red_rocket {count:1}
execute if score #randomRoll value matches 5 run function phan:items/give/homing_rocket {count:1}
execute if score #randomRoll value matches 6..8 run function phan:items/give/throwable_tnt {count:1}

execute if score #randomRoll value matches 9 run function phan:items/give/sonic_blast {count:1}
execute if score #randomRoll value matches 10..11 run function phan:items/give/shield {count:1}

execute if score #randomRoll value matches 12 if score #randomRoll2 value matches ..2 run function phan:items/give/swiftness_potion {count:1}
execute if score #randomRoll value matches 12 if score #randomRoll2 value matches 3.. run function phan:items/give/energy_potion {count:1}
execute if score #randomRoll value matches 13 run function phan:items/give/ender_pearl {count:1}
execute if score #randomRoll value matches 14 run function phan:items/give/super_jump {count:1}
execute if score #randomRoll value matches 15 run function phan:items/give/energy_potion {count:1}
execute if score #randomRoll value matches 16 run function phan:items/give/firework_rocket {count:1}
execute if score #randomRoll value matches 17 run function phan:items/give/warp {count:1}

execute if score #randomRoll value matches 18..19 run function phan:items/give/mine {count:1}
execute if score #randomRoll value matches 20 run function phan:items/give/trapped_chest {count:1}

execute if score #randomRoll value matches 21 run function phan:items/give/enderman_thief {count:1}
execute if score #randomRoll value matches 22 run function phan:items/give/blinding_squid {count:1}

#=====