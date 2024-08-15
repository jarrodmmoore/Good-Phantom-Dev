#later overrides have higher priority

#override 1
#if we can get speed items, we WILL get speed items
#ban anything that's not speed
tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..4}] add tempItemBan
tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=18..20}] add tempItemBan
#we can ignore the cap on speed pad entities if there are no other options
execute unless entity @e[limit=1,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=5..17},tag=!tempItemBan] run tag 00000000-0000-0328-0000-000000000005 remove tempItemBan

#override 2
#get warp if possible
execute if score #hasWarp value matches ..0 if score @s picksSinceWarp matches 2.. if entity @s[tag=!vsHomeStretch] run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..20}] add tempItemBan
execute if score #hasWarp value matches ..0 if score @s picksSinceWarp matches 2.. if entity @s[tag=!vsHomeStretch] run tag 00000000-0000-0328-0000-000000000010 remove tempItemBan