#initial load teleport
execute if score #vAct value matches ..1 in minecraft:the_end run tp @a[tag=doneWithIntro] -2278 99 -2500 180 0
execute if score #vAct value matches 2 in minecraft:the_end run tp @a[tag=doneWithIntro] -2162 108 -2334 90 0
execute if score #vAct value matches 3.. in minecraft:the_end run tp @a[tag=doneWithIntro] -2655 173 -2563 0 0

#if we run this function, unlock the act we're playing in the Free Play menu
execute if score #vAct value matches ..1 run scoreboard players set #d3a1Unlocked value 1
execute if score #vAct value matches 2 run scoreboard players set #d3a2Unlocked value 1
execute if score #vAct value matches 3.. run scoreboard players set #d3a3Unlocked value 1