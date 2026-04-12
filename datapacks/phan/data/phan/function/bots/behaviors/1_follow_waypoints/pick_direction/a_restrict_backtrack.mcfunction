#restrict any unallowed directions
execute if score #wpAllowDirBT1 value matches ..0 in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..13}] remove directionViable
execute if score #wpAllowDirBT2 value matches ..0 in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=14..16}] remove directionViable
execute if score #wpAllowDirBT3 value matches ..0 run tag 00000000-0000-0328-0000-000000000011 remove directionViable
execute if score #wpAllowDirBT4 value matches ..0 in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=18..20}] remove directionViable

#clean up flag
scoreboard players set #wpRestrictDirectionsBT value 0