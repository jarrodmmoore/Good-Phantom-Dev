#get digits for timerAdd
scoreboard players set #timerAddNegative value 0
execute if score @s timerAdd matches ..-1 run scoreboard players set #timerAddNegative value 1
scoreboard players operation #timerAddSec value = @s timerAdd
#get absolute value
execute if score #timerAddNegative value matches 1 run scoreboard players operation #timerAddSec value *= #-1 value
#get minutes
scoreboard players operation #timerAddMin value = #timerAddSec value
scoreboard players operation #timerAddMin value /= #60 value
#get decaseconds
scoreboard players operation #timerAddSec10 value = #timerAddSec value
scoreboard players operation #timerAddSec10 value %= #60 value
scoreboard players operation #timerAddSec10 value /= #10 value
#seconds
scoreboard players operation #timerAddSec value %= #10 value

#store it
execute if score #timerAddNegative value matches 0 run data modify storage phan:data display.timer_add set value ["",{text:"\uE001"},{text:" +",color:"green",bold:true},{score:{name:"#timerAddMin",objective:"value"},color:"green",bold:true},{text:":",color:"green",bold:true},{score:{name:"#timerAddSec10",objective:"value"},color:"green",bold:true},{score:{name:"#timerAddSec",objective:"value"},color:"green",bold:true}]
execute if score #timerAddNegative value matches 1 run data modify storage phan:data display.timer_add set value ["",{text:"\uE001"},{text:" -",color:"red",bold:true},{score:{name:"#timerAddMin",objective:"value"},color:"red",bold:true},{text:":",color:"red",bold:true},{score:{name:"#timerAddSec10",objective:"value"},color:"red",bold:true},{score:{name:"#timerAddSec",objective:"value"},color:"red",bold:true}]