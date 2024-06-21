#msec (2 digits, second digit is either 0 or 5)
scoreboard players operation #showTimeMsec value = #arg value
scoreboard players operation #showTimeMsec value %= #20 value
scoreboard players operation #showTimeMsec2 value = #showTimeMsec value
scoreboard players operation #showTimeMsec2 value %= #2 value
execute if score #showTimeMsec2 value matches 1 run scoreboard players set #showTimeMsec2 value 5
scoreboard players operation #showTimeMsec value /= #2 value
#seconds
scoreboard players operation #showTimeSec value = #arg value
scoreboard players operation #showTimeSec value /= #20 value
scoreboard players operation #showTimeSec value %= #60 value
#minutes
scoreboard players operation #showTimeMin value = #arg value
scoreboard players operation #showTimeMin value /= #1200 value

#now store it
execute if score #showTimeSec value matches ..9 run data modify storage phan:data print.time set value '["",{"score":{"name":"#showTimeMin","objective":"value"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"#showTimeSec","objective":"value"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#showTimeMsec","objective":"value"},"color":"white"},{"score":{"name":"#showTimeMsec2","objective":"value"},"color":"white"}]'
execute if score #showTimeSec value matches 10.. run data modify storage phan:data print.time set value '["",{"score":{"name":"#showTimeMin","objective":"value"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"#showTimeSec","objective":"value"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#showTimeMsec","objective":"value"},"color":"white"},{"score":{"name":"#showTimeMsec2","objective":"value"},"color":"white"}]'
