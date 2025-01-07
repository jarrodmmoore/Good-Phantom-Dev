#old, de-referenced

#initial load teleport
#execute if score #vAct value matches ..1 run tp @a[tag=doneWithIntro] -4185 295 233 180 0
#execute if score #vAct value matches 2 run tp @a[tag=doneWithIntro] -4138 -6 142 270 0
#execute if score #vAct value matches 3.. run tp @a[tag=doneWithIntro] -3966 27 85 180 0

#if we run this function, unlock the act we're playing in the Free Play menu
#execute if score #vAct value matches ..1 run scoreboard players set #d5a1Unlocked value 1
#execute if score #vAct value matches 2 run scoreboard players set #d5a2Unlocked value 1
#execute if score #vAct value matches 3.. run scoreboard players set #d5a3Unlocked value 1