#check if we're clear to play music or not
scoreboard players set #test value 0
execute if entity @s[tag=doneWithIntro,tag=!musicDisable] run scoreboard players set #test value 1
execute if score #test value matches 0 run function phan:bgm/play_0
execute if score #test value matches 1 run function phan:bgm/play_index