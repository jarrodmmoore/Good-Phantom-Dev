#show combo
execute if score @s comboTime matches 10.. run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#FFFFFF"},{text:": ",bold:true,color:"#FFFFFF"},{score:{name:"@s",objective:"combo"},color:"#F0F000",bold:true}]
#fade to black to signal the combo is bouta expire
execute if score @s comboTime matches 9 run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#E0E0E0"},{text:": ",bold:true,color:"#E0E0E0"},{score:{name:"@s",objective:"combo"},color:"#E0E000",bold:true}]
execute if score @s comboTime matches 8 run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#D0D0D0"},{text:": ",bold:true,color:"#D0D0D0"},{score:{name:"@s",objective:"combo"},color:"#D0D000",bold:true}]
execute if score @s comboTime matches 7 run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#C0C0C0"},{text:": ",bold:true,color:"#C0C0C0"},{score:{name:"@s",objective:"combo"},color:"#C0C000",bold:true}]
execute if score @s comboTime matches 6 run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#B0B0B0"},{text:": ",bold:true,color:"#B0B0B0"},{score:{name:"@s",objective:"combo"},color:"#B0B000",bold:true}]
execute if score @s comboTime matches 5 run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#A0A0A0"},{text:": ",bold:true,color:"#A0A0A0"},{score:{name:"@s",objective:"combo"},color:"#A0A000",bold:true}]
execute if score @s comboTime matches 4 run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#909090"},{text:": ",bold:true,color:"#909090"},{score:{name:"@s",objective:"combo"},color:"#909000",bold:true}]
execute if score @s comboTime matches 3 run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#808080"},{text:": ",bold:true,color:"#808080"},{score:{name:"@s",objective:"combo"},color:"#808000",bold:true}]
execute if score @s comboTime matches 2 run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#707070"},{text:": ",bold:true,color:"#707070"},{score:{name:"@s",objective:"combo"},color:"#707000",bold:true}]
execute if score @s comboTime matches 1 run title @s actionbar ["",{translate:"gp.game.combo",bold:true,color:"#606060"},{text:": ",bold:true,color:"#606060"},{score:{name:"@s",objective:"combo"},color:"#606000",bold:true}]
