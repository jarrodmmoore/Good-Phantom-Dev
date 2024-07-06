#===== CONSTRAINTS

#2 in 3 chance of not allowing lightning at all
execute store result score #randomRoll2 value run random value 1..3
execute if score #randomRoll2 value matches 2.. run tag @e[tag=randomize,type=armor_stand,scores={r=21}] add tempItemBan

#never get enderman if it's on global cooldown
execute if score #cooldownEnderman value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=19}] add tempItemBan

#never get squid if it's on global cooldown
execute if score #cooldownSquid value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=20}] add tempItemBan

#never get lightning if it's on global cooldown
execute if score #cooldownLightning value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=21}] add tempItemBan

#can't get certain items again if they're already in our inventory
execute if score #hasSonicBlast value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=4}] add tempItemBan
execute if score #hasShield value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=4..5}] add tempItemBan
execute if score #hasSwiftness value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=10..11}] add tempItemBan
execute if score #hasSuperJump value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=12}] add tempItemBan
execute if score #hasEnergyPotion value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=13..14}] add tempItemBan
execute if score #hasFirework value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=15..18}] add tempItemBan
execute if score #hasWarp value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=15..18}] add tempItemBan
execute if score #hasEndermanThief value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=19}] add tempItemBan
execute if score #hasBlindingSquid value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=20}] add tempItemBan
execute if score #hasLightning value matches 1.. run tag @e[tag=randomize,type=armor_stand,scores={r=21}] add tempItemBan

#don't get an energy potion if we're near full energy
execute if score @s energy matches 12.. run tag @e[tag=randomize,type=armor_stand,scores={r=13..14}] add tempItemBan

#don't get same speed item twice in a row
#speed pad
execute if score @s lastItemPicked matches 7..8 run tag @e[tag=randomize,type=armor_stand,scores={r=6..9}] add tempItemBan
#swiftness potion
execute if score @s lastItemPicked matches 5 run tag @e[tag=randomize,type=armor_stand,scores={r=10..11}] add tempItemBan
#super jump
execute if score @s lastItemPicked matches 6 run tag @e[tag=randomize,type=armor_stand,scores={r=12}] add tempItemBan
#energy potion
execute if score @s lastItemPicked matches 4 run tag @e[tag=randomize,type=armor_stand,scores={r=13..14}] add tempItemBan

#don't get a speed item if we recently got a really powerful one
execute if score @s picksSinceBigSpeed matches ..1 run tag @e[tag=randomize,type=armor_stand,scores={r=6..18}] add tempItemBan

#cooldown on rolling utility items
execute if score @s picksSinceUtility matches ..1 run tag @e[tag=randomize,type=armor_stand,scores={r=4..5}] add tempItemBan

#cooldown on rolling offense items
execute if score @s picksSinceOffense matches ..3 run tag @e[tag=randomize,type=armor_stand,scores={r=1..3}] add tempItemBan

#cooldown on rolling global items
execute if score @s picksSinceGlobal matches ..2 run tag @e[tag=randomize,type=armor_stand,scores={r=19..21}] add tempItemBan

#can't get speed pad if there are too many on the field at once
execute if score #givenPads value matches 6.. run tag @e[tag=randomize,type=armor_stand,scores={r=6..9}] add tempItemBan

#cut down on projectile spam from mid to back
execute if score #givenRockets value matches 9.. run tag @e[tag=randomize,type=armor_stand,scores={r=1..2}] add tempItemBan
execute if score #givenRockets value matches 12.. run tag @e[tag=randomize,type=armor_stand,scores={r=3}] add tempItemBan

#=====

#red rocket (3x) -- 1
#homing rocket -- 2
#throwable tnt (2x) -- 3

#shield -- 4..5

#speed pad (x2) -- 6
#super speed pad -- 7..9
#swiftness potion -- 10..11
#super jump -- 12
#energy potion -- 13..14
#firework rocket -- 15..17
#warp -- 18

#enderman thief -- 19
#blinding squid -- 20
#lightning -- 21

#===== GET IT

#pick random number
scoreboard players set #randomRoll value 0
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,tag=!tempItemBan,type=armor_stand,scores={r=1..21}] r

#fallback
execute if score #randomRoll value matches 0 run function phan:items/give/firework_rocket {count:1}

#get the item
execute if score #randomRoll value matches 1 run function phan:items/give/red_rocket {count:3}
execute if score #randomRoll value matches 2 run function phan:items/give/homing_rocket {count:1}
execute if score #randomRoll value matches 3 run function phan:items/give/throwable_tnt {count:2}

execute if score #randomRoll value matches 4..5 run function phan:items/give/shield {count:1}

execute if score #randomRoll value matches 6 run function phan:items/give/speed_pad {count:2}
execute if score #randomRoll value matches 7..9 run function phan:items/give/speed_pad_super {count:1}
execute if score #randomRoll value matches 10..11 run function phan:items/give/swiftness_potion {count:1}
execute if score #randomRoll value matches 12 run function phan:items/give/super_jump {count:1}
execute if score #randomRoll value matches 13..14 run function phan:items/give/energy_potion {count:1}
execute if score #randomRoll value matches 15..17 run function phan:items/give/firework_rocket {count:1}
execute if score #randomRoll value matches 18 run function phan:items/give/warp {count:1}

execute if score #randomRoll value matches 19 run function phan:items/give/enderman_thief {count:1}
execute if score #randomRoll value matches 20 run function phan:items/give/blinding_squid {count:1}
execute if score #randomRoll value matches 21 run function phan:items/give/lightning_strike {count:1}

#=====