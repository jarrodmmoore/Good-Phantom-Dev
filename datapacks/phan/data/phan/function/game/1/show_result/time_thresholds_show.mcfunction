#get score
scoreboard players operation #inputScore value = @s rawTime

#get rank
scoreboard players set #inputRank value 5
execute if score @s rawTime <= #timeBronze value run scoreboard players set #inputRank value 4
execute if score @s rawTime <= #timeSilver value run scoreboard players set #inputRank value 3
execute if score @s rawTime <= #timeGold value run scoreboard players set #inputRank value 2
execute if score @s rawTime <= #timeDiamond value run scoreboard players set #inputRank value 1
#execute if score #assist_enabled_scoreattack value matches 1.. run scoreboard players set #inputRank value 5

tellraw @a[tag=doneWithIntro] ["",{text:" "}]

#show medal times, plus player's time

execute if score #inputRank value matches 1 run function phan:game/1/show_result/time_raw_print
#diamond
scoreboard players operation #arg value = #timeDiamond value
function phan:game/1/show_result/time_format
scoreboard players operation #arg value = @s rawTime
scoreboard players operation #arg value -= #timeDiamond value
function phan:game/1/show_result/time_format_comparison
execute if score #inputRank value matches ..2 run tellraw @a[tag=doneWithIntro] ["",{text:" "},{text:"\uE014"},{text:" "},{nbt:"print.time",storage:"phan:data",interpret:true},{text:" "},{text:" "},{nbt:"print.time_compare",storage:"phan:data",interpret:true}]

execute if score #inputRank value matches 2 run function phan:game/1/show_result/time_raw_print
#gold
scoreboard players operation #arg value = #timeGold value
function phan:game/1/show_result/time_format
scoreboard players operation #arg value = @s rawTime
scoreboard players operation #arg value -= #timeGold value
function phan:game/1/show_result/time_format_comparison
execute if score #inputRank value matches 2..3 run tellraw @a[tag=doneWithIntro] ["",{text:" "},{text:"\uE015"},{text:" "},{nbt:"print.time",storage:"phan:data",interpret:true},{text:" "},{text:" "},{nbt:"print.time_compare",storage:"phan:data",interpret:true}]
execute unless score #inputRank value matches 2..3 run tellraw @a[tag=doneWithIntro] ["",{text:" "},{text:"\uE015"},{text:" "},{nbt:"print.time",storage:"phan:data",interpret:true}]

execute if score #inputRank value matches 3 run function phan:game/1/show_result/time_raw_print
#silver
scoreboard players operation #arg value = #timeSilver value
function phan:game/1/show_result/time_format
scoreboard players operation #arg value = @s rawTime
scoreboard players operation #arg value -= #timeSilver value
function phan:game/1/show_result/time_format_comparison
execute if score #inputRank value matches 3..4 run tellraw @a[tag=doneWithIntro] ["",{text:" "},{text:"\uE016"},{text:" "},{nbt:"print.time",storage:"phan:data",interpret:true},{text:" "},{text:" "},{nbt:"print.time_compare",storage:"phan:data",interpret:true}]
execute unless score #inputRank value matches 3..4 run tellraw @a[tag=doneWithIntro] ["",{text:" "},{text:"\uE016"},{text:" "},{nbt:"print.time",storage:"phan:data",interpret:true}]

execute if score #inputRank value matches 4 run function phan:game/1/show_result/time_raw_print
#bronze
scoreboard players operation #arg value = #timeBronze value
function phan:game/1/show_result/time_format
scoreboard players operation #arg value = @s rawTime
scoreboard players operation #arg value -= #timeBronze value
function phan:game/1/show_result/time_format_comparison
execute if score #inputRank value matches 4.. run tellraw @a[tag=doneWithIntro] ["",{text:" "},{text:"\uE017"},{text:" "},{nbt:"print.time",storage:"phan:data",interpret:true},{text:" "},{text:" "},{nbt:"print.time_compare",storage:"phan:data",interpret:true}]
execute unless score #inputRank value matches 4.. run tellraw @a[tag=doneWithIntro] ["",{text:" "},{text:"\uE017"},{text:" "},{nbt:"print.time",storage:"phan:data",interpret:true}]

execute if score #inputRank value matches 5.. run function phan:game/1/show_result/time_raw_print


execute if score #assist_enabled_scoreattack value matches 0 run tellraw @a[tag=doneWithIntro] ["",{text:" "}]