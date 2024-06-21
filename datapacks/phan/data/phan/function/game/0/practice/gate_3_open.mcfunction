scoreboard players add #practiceGate3 value 1
execute if score #practiceGate3 value matches 201.. run scoreboard players set #practiceGate3 value 200

#animate the gate opening
execute if score #practiceGate3 value matches 1 run fill 847 0 -1016 852 0 -1016 air
execute if score #practiceGate3 value matches 3 run fill 847 1 -1016 852 1 -1016 air
execute if score #practiceGate3 value matches 5 run fill 847 2 -1016 852 2 -1016 air
execute if score #practiceGate3 value matches 7 run fill 847 3 -1016 852 3 -1016 air
execute if score #practiceGate3 value matches 9 run fill 847 4 -1016 852 4 -1016 air
execute if score #practiceGate3 value matches 11 run fill 847 5 -1016 852 5 -1016 air
execute if score #practiceGate3 value matches 13 run fill 847 6 -1016 852 6 -1016 air
execute if score #practiceGate3 value matches 15 run fill 847 7 -1016 852 7 -1016 air
execute if score #practiceGate3 value matches 17 run fill 847 8 -1016 852 8 -1016 air