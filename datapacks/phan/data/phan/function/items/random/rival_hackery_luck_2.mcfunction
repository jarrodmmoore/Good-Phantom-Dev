#later overrides have higher priority

#override 1
#get offense items if we can
scoreboard players set #test value 0
#ban anything that's not projectile, sonic blast, or shield
execute if score @s picksSinceOffense matches 2.. as @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=6..17}] unless score @s r matches 8..9 run tag @s add tempItemBan

#override 2
#if we can get speed items, we WILL get speed items
scoreboard players set #test value 0
#ban anything that's not speed
execute if score @s picksSinceSpeed matches 2.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..9}] add tempItemBan
execute if score @s picksSinceSpeed matches 2.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=16..17}] add tempItemBan
#we can ignore the cap on speed pad entities if there are no other options
execute if score @s picksSinceSpeed matches 2.. unless entity @e[limit=1,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=12..15},tag=!tempItemBan] run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=6..7}] remove tempItemBan

#override 3
#can always get enderman thief when it's off cooldown
execute if score @s picksSinceGlobal matches 3.. if score #cooldownEnderman value matches ..0 if score #hasEndermanThief value matches ..0 run tag 00000000-0000-0328-0000-000000000010 remove tempItemBan