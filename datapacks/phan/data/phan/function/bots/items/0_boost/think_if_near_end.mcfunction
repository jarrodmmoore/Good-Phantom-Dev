#more likely on final lap
scoreboard players remove #random value 1

#even more likely on last few checkpoints
scoreboard players operation #test1 value = #vEyesNeeded value
scoreboard players operation #test1 value -= @s enderEyes
execute if score #test1 value matches ..3 run scoreboard players remove #random value 1

#less likely if ahead of rival
execute if score @s[scores={botSkill=5..}] racePosDisplay < #botRivalPosition value run scoreboard players add #random value 2