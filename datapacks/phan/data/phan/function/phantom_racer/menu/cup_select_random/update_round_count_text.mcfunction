#update the text
execute as @e[type=text_display,tag=tvRandomPanel1,distance=..10] run data modify entity @s text set value ["",{text:"< "},{translate:"gp.phantom_racer.cup_rounds",with:[{score:{name:"#tvMenuState7",objective:"value"}}]},{text:" >"}]

#set value for real
execute store result storage phan_grand_prix_5:metadata rounds int 1 run scoreboard players get #tvMenuState7 value

#sync up
scoreboard players operation #tvMenuState8 value = #tvMenuState7 value