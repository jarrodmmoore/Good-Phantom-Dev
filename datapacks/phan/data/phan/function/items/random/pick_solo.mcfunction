#===== CONSTRAINTS

#can't get certain items again if they're already in our inventory
execute if score #hasSwiftness value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=7}] add tempItemBan
execute if score #hasEnderPearl value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=8}] add tempItemBan
execute if score #hasSuperJump value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=9}] add tempItemBan
execute if score #hasEnergyPotion value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=10}] add tempItemBan
execute if score #hasFirework value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=11}] add tempItemBan
execute if score #hasWarp value matches 1.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=12}] add tempItemBan

#don't get same speed item twice in a row
#speed pad
execute if score @s lastItemPicked matches 7..8 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=4..6}] add tempItemBan
#swiftness potion
execute if score @s lastItemPicked matches 5 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=7}] add tempItemBan
#ender pearl
execute if score @s lastItemPicked matches 15 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=8}] add tempItemBan
#super jump
execute if score @s lastItemPicked matches 6 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=9}] add tempItemBan
#energy potion
execute if score @s lastItemPicked matches 4 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=10}] add tempItemBan

#don't get an energy potion if we're near full energy
execute if score @s energy matches 10.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=10}] add tempItemBan

#cooldown on rolling big speed items
execute if score @s picksSinceBigSpeed matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=11..12}] add tempItemBan

#cooldown on rolling offense items
execute if score @s picksSinceOffense matches ..1 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..3}] add tempItemBan

#cooldown on rolling trap items
execute if score @s picksSinceTrap matches ..2 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=13..14}] add tempItemBan

#can't get mines if there are too many on the field at once
execute if score #givenMines value matches 12.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=13..14}] add tempItemBan

#cut down on projectile spam
execute if score #givenRockets value matches 10.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..3}] add tempItemBan

#don't get a mine if we're on the final(ish) lap
scoreboard players operation #eyeCheck value = #vEyesNeeded value
scoreboard players operation #eyeCheck value -= @s enderEyes
execute if score #eyeCheck value matches ..4 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=13..14}] add tempItemBan

#=====

#red rocket -- 1
#red rocket (3x) -- 2
#tnt -- 3

#speed pad -- 4
#speed pad (2x) -- 5
#super speed pad -- 6
#swiftness potion -- 7
#ender pearl -- 8
#super jump -- 9
#energy potion -- 10
#firework rocket -- 11
#warp -- 12

#mine -- 13..14

#===== ROLL THE DICE

#pick random number
scoreboard players set #randomRoll value 0
scoreboard players operation #randomRoll value = @e[limit=1,sort=random,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=!tempItemBan,type=armor_stand,scores={r=1..14}] r

#fallback
execute if score #randomRoll value matches 0 run function phan:items/give/speed_pad {count:1}

#get the item
execute if score #randomRoll value matches 1 run function phan:items/give/red_rocket {count:1}
execute if score #randomRoll value matches 2 run function phan:items/give/red_rocket {count:3}
execute if score #randomRoll value matches 3 run function phan:items/give/throwable_tnt {count:1}

execute if score #randomRoll value matches 4 run function phan:items/give/speed_pad {count:1}
execute if score #randomRoll value matches 5 run function phan:items/give/speed_pad {count:2}
execute if score #randomRoll value matches 6 run function phan:items/give/speed_pad_super {count:1}
execute if score #randomRoll value matches 7 run function phan:items/give/swiftness_potion {count:1}
execute if score #randomRoll value matches 8 run function phan:items/give/ender_pearl {count:1}
execute if score #randomRoll value matches 9 run function phan:items/give/super_jump {count:1}
execute if score #randomRoll value matches 10 run function phan:items/give/energy_potion {count:1}
execute if score #randomRoll value matches 11 run function phan:items/give/firework_rocket {count:1}
execute if score #randomRoll value matches 12 run function phan:items/give/warp {count:1}

execute if score #randomRoll value matches 13..14 run function phan:items/give/mine {count:1}

#=====