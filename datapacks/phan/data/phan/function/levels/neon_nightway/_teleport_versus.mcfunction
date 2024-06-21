#initial load teleport
execute if score #vAct value matches ..1 run tp @a[tag=doneWithIntro] -3194 85 -21 0 0
execute if score #vAct value matches 2 run tp @a[tag=doneWithIntro] -2867 81 84 0 0
execute if score #vAct value matches 3.. run tp @a[tag=doneWithIntro] -2918 128 -65 90 0

#if we run this function, unlock the act we're playing in the Free Play menu
execute if score #vAct value matches ..1 run scoreboard players set #d4a1Unlocked value 1
execute if score #vAct value matches 2 run scoreboard players set #d4a2Unlocked value 1
execute if score #vAct value matches 3.. run scoreboard players set #d4a3Unlocked value 1