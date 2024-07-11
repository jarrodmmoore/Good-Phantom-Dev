#===== CONSTRAINTS

#1 in 3 chance of not allowing blinding squid at all
execute store result score #randomRoll2 value run random value 1..2
execute if score #randomRoll2 value matches 3.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=16}] add tempItemBan

#never get enderman if it's on global cooldown
execute if score #cooldownEnderman value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=15}] add tempItemBan

#never get squid if it's on global cooldown
execute if score #cooldownSquid value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=16}] add tempItemBan

#can't get certain items again if they're already in our inventory
execute if score #hasSonicBlast value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=5..6}] add tempItemBan
execute if score #hasShield value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=5..6}] add tempItemBan
execute if score #hasSwiftness value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=9..10}] add tempItemBan
execute if score #hasEnderPearl value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=11}] add tempItemBan
execute if score #hasSuperJump value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=12}] add tempItemBan
execute if score #hasEnergyPotion value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=13}] add tempItemBan
execute if score #hasFirework value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=13}] add tempItemBan
execute if score #hasEndermanThief value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=15}] add tempItemBan
execute if score #hasBlindingSquid value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=16}] add tempItemBan

#don't get an energy potion if we're near full energy
execute if score @s energy matches 12.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=13}] add tempItemBan
#this also affects firework since they share a #randomRoll number. not fully intentional, but
#if player has this much unused boost, they're probably too sensory overwhelmed to use either of these items properly anyway
#:shrug:

#don't get same speed item twice in a row
#speed pad
execute if score @s lastItemPicked matches 7..8 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=7..8}] add tempItemBan
#swiftness potion
execute if score @s lastItemPicked matches 5 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=9..10}] add tempItemBan
#ender pearl
execute if score @s lastItemPicked matches 15 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=11}] add tempItemBan
#super jump
execute if score @s lastItemPicked matches 6 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=12}] add tempItemBan
#energy potion
execute if score @s lastItemPicked matches 4 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=13}] add tempItemBan

#don't get a speed item if we recently got a really powerful one
execute if score @s picksSinceBigSpeed matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=7..13}] add tempItemBan

#cooldown on rolling utility items
execute if score @s picksSinceUtility matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=7..8}] add tempItemBan

#cooldown on rolling offense items
execute if score @s picksSinceOffense matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..4}] add tempItemBan

#cooldown on rolling global items
execute if score @s picksSinceGlobal matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=15..16}] add tempItemBan

#cooldown on rolling trap items
execute if score @s picksSinceTrap matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=14}] add tempItemBan

#can't get speed pad if there are too many on the field at once
execute if score #givenPads value matches 6.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=7..8}] add tempItemBan

#can't get mines if there are too many on the field at once
execute if score #givenMines value matches 12.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=14}] add tempItemBan

#cut down on projectile spam from mid to back
execute if score #givenRockets value matches 10.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..3}] add tempItemBan
execute if score #givenRockets value matches 12.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=4}] add tempItemBan

#=====

#red rocket (2x) -- 1..2
#homing rocket -- 3
#tnt -- 4

#sonic blast -- 5
#shield -- 6

#speed pad -- 7..8
#swiftness potion -- 9..10
#ender pearl -- 11
#super jump -- 12
#energy potion/firework rocket -- 13

#mine -- 14

#enderman thief -- 15
#blinding squid -- 16

#===== ROLL THE DICE

#pick random number
scoreboard players set #randomRoll value 0
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=!tempItemBan,type=armor_stand,scores={r=1..16}] r

#will either get a firework or energy potion if we get 13
execute store result score #randomRollB value run random value 1..4

#fallback
execute if score #randomRoll value matches 0 run function phan:items/give/swiftness_potion {count:1}

#get the item
execute if score #randomRoll value matches 1..2 run function phan:items/give/red_rocket {count:2}
execute if score #randomRoll value matches 3 run function phan:items/give/homing_rocket {count:1}
execute if score #randomRoll value matches 4 run function phan:items/give/throwable_tnt {count:1}

execute if score #randomRoll value matches 5 run function phan:items/give/sonic_blast {count:1}
execute if score #randomRoll value matches 6 run function phan:items/give/shield {count:1}

execute if score #randomRoll value matches 7..8 run function phan:items/give/speed_pad {count:1}
execute if score #randomRoll value matches 9..10 run function phan:items/give/swiftness_potion {count:1}
execute if score #randomRoll value matches 11 run function phan:items/give/ender_pearl {count:1}
execute if score #randomRoll value matches 12 run function phan:items/give/super_jump {count:1}
execute if score #randomRoll value matches 13 if score #randomRollB value matches 1..3 run function phan:items/give/energy_potion {count:1}
execute if score #randomRoll value matches 13 if score #randomRollB value matches 4 run function phan:items/give/firework_rocket {count:1}

execute if score #randomRoll value matches 14 run function phan:items/give/mine {count:1}

execute if score #randomRoll value matches 15 run function phan:items/give/enderman_thief {count:1}
execute if score #randomRoll value matches 16 run function phan:items/give/blinding_squid {count:1}

#=====