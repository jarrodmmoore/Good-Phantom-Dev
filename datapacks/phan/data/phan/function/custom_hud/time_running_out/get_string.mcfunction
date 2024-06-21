#convert ticks remaining to seconds
scoreboard players operation #timerAddSec value = @s pTimeRemaining
scoreboard players operation #timerAddSec value /= #20 value
#get minutes
scoreboard players operation #timerAddMin value = #timerAddSec value
scoreboard players operation #timerAddMin value /= #60 value
#get decaseconds
scoreboard players operation #timerAddSec10 value = #timerAddSec value
scoreboard players operation #timerAddSec10 value %= #60 value
scoreboard players operation #timerAddSec10 value /= #10 value
#seconds
scoreboard players operation #timerAddSec value %= #10 value

#store it (turn red when 15 sec or less)
execute if score @s pTimeRemaining matches 321.. run data modify storage phan:data display.timer_add set value '["",{"text":"\\uE001"},{"text":" "},{"score":{"name":"#timerAddMin","objective":"value"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"#timerAddSec10","objective":"value"},"color":"white","bold":true},{"score":{"name":"#timerAddSec","objective":"value"},"color":"white","bold":true}]'
execute if score @s pTimeRemaining matches ..320 run data modify storage phan:data display.timer_add set value '["",{"text":"\\uE001","color":"red"},{"text":" "},{"score":{"name":"#timerAddMin","objective":"value"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"name":"#timerAddSec10","objective":"value"},"color":"red","bold":true},{"score":{"name":"#timerAddSec","objective":"value"},"color":"red","bold":true}]'