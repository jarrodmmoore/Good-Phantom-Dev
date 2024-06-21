scoreboard players add #practiceTarget1 value 1

#after the door has been open for a while, close it again reset the target block's state
execute if score #practiceTarget1 value matches 100.. as @e[tag=node,scores={editNode=14},x=829,y=38,z=-1030,distance=..2] run function phan:game/1/spawning/target_setup
execute if score #practiceTarget1 value matches 100.. run scoreboard players set @e[tag=node,scores={editNode=14}] editArg1 0
execute if score #practiceTarget1 value matches 100.. run setblock 829 38 -1030 target
execute if score #practiceTarget1 value matches 100.. run scoreboard players set #practiceTarget1 value 15

#animate the door
execute if score #practiceTarget1 value matches 1 run fill 828 32 -1030 830 32 -1030 smooth_stone_slab[type=double]
execute if score #practiceTarget1 value matches 2 run fill 828 32 -1030 830 32 -1030 smooth_stone_slab[type=top]
execute if score #practiceTarget1 value matches 3 run fill 828 32 -1030 830 32 -1030 air

execute if score #practiceTarget1 value matches 4 run fill 828 33 -1030 830 33 -1030 smooth_stone_slab[type=double]
execute if score #practiceTarget1 value matches 5 run fill 828 33 -1030 830 33 -1030 smooth_stone_slab[type=top]
execute if score #practiceTarget1 value matches 6 run fill 828 33 -1030 830 33 -1030 air

execute if score #practiceTarget1 value matches 7 run fill 828 34 -1030 830 34 -1030 smooth_stone_slab[type=double]
execute if score #practiceTarget1 value matches 8 run fill 828 34 -1030 830 34 -1030 smooth_stone_slab[type=top]
execute if score #practiceTarget1 value matches 9 run fill 828 34 -1030 830 34 -1030 air

execute if score #practiceTarget1 value matches 10 run fill 828 35 -1030 830 35 -1030 smooth_stone_slab[type=double]
execute if score #practiceTarget1 value matches 11 run fill 828 35 -1030 830 35 -1030 smooth_stone_slab[type=top]
execute if score #practiceTarget1 value matches 12 run fill 828 35 -1030 830 35 -1030 air