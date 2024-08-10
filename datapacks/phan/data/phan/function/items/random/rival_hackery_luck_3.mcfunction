#later overrides have higher priority

#override 1
#if we can get speed items, we WILL get speed items
#ban anything that's not speed
execute if score @s picksSinceBigSpeed matches 2.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..7}] add tempItemBan
execute if score @s picksSinceBigSpeed matches 2.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=15..17}] add tempItemBan
#we can ignore the cap on speed pad entities if there are no other options
execute if score @s picksSinceBigSpeed matches 2.. unless entity @e[limit=1,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=10..14},tag=!tempItemBan] run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=8..9}] remove tempItemBan

#override 2
#get firework or magic potion if possible
execute if score @s picksSinceBigSpeed matches 2.. if score @s energy matches ..11 if score #hasEnergyPotion value matches ..0 if score #hasFirework value matches ..0 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..17}] add tempItemBan
execute if score @s picksSinceBigSpeed matches 2.. if score @s energy matches ..11 if score #hasEnergyPotion value matches ..0 if score #hasFirework value matches ..0 run tag 00000000-0000-0328-0000-00000000000e remove tempItemBan

#override 2
#can always get enderman thief when it's off cooldown
execute if score @s picksSinceGlobal matches 3.. if score #cooldownEnderman value matches ..0 if score #hasEndermanThief value matches ..0 run tag 00000000-0000-0328-0000-000000000010 remove tempItemBan