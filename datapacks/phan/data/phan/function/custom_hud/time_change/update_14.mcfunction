#nothing
execute if score #show value matches 0 run bossbar set hud14b name [""]

#positive time add
execute if score #show value matches 1 if score @s timerAdd matches 1.. run bossbar set hud14b name ["",{text:"\uE001"},{text:" +",color:"green",bold:true},{score:{name:"@s",objective:"timerAdd"},color:"green",bold:true},{text:":00",color:"green",bold:true}]
execute if score #show value matches 1 if score @s timerAdd matches ..-1 run bossbar set hud14b name ["",{text:"\uE001"},{text:" ",color:"red",bold:true},{score:{name:"@s",objective:"timerAdd"},color:"red",bold:true},{text:":00",color:"red",bold:true}]