#act 1 scores

#get ready to sort
scoreboard players set #best value -1
scoreboard players set #assignRank value 1
scoreboard players set @a multiplayerRank -1
scoreboard players reset @a multiplayerNumber

#ranking players based on highestCombo
execute as @a[tag=playerReservation,scores={multiplayerRank=-1}] run scoreboard players operation @s multiplayerNumber = @s highestCombo

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
execute as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.hat",targets:"@s",pitch:"2",volume:"1"}
tellraw @a[tag=doneWithIntro] ["",{text:" "}]
tellraw @a[tag=doneWithIntro] ["",{translate:"gp.game.highest_combo",bold:true,italic:true}]
execute as @a[tag=playerReservation,scores={multiplayerRank=1}] run tellraw @a[tag=doneWithIntro] ["",{text:"➀",color:"yellow",bold:false},{text:" -- "},{selector:"@s",color:"aqua"},{text:" -- "},{score:{name:"@s",objective:"highestCombo"},color:"yellow"}]
execute as @a[tag=playerReservation,scores={multiplayerRank=2}] run tellraw @a[tag=doneWithIntro] ["",{text:"➁",color:"white",bold:false},{text:" -- "},{selector:"@s",color:"aqua"},{text:" -- "},{score:{name:"@s",objective:"highestCombo"},color:"white"}]
execute as @a[tag=playerReservation,scores={multiplayerRank=3}] run tellraw @a[tag=doneWithIntro] ["",{text:"➂",color:"white",bold:false},{text:" -- "},{selector:"@s",color:"aqua"},{text:" -- "},{score:{name:"@s",objective:"highestCombo"},color:"white"}]
tellraw @a[tag=doneWithIntro] ["",{text:" "}]