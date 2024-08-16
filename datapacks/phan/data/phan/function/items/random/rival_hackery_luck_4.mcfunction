#later overrides have higher priority

#override 1
#if we can get speed items, we WILL get speed items
#ban anything that's not speed
execute if score @s picksSinceBigSpeed matches 2.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..5}] add tempItemBan
execute if score @s picksSinceBigSpeed matches 2.. run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=19..20}] add tempItemBan
#we can ignore the cap on speed pad entities if there are no other options
execute if score @s picksSinceBigSpeed matches 2.. unless entity @e[limit=1,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=10..18},tag=!tempItemBan] run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=6..9}] remove tempItemBan

#override 2
#get warp if possible
execute if score @s picksSinceBigSpeed matches 2.. if score #hasWarp value matches ..0 if score #hasFirework value matches ..0 run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..20}] add tempItemBan
execute if score @s picksSinceBigSpeed matches 2.. if score #hasWarp value matches ..0 if score #hasFirework value matches ..0 run tag 00000000-0000-0328-0000-000000000012 remove tempItemBan

#(note that the overrides never banned lightning! that's random slot 21)