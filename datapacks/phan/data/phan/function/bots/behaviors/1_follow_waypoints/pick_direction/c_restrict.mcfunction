#restrict any unallowed directions
execute if score #wpAllowDir1 value matches ..0 run tag 00000000-0000-0328-0000-000000000001 remove directionViable
execute if score #wpAllowDir2 value matches ..0 in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=2..4}] remove directionViable
execute if score #wpAllowDir3 value matches ..0 in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=5..17}] remove directionViable
execute if score #wpAllowDir4 value matches ..0 in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=18..20}] remove directionViable

#clean up flag
scoreboard players set #wpRestrictDirections value 0