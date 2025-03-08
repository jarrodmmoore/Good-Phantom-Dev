#===== CONSTRAINTS

#mines and trapped chest can ALWAYS be pulled, no matter the conditions. this gives us a reliable fallback item

#don't pick a speed item if we're far ahead of 2nd place
execute if score #1stPlaceLeadTime value matches 25.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..3}] add tempItemBan

#don't pick an offense item if we're really far ahead of 2nd place
execute if score #1stPlaceLeadTime value matches 50.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=5..6}] add tempItemBan
execute if score #1stPlaceLeadTime value matches 100.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=4..7}] add tempItemBan

#2 in 3 chance of not allowing enderman thief at all
execute store result score #randomRoll2 value run random value 1..3
execute if score #randomRoll2 value matches 2.. run tag 00000000-0000-0328-0000-000000000008 add tempItemBan

#never get enderman if it's on global cooldown
execute if score #cooldownEnderman value matches 1.. run tag 00000000-0000-0328-0000-000000000008 add tempItemBan

#can't get certain items again if they're already in our inventory
execute if score #hasEnderPearl value matches 1.. run tag 00000000-0000-0328-0000-000000000001 add tempItemBan
execute if score #hasSuperJump value matches 1.. run tag 00000000-0000-0328-0000-000000000003 add tempItemBan
execute if score #hasTnt value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=4..5}] add tempItemBan
execute if score #hasEndermanThief value matches 1.. run tag 00000000-0000-0328-0000-000000000008 add tempItemBan
execute if score #hasShield value matches 1.. run tag 00000000-0000-0328-0000-00000000000c add tempItemBan
execute if score #hasSonicBlast value matches 1.. run tag 00000000-0000-0328-0000-00000000000c add tempItemBan

#don't roll a speed item if we've already got one
execute if score #hasSpeedItem value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=2..3}] add tempItemBan

#cooldown on rolling utility items
execute if score @s picksSinceUtility matches ..2 run tag 00000000-0000-0328-0000-00000000000c add tempItemBan

#cooldown on rolling offense items
execute if score @s picksSinceOffense matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=4..7}] add tempItemBan

#cooldown on rolling speed items
execute if score @s picksSinceSpeed matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..3}] add tempItemBan

#cooldown on rolling global items
execute if score @s picksSinceGlobal matches ..3 run tag 00000000-0000-0328-0000-000000000008 add tempItemBan

#can't get speed pad if there are too many on the field at once
execute if score #givenPads value matches 6.. run tag 00000000-0000-0328-0000-000000000002 add tempItemBan

#geez, that's a lot of RULES, huh?
#my hope is that this will give a players a more intuitive sense of what items they might pull from boxes and when
#...and also stop games from being a blowout because one player is 5% more skilled than everyone else :smugcat:

#=====

#ender pearl -- 1
#speed pad -- 2
#super jump -- 3

#throwable tnt -- 4..5
#red rocket -- 6..7

#enderman thief -- 8
#mine -- 9..11
#shield/sonic blast -- 12
#trapped chest -- 13

#===== ROLL NUMBER, GET ITEM

#pick random number
scoreboard players set #randomRoll value 0
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=!tempItemBan,type=armor_stand,scores={r=1..13}] r

#will either get a shield or sonic blast if we get a 12
execute store result score #randomRollB value run random value 1..2

#fallback
execute if score #randomRoll value matches 0 run function phan:items/give/mine {count:1}

#get the item
execute if score #randomRoll value matches 1 run function phan:items/give/ender_pearl {count:1}
execute if score #randomRoll value matches 2 run function phan:items/give/speed_pad {count:1}
execute if score #randomRoll value matches 3 run function phan:items/give/super_jump {count:1}

execute if score #randomRoll value matches 4..5 run function phan:items/give/throwable_tnt {count:1}
execute if score #randomRoll value matches 6..7 run function phan:items/give/red_rocket {count:1}

execute if score #randomRoll value matches 8 run function phan:items/give/enderman_thief {count:1}
execute if score #randomRoll value matches 9..11 run function phan:items/give/mine {count:1}
execute if score #randomRoll value matches 12 if score #randomRollB value matches 1 run function phan:items/give/shield {count:1}
execute if score #randomRoll value matches 12 if score #randomRollB value matches 2 run function phan:items/give/sonic_blast {count:1}
execute if score #randomRoll value matches 13 run function phan:items/give/trapped_chest {count:1}

#=====