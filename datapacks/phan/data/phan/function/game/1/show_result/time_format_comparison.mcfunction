#no negatives, please
scoreboard players set #test value 0
execute if score #arg value matches ..0 run scoreboard players set #test value 1
execute if score #arg value matches ..0 run scoreboard players operation #arg value *= #-1 value

#msec (2 digits, second digit is either 0 or 5)
scoreboard players operation #compareTimeMsec value = #arg value
scoreboard players operation #compareTimeMsec value %= #20 value
scoreboard players operation #compareTimeMsec2 value = #compareTimeMsec value
scoreboard players operation #compareTimeMsec2 value %= #2 value
execute if score #compareTimeMsec2 value matches 1 run scoreboard players set #compareTimeMsec2 value 5
scoreboard players operation #compareTimeMsec value /= #2 value
#seconds
scoreboard players operation #compareTimeSec value = #arg value
scoreboard players operation #compareTimeSec value /= #20 value
scoreboard players operation #compareTimeSec value %= #60 value
#minutes
scoreboard players operation #compareTimeMin value = #arg value
scoreboard players operation #compareTimeMin value /= #1200 value

#now store it
#negative (ahead)
execute if score #test value matches 1 if score #compareTimeSec value matches ..9 run data modify storage phan:data print.time_compare set value '["",{"text":"(-","color":"green","bold":true},{"score":{"name":"#compareTimeMin","objective":"value"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"#compareTimeSec","objective":"value"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"#compareTimeMsec","objective":"value"},"color":"green","bold":true},{"score":{"name":"#compareTimeMsec2","objective":"value"},"color":"green","bold":true},{"text":")","color":"green","bold":true}]'
execute if score #test value matches 1 if score #compareTimeSec value matches 10.. run data modify storage phan:data print.time_compare set value '["",{"text":"(-","color":"green","bold":true},{"score":{"name":"#compareTimeMin","objective":"value"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"#compareTimeSec","objective":"value"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"#compareTimeMsec","objective":"value"},"color":"green","bold":true},{"score":{"name":"#compareTimeMsec2","objective":"value"},"color":"green","bold":true},{"text":")","color":"green","bold":true}]'
#positive (behind)
execute if score #test value matches 0 if score #compareTimeSec value matches ..9 run data modify storage phan:data print.time_compare set value '["",{"text":"(+","color":"#FF9999","bold":true},{"score":{"name":"#compareTimeMin","objective":"value"},"color":"#FF9999","bold":true},{"text":":0","color":"#FF9999","bold":true},{"score":{"name":"#compareTimeSec","objective":"value"},"color":"#FF9999","bold":true},{"text":".","color":"#FF9999","bold":true},{"score":{"name":"#compareTimeMsec","objective":"value"},"color":"#FF9999","bold":true},{"score":{"name":"#compareTimeMsec2","objective":"value"},"color":"#FF9999","bold":true},{"text":")","color":"#FF9999","bold":true}]'
execute if score #test value matches 0 if score #compareTimeSec value matches 10.. run data modify storage phan:data print.time_compare set value '["",{"text":"(+","color":"#FF9999","bold":true},{"score":{"name":"#compareTimeMin","objective":"value"},"color":"#FF9999","bold":true},{"text":":","color":"#FF9999","bold":true},{"score":{"name":"#compareTimeSec","objective":"value"},"color":"#FF9999","bold":true},{"text":".","color":"#FF9999","bold":true},{"score":{"name":"#compareTimeMsec","objective":"value"},"color":"#FF9999","bold":true},{"score":{"name":"#compareTimeMsec2","objective":"value"},"color":"#FF9999","bold":true},{"text":")","color":"#FF9999","bold":true}]'