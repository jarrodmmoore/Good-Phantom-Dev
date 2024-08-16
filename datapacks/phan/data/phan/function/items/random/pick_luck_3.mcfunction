#===== CONSTRAINTS

#1 in 3 chance of not allowing blinding squid at all
execute store result score #randomRoll2 value run random value 1..2
execute if score #randomRoll2 value matches 3.. run tag 00000000-0000-0328-0000-000000000011 add tempItemBan

#never get enderman if it's on global cooldown
execute if score #cooldownEnderman value matches 1.. run tag 00000000-0000-0328-0000-000000000010 add tempItemBan

#never get squid if it's on global cooldown
execute if score #cooldownSquid value matches 1.. run tag 00000000-0000-0328-0000-000000000011 add tempItemBan

#can't get certain items again if they're already in our inventory
execute if score #hasSonicBlast value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=6..7}] add tempItemBan
execute if score #hasShield value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=6..7}] add tempItemBan
execute if score #hasSwiftness value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=10..11}] add tempItemBan
execute if score #hasEnderPearl value matches 1.. run tag 00000000-0000-0328-0000-00000000000c add tempItemBan
execute if score #hasSuperJump value matches 1.. run tag 00000000-0000-0328-0000-00000000000d add tempItemBan
execute if score #hasEnergyPotion value matches 1.. run tag 00000000-0000-0328-0000-00000000000e add tempItemBan
execute if score #hasFirework value matches 1.. run tag 00000000-0000-0328-0000-00000000000e add tempItemBan
execute if score #hasEndermanThief value matches 1.. run tag 00000000-0000-0328-0000-000000000010 add tempItemBan
execute if score #hasBlindingSquid value matches 1.. run tag 00000000-0000-0328-0000-000000000011 add tempItemBan

#don't get an energy potion if we're near full energy
execute if score @s energy matches 12.. run tag 00000000-0000-0328-0000-00000000000e add tempItemBan
#this also affects firework since they share a #randomRoll number. not fully intentional, but
#if player has this much unused boost, they're probably too sensory overwhelmed to use either of these items properly anyway
#:shrug:

#don't get same speed item twice in a row
#speed pad
execute if score @s lastItemPicked matches 7..8 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=8..9}] add tempItemBan
#swiftness potion
execute if score @s lastItemPicked matches 5 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=10..11}] add tempItemBan
#ender pearl
execute if score @s lastItemPicked matches 15 run tag 00000000-0000-0328-0000-00000000000c add tempItemBan
#super jump
execute if score @s lastItemPicked matches 6 run tag 00000000-0000-0328-0000-00000000000d add tempItemBan
#energy potion
execute if score @s lastItemPicked matches 4 run tag 00000000-0000-0328-0000-00000000000e add tempItemBan

#don't get a speed item if we recently got a really powerful one
execute if score @s picksSinceBigSpeed matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=8..14}] add tempItemBan

#cooldown on rolling utility items
execute if score @s picksSinceUtility matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=8..9}] add tempItemBan

#cooldown on rolling offense items
execute if score @s picksSinceOffense matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..5}] add tempItemBan

#cooldown on rolling global items
execute if score @s picksSinceGlobal matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=16..17}] add tempItemBan

#cooldown on rolling trap items
execute if score @s picksSinceTrap matches ..2 run tag 00000000-0000-0328-0000-00000000000f add tempItemBan

#can't get speed pad if there are too many on the field at once
execute if score #givenPads value matches 6.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=8..9}] add tempItemBan

#can't get mines if there are too many on the field at once
execute if score #givenMines value matches 12.. run tag 00000000-0000-0328-0000-00000000000f add tempItemBan

#cut down on projectile spam from mid to back
execute if score #givenRockets value matches 10.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=2..4}] add tempItemBan
execute if score #givenRockets value matches 15.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..5}] add tempItemBan

#=====

#rival bot hackery
execute if score #botCount value matches 2.. if entity @s[tag=ai,tag=botRival,scores={botSkill=4..}] run function phan:items/random/rival_hackery_luck_3

#=====

#red rocket (2x) -- 1..2
#homing rocket -- 3
#tnt -- 4..5

#sonic blast -- 6
#shield -- 7

#speed pad -- 8..9
#swiftness potion -- 10..11
#ender pearl -- 12
#super jump -- 13
#energy potion/firework rocket -- 14

#mine -- 15

#enderman thief -- 16
#blinding squid -- 17

#===== ROLL THE DICE

#pick random number
scoreboard players set #randomRoll value 0
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=!tempItemBan,type=armor_stand,scores={r=1..17}] r

#will either get a firework or energy potion if we get 13
execute store result score #randomRollB value run random value 1..4

#fallback
execute if score #randomRoll value matches 0 run function phan:items/give/swiftness_potion {count:1}

#get the item
execute if score #randomRoll value matches 1..2 run function phan:items/give/red_rocket {count:2}
execute if score #randomRoll value matches 3 run function phan:items/give/homing_rocket {count:1}
execute if score #randomRoll value matches 4..5 run function phan:items/give/throwable_tnt {count:1}

execute if score #randomRoll value matches 6 run function phan:items/give/sonic_blast {count:1}
execute if score #randomRoll value matches 7 run function phan:items/give/shield {count:1}

execute if score #randomRoll value matches 8..9 run function phan:items/give/speed_pad {count:1}
execute if score #randomRoll value matches 10..11 run function phan:items/give/swiftness_potion {count:1}
execute if score #randomRoll value matches 12 run function phan:items/give/ender_pearl {count:1}
execute if score #randomRoll value matches 13 run function phan:items/give/super_jump {count:1}
execute if score #randomRoll value matches 14 if score #randomRollB value matches 1..3 run function phan:items/give/energy_potion {count:1}
execute if score #randomRoll value matches 14 if score #randomRollB value matches 4 run function phan:items/give/firework_rocket {count:1}

execute if score #randomRoll value matches 15 run function phan:items/give/mine {count:1}

execute if score #randomRoll value matches 16 run function phan:items/give/enderman_thief {count:1}
execute if score #randomRoll value matches 17 run function phan:items/give/blinding_squid {count:1}

#=====