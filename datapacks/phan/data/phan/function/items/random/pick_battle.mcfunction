#===== CONSTRAINTS

#never get enderman if it's on global cooldown
execute if score #cooldownEnderman value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=21}] add tempItemBan

#never get squid if it's on global cooldown
execute if score #cooldownSquid value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=22}] add tempItemBan

#can't get certain items again if they're already in our inventory
execute if score #hasSonicBlast value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=9..11}] add tempItemBan
execute if score #hasShield value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=9..11}] add tempItemBan
execute if score #hasSwiftness value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=12}] add tempItemBan
execute if score #hasEnderPearl value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=13}] add tempItemBan
execute if score #hasSuperJump value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=14}] add tempItemBan
execute if score #hasEnergyPotion value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=15}] add tempItemBan
execute if score #hasFirework value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=16}] add tempItemBan
execute if score #hasWarp value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=17}] add tempItemBan
execute if score #hasEndermanThief value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=21}] add tempItemBan
execute if score #hasBlindingSquid value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=22}] add tempItemBan

#don't get homing rocket twice in a row
execute if score @s lastItemPicked matches 2 run tag @e[tag=randomize,type=armor_stand,scores={r=5}] add tempItemBan

#don't get an energy potion if we're near full energy
execute if score @s energy matches 10.. run tag @e[tag=randomize,type=armor_stand,scores={r=15}] add tempItemBan

#cooldown on rolling speed items
execute if score @s picksSinceSpeed matches ..2 run tag @e[tag=randomize,type=armor_stand,scores={r=12..17}] add tempItemBan

#cooldown on rolling utility items
execute if score @s picksSinceUtility matches ..2 run tag @e[tag=randomize,type=armor_stand,scores={r=9..11}] add tempItemBan

#mandate an offense item if we haven't gotten one in a while
execute if score @s picksSinceOffense matches 3.. run tag @e[tag=randomize,type=armor_stand,scores={r=10..22}] add tempItemBan

#cooldown on rolling global items
execute if score @s picksSinceGlobal matches ..3 run tag @e[tag=randomize,type=armor_stand,scores={r=21..22}] add tempItemBan

#cooldown on rolling trap items
execute if score @s picksSinceTrap matches ..2 run tag @e[tag=randomize,type=armor_stand,scores={r=18..20}] add tempItemBan

#can't get mines if there are too many on the field at once
execute if score #givenMines value matches 12.. run tag @e[tag=randomize,type=armor_stand,scores={r=18..20}] add tempItemBan

#cut down on projectile spam
execute if score #givenRockets value matches 12.. run tag @e[tag=randomize,type=armor_stand,scores={r=1}] add tempItemBan
execute if score #givenRockets value matches 14.. run tag @e[tag=randomize,type=armor_stand,scores={r=6}] add tempItemBan

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

#===== ROLL THE DICE

#pick random number
scoreboard players set #randomRoll value 0
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,tag=!tempItemBan,type=armor_stand,scores={r=1..22}] r

#will either get a firework or energy potion if we get 13
execute store result score #randomRoll2 value run random value 1..4

#fallback
execute if score #randomRoll value matches 0 run function phan:items/give/red_rocket {count:1}

#get the item
execute if score #randomRoll value matches 1..4 run function phan:items/give/red_rocket {count:1}
execute if score #randomRoll value matches 5 run function phan:items/give/homing_rocket {count:1}
execute if score #randomRoll value matches 6..8 run function phan:items/give/throwable_tnt {count:1}

execute if score #randomRoll value matches 9 run function phan:items/give/sonic_blast {count:1}
execute if score #randomRoll value matches 10..11 run function phan:items/give/shield {count:1}

execute if score #randomRoll value matches 12 run function phan:items/give/swiftness_potion {count:1}
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