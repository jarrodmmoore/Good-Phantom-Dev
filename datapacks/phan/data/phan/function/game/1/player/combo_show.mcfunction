#show combo
execute if score @s comboTime matches 10.. run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#B060F0",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#FFFFFF"}]
#fade to black to signal the combo is bouta expire
execute if score @s comboTime matches 9 run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#B060F0",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#E0E0E0"}]
execute if score @s comboTime matches 8 run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#A050E0",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#D0D0D0"}]
execute if score @s comboTime matches 7 run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#9040D0",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#C0C0C0"}]
execute if score @s comboTime matches 6 run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#8030C0",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#B0B0B0"}]
execute if score @s comboTime matches 5 run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#7020B0",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#A0A0A0"}]
execute if score @s comboTime matches 4 run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#6010A0",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#909090"}]
execute if score @s comboTime matches 3 run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#500090",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#808080"}]
execute if score @s comboTime matches 2 run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#400080",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#707070"}]
execute if score @s comboTime matches 1 run title @s actionbar ["",{score:{name:"@s",objective:"combo"},color:"#300070",bold:true}," ",{translate:"gp.game.combo",bold:true,color:"#606060"}]
