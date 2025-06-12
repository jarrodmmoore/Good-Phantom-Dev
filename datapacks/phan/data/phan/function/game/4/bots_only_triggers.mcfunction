execute if score #playersOnServer value matches ..1 if score #subGameState value matches 0 run scoreboard players enable @a[tag=doneWithIntro] restart
execute if entity @a[tag=doneWithIntro,scores={restart=1..}] run function phan:game/4/restart_round

scoreboard players enable @a[tag=doneWithIntro] exit
execute as @a[tag=doneWithIntro,scores={exit=1..}] run function phan:game/4/_4_exit