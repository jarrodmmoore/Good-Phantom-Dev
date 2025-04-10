#act 1 scores

#get ready to sort
scoreboard players set #best value -1
scoreboard players set #assignRank value 1
scoreboard players set @a multiplayerRank -1
scoreboard players reset @a multiplayerNumber

#ranking players based on scoreArea3
execute as @a[tag=playerReservation,scores={multiplayerRank=-1}] run scoreboard players operation @s multiplayerNumber = @s scoreArea3

#sort players by rank
#(we only care about top 3)
#1
scoreboard players operation #best value > @a[tag=playerReservation,scores={multiplayerRank=-1}] multiplayerNumber
execute as @a[tag=playerReservation,scores={multiplayerRank=-1}] if score @s multiplayerNumber >= #best value run scoreboard players operation @s multiplayerRank = #assignRank value
scoreboard players add #assignRank value 1
scoreboard players set #best value -1
#2
scoreboard players operation #best value > @a[tag=playerReservation,scores={multiplayerRank=-1}] multiplayerNumber
execute as @a[tag=playerReservation,scores={multiplayerRank=-1}] if score @s multiplayerNumber >= #best value run scoreboard players operation @s multiplayerRank = #assignRank value
scoreboard players add #assignRank value 1
scoreboard players set #best value -1
#3
scoreboard players operation #best value > @a[tag=playerReservation,scores={multiplayerRank=-1}] multiplayerNumber
execute as @a[tag=playerReservation,scores={multiplayerRank=-1}] if score @s multiplayerNumber >= #best value run scoreboard players operation @s multiplayerRank = #assignRank value
scoreboard players add #assignRank value 1
scoreboard players set #best value -1

#now print it
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000 2
tellraw @a[tag=doneWithIntro] ["",{text:" "}]
tellraw @a[tag=doneWithIntro] ["",{translate:"gp.game.act_number",with:[{text:"3",bold:true,italic:true}],bold:true,italic:true}]
execute as @a[tag=playerReservation,scores={multiplayerRank=1}] run tellraw @a[tag=doneWithIntro] ["",{text:"➀",color:"yellow",bold:false},{text:" -- "},{selector:"@s",color:"aqua"},{text:" -- "},{translate:"gp.game.points",with:[{score:{name:"@s",objective:"scoreArea3"},color:"yellow"}],color:"yellow"}]
execute as @a[tag=playerReservation,scores={multiplayerRank=2}] run tellraw @a[tag=doneWithIntro] ["",{text:"➁",color:"white",bold:false},{text:" -- "},{selector:"@s",color:"aqua"},{text:" -- "},{translate:"gp.game.points",with:[{score:{name:"@s",objective:"scoreArea3"},color:"white"}],color:"white"}]
execute as @a[tag=playerReservation,scores={multiplayerRank=3}] run tellraw @a[tag=doneWithIntro] ["",{text:"➂",color:"white",bold:false},{text:" -- "},{selector:"@s",color:"aqua"},{text:" -- "},{translate:"gp.game.points",with:[{score:{name:"@s",objective:"scoreArea3"},color:"white"}],color:"white"}]
tellraw @a[tag=doneWithIntro] ["",{text:" "}]