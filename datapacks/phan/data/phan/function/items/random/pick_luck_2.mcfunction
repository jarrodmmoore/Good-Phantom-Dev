#===== CONSTRAINTS

#1 in 3 chance of not allowing enderman thief at all
execute store result score #randomRoll2 value run random value 1..3
execute if score #randomRoll2 value matches 3.. run tag 00000000-0000-0328-0000-00000000000f add tempItemBan

#1 in 2 chance of not allowing blinding squid at all
execute store result score #randomRoll2 value run random value 1..2
execute if score #randomRoll2 value matches 2.. run tag 00000000-0000-0328-0000-000000000010 add tempItemBan

#never get enderman if it's on global cooldown
execute if score #cooldownEnderman value matches 1.. run tag 00000000-0000-0328-0000-00000000000f add tempItemBan

#never get squid if it's on global cooldown
execute if score #cooldownSquid value matches 1.. run tag 00000000-0000-0328-0000-000000000010 add tempItemBan

#can't get certain items again if they're already in our inventory
execute if score #hasTnt value matches 1.. run tag 00000000-0000-0328-0000-000000000004 add tempItemBan
execute if score #hasSonicBlast value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=7..8}] add tempItemBan
execute if score #hasShield value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=7..8}] add tempItemBan
execute if score #hasSwiftness value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=11..12}] add tempItemBan
execute if score #hasEnderPearl value matches 1.. run tag 00000000-0000-0328-0000-00000000000d add tempItemBan
execute if score #hasSuperJump value matches 1.. run tag 00000000-0000-0328-0000-00000000000e add tempItemBan
execute if score #hasEndermanThief value matches 1.. run tag 00000000-0000-0328-0000-00000000000f add tempItemBan
execute if score #hasBlindingSquid value matches 1.. run tag 00000000-0000-0328-0000-000000000010 add tempItemBan

#cooldown on rolling utility items
execute if score @s picksSinceUtility matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=7..8}] add tempItemBan

#cooldown on rolling offense items
execute if score @s picksSinceOffense matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..4}] add tempItemBan

#cooldown on rolling speed items
execute if score @s picksSinceSpeed matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=9..14}] add tempItemBan

#cooldown on rolling global items
execute if score @s picksSinceGlobal matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=15..16}] add tempItemBan

#cooldown on rolling trap items
execute if score @s picksSinceTrap matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=5..6}] add tempItemBan

#can't get speed pad if there are too many on the field at once
execute if score #givenPads value matches 6.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=9..10}] add tempItemBan

#can't get mines if there are too many on the field at once
execute if score #givenMines value matches 12.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=5..6}] add tempItemBan

#=====

#red rocket -- 1..2
#homing rocket -- 3
#throwable tnt -- 4

#mine/trapped_chest -- 5..6

#sonic blast -- 7
#shield -- 8

#speed pad -- 9..10
#swiftness potion 11..12
#ender pearl -- 13
#super jump -- 14

#enderman thief -- 15
#blinding squid -- 16

#===== SCRATCH CARD GLORY

#pick random number
scoreboard players set #randomRoll value 0
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=!tempItemBan,type=armor_stand,scores={r=1..16}] r

#will either get a mine or trapped chest if we get 5..6
execute store result score #randomRollB value run random value 1..4

#fallback
execute if score #randomRoll value matches 0 run function phan:items/give/red_rocket {count:1}

#get the item
execute if score #randomRoll value matches 1..2 run function phan:items/give/red_rocket {count:1}
execute if score #randomRoll value matches 3 run function phan:items/give/homing_rocket {count:1}
execute if score #randomRoll value matches 4 run function phan:items/give/throwable_tnt {count:1}

execute if score #randomRoll value matches 5..6 if score #randomRollB value matches 1..3 run function phan:items/give/mine {count:1}
execute if score #randomRoll value matches 5..6 if score #randomRollB value matches 4 run function phan:items/give/trapped_chest {count:1}

execute if score #randomRoll value matches 7 run function phan:items/give/sonic_blast {count:1}
execute if score #randomRoll value matches 8 run function phan:items/give/shield {count:1}

execute if score #randomRoll value matches 9..10 run function phan:items/give/speed_pad {count:1}
execute if score #randomRoll value matches 11..12 run function phan:items/give/swiftness_potion {count:1}
execute if score #randomRoll value matches 13 run function phan:items/give/ender_pearl {count:1}
execute if score #randomRoll value matches 14 run function phan:items/give/super_jump {count:1}

execute if score #randomRoll value matches 15 run function phan:items/give/enderman_thief {count:1}
execute if score #randomRoll value matches 16 run function phan:items/give/blinding_squid {count:1}

#=====