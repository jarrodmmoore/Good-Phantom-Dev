######################### CONSTRAINTS

#never get squid if it's on global cooldown
execute if score #cooldownSquid value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=18}] add tempItemBan

#never get lightning if it's on global cooldown
execute if score #cooldownLightning value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=19..20}] add tempItemBan

#can't get certain items again if they're already in our inventory
execute if score #hasSonicBlast value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=3..4}] add tempItemBan
execute if score #hasShield value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=3..4}] add tempItemBan
execute if score #hasSwiftness value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=6}] add tempItemBan
execute if score #hasEnergyPotion value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=7..8}] add tempItemBan
execute if score #hasFirework value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=9..12}] add tempItemBan
execute if score #hasWarp value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=9..17}] add tempItemBan
execute if score #hasBlindingSquid value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=18}] add tempItemBan
execute if score #hasLightning value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=19..20}] add tempItemBan

#don't get an energy potion if we're near full energy
execute if score @s energy matches 12.. run tag @e[tag=randomize,type=armor_stand,scores={r=7..8}] add tempItemBan

#don't get same speed item twice in a row
#speed pad
execute if score @s lastItemPicked matches 7..8 run tag @e[tag=randomize,type=armor_stand,scores={r=5}] add tempItemBan
#swiftness potion
execute if score @s lastItemPicked matches 5 run tag @e[tag=randomize,type=armor_stand,scores={r=6}] add tempItemBan
#energy potion
execute if score @s lastItemPicked matches 4 run tag @e[tag=randomize,type=armor_stand,scores={r=7..8}] add tempItemBan
#firework rocket
execute if score @s lastItemPicked matches 17 run tag @e[tag=randomize,type=armor_stand,scores={r=9..12}] add tempItemBan

#mandate speed item if we haven't gotten one in a while
execute if score @s picksSinceSpeed matches 2.. run tag @e[tag=randomize,type=armor_stand,scores={r=1..6}] add tempItemBan
execute if score @s picksSinceSpeed matches 2.. run tag @e[tag=randomize,type=armor_stand,scores={r=18..20}] add tempItemBan

#diminished odds of getting a warp if we're not AS far behind
execute if score @s timeBehind1st matches ..180 run tag @e[tag=randomize,type=armor_stand,scores={r=16}] add tempItemBan
execute if score @s timeBehind1st matches ..200 run tag @e[tag=randomize,type=armor_stand,scores={r=17}] add tempItemBan

#cooldown on rolling utility items
execute if score @s picksSinceUtility matches ..3 run tag @e[tag=randomize,type=armor_stand,scores={r=3..4}] add tempItemBan

#cooldown on rolling offense items
execute if score @s picksSinceOffense matches ..3 run tag @e[tag=randomize,type=armor_stand,scores={r=1..2}] add tempItemBan

#cooldown on rolling global items
execute if score @s picksSinceGlobal matches ..2 run tag @e[tag=randomize,type=armor_stand,scores={r=18..20}] add tempItemBan

#can't get speed pad if there are too many on the field at once
execute if score #givenPads value matches 6.. run tag @e[tag=randomize,type=armor_stand,scores={r=5}] add tempItemBan

#cut down on projectile spam from mid to back
execute if score #givenRockets value matches 9.. run tag @e[tag=randomize,type=armor_stand,scores={r=1..2}] add tempItemBan

#########################

#throwable tnt (2x) -- 1..2

#shield -- 3..4

#super speed pad (2x) -- 5
#swiftness potion -- 6
#energy potion -- 7..8
#firework rocket -- 9..12
#warp -- 13..17

#blinding squid -- 18
#lightning -- 19..20

######################### YOU CAN DO IT

#pick random number
scoreboard players set #randomRoll value 0
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,tag=!tempItemBan,type=armor_stand,scores={r=1..20}] r

#fallback
execute if score #randomRoll value matches 0 run function phan:items/give/speed_pad_super {count:1}

#get the item
execute if score #randomRoll value matches 1..2 run function phan:items/give/throwable_tnt {count:2}

execute if score #randomRoll value matches 3..4 run function phan:items/give/shield {count:1}

execute if score #randomRoll value matches 5 run function phan:items/give/speed_pad_super {count:2}
execute if score #randomRoll value matches 6 run function phan:items/give/swiftness_potion {count:1}
execute if score #randomRoll value matches 7..8 run function phan:items/give/energy_potion {count:1}
execute if score #randomRoll value matches 9..12 run function phan:items/give/firework_rocket {count:1}
execute if score #randomRoll value matches 13..17 run function phan:items/give/warp {count:1}

execute if score #randomRoll value matches 18 run function phan:items/give/blinding_squid {count:1}
execute if score #randomRoll value matches 19..20 run function phan:items/give/lightning_strike {count:1}

#########################