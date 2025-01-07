#old, de-referenced
#initial load teleport
#execute if score #vAct value matches ..1 run tp @a[tag=doneWithIntro] -1056 100 -159 90 0
#execute if score #vAct value matches 2 run tp @a[tag=doneWithIntro] -938 111 114 0 0
#execute if score #vAct value matches 3.. run tp @a[tag=doneWithIntro] -902 104 -90 270 0

#if we run this function, unlock the act we're playing in the Free Play menu
#execute if score #vAct value matches ..1 run scoreboard players set #d1a1Unlocked value 1
#execute if score #vAct value matches 2 run scoreboard players set #d1a2Unlocked value 1
#execute if score #vAct value matches 3.. run scoreboard players set #d1a3Unlocked value 1