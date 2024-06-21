#initial load teleport
execute if score #vAct value matches ..1 run tp @a[tag=doneWithIntro] -1948 60 12 0 0
execute if score #vAct value matches 2 run tp @a[tag=doneWithIntro] -2068 95 -29 270 0
execute if score #vAct value matches 3.. run tp @a[tag=doneWithIntro] -1954 58 -54 180 0

#if we run this function, unlock the act we're playing in the Free Play menu
execute if score #vAct value matches ..1 run scoreboard players set #d2a1Unlocked value 1
execute if score #vAct value matches 2 run scoreboard players set #d2a2Unlocked value 1
execute if score #vAct value matches 3.. run scoreboard players set #d2a3Unlocked value 1