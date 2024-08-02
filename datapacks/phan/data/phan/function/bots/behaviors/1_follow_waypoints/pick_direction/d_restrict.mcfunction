#restrict any unallowed directions
execute if score #wpAllowDir1 value matches ..0 in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..3}] remove directionViable
execute if score #wpAllowDir2 value matches ..0 run tag 00000000-0000-0328-0000-000000000004 remove directionViable
execute if score #wpAllowDir3 value matches ..0 in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=5..7}] remove directionViable
execute if score #wpAllowDir4 value matches ..0 in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=8..20}] remove directionViable

#clean up flag
scoreboard players set #wpRestrictDirections value 0