scoreboard players add #practiceTarget2 value 1

#spawn the ghasts! (respawn all stuff in area 2 section 5)
execute if score #practiceTarget2 value matches 5 run scoreboard players set #area5SpawnB value 0

#after the target's been on for a few ticks, reset state
execute if score #practiceTarget2 value matches 40.. as @e[tag=node,scores={editNode=14},x=838,y=36,z=-1102,distance=..2] run function phan:game/1/spawning/target_setup
execute if score #practiceTarget2 value matches 40.. run scoreboard players set @e[tag=node,scores={editNode=14}] editArg1 0
execute if score #practiceTarget2 value matches 40.. run setblock 838 36 -1102 target
execute if score #practiceTarget2 value matches 40.. run scoreboard players set #practiceTarget2 value 0