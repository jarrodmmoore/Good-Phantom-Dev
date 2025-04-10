#count down time remaining
scoreboard players remove #vTimeLimit value 1

#announce when 45 or 15 seconds left
execute if score #vTimeLimit value matches 919 run tellraw @a[tag=doneWithIntro] ["",{text:"\n"},{translate:"gp.versus.battle_ends_in_x",with:[{text:"45",color:"red"}]},{text:"\n"}]
execute if score #vTimeLimit value matches 319 run tellraw @a[tag=doneWithIntro] ["",{text:"\n"},{translate:"gp.versus.battle_ends_in_x",with:[{text:"15",color:"red"}]},{text:"\n"}]

#time runs out
execute if score #vTimeLimit value matches ..0 run function phan:game/4/battle/time_limit_over