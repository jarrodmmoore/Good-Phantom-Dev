scoreboard players enable @s hurryUp
execute if score @s hurryUp matches 1.. run function phan:game/1/spectator/activate_hurry_up

#inform spectators that they can do this
execute if score #hurryUp value matches ..1 run scoreboard players add #hurryUp value 1
execute if score #hurryUp value matches 1 run tellraw @a[tag=!playing,tag=doneWithIntro] ["",{text:"\n"},{translate:"gp.game.hurry_up_trigger",with:[{text:"/trigger hurryUp",color:"aqua"}]},{text:"\n"}]