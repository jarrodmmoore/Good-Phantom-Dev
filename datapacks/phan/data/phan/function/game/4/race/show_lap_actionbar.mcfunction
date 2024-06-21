#run by a player

#show fancy thing on actionbar

#get each digit
scoreboard players operation #lapDisplay1A value = @s lap
scoreboard players operation #lapDisplay1A value /= #10 value
scoreboard players operation #lapDisplay1B value = @s lap
scoreboard players operation #lapDisplay1B value %= #10 value
scoreboard players operation #lapDisplay2A value = #vLaps value
scoreboard players operation #lapDisplay2A value /= #10 value
scoreboard players operation #lapDisplay2B value = #vLaps value
scoreboard players operation #lapDisplay2B value %= #10 value
execute if score #lapDisplay1A value matches 10.. run scoreboard players set #lapDisplay1B value 9
execute if score #lapDisplay2A value matches 10.. run scoreboard players set #lapDisplay2B value 9

#X0/00
execute if score #lapDisplay1A value matches ..0 run data modify storage phan:data display.lap.digit1a set value '[{"text":""}]'
execute if score #lapDisplay1A value matches 1 run data modify storage phan:data display.lap.digit1a set value '[{"text":"\\uA917\\uF001"}]'
execute if score #lapDisplay1A value matches 2 run data modify storage phan:data display.lap.digit1a set value '[{"text":"\\uA918\\uF001"}]'
execute if score #lapDisplay1A value matches 3 run data modify storage phan:data display.lap.digit1a set value '[{"text":"\\uA919\\uF001"}]'
execute if score #lapDisplay1A value matches 4 run data modify storage phan:data display.lap.digit1a set value '[{"text":"\\uA920\\uF001"}]'
execute if score #lapDisplay1A value matches 5 run data modify storage phan:data display.lap.digit1a set value '[{"text":"\\uA921\\uF001"}]'
execute if score #lapDisplay1A value matches 6 run data modify storage phan:data display.lap.digit1a set value '[{"text":"\\uA922\\uF001"}]'
execute if score #lapDisplay1A value matches 7 run data modify storage phan:data display.lap.digit1a set value '[{"text":"\\uA923\\uF001"}]'
execute if score #lapDisplay1A value matches 8 run data modify storage phan:data display.lap.digit1a set value '[{"text":"\\uA924\\uF001"}]'
execute if score #lapDisplay1A value matches 9.. run data modify storage phan:data display.lap.digit1a set value '[{"text":"\\uA925\\uF001"}]'
#0X/00
execute if score #lapDisplay1B value matches ..0 run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA916\\uF001"}]'
execute if score #lapDisplay1B value matches 1 run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA917\\uF001"}]'
execute if score #lapDisplay1B value matches 2 run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA918\\uF001"}]'
execute if score #lapDisplay1B value matches 3 run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA919\\uF001"}]'
execute if score #lapDisplay1B value matches 4 run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA920\\uF001"}]'
execute if score #lapDisplay1B value matches 5 run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA921\\uF001"}]'
execute if score #lapDisplay1B value matches 6 run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA922\\uF001"}]'
execute if score #lapDisplay1B value matches 7 run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA923\\uF001"}]'
execute if score #lapDisplay1B value matches 8 run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA924\\uF001"}]'
execute if score #lapDisplay1B value matches 9.. run data modify storage phan:data display.lap.digit1b set value '[{"text":"\\uA925\\uF001"}]'
#00/X0
execute if score #lapDisplay2A value matches ..0 run data modify storage phan:data display.lap.digit2a set value '[{"text":""}]'
execute if score #lapDisplay2A value matches 1 run data modify storage phan:data display.lap.digit2a set value '[{"text":"\\uA917\\uF001"}]'
execute if score #lapDisplay2A value matches 2 run data modify storage phan:data display.lap.digit2a set value '[{"text":"\\uA918\\uF001"}]'
execute if score #lapDisplay2A value matches 3 run data modify storage phan:data display.lap.digit2a set value '[{"text":"\\uA919\\uF001"}]'
execute if score #lapDisplay2A value matches 4 run data modify storage phan:data display.lap.digit2a set value '[{"text":"\\uA920\\uF001"}]'
execute if score #lapDisplay2A value matches 5 run data modify storage phan:data display.lap.digit2a set value '[{"text":"\\uA921\\uF001"}]'
execute if score #lapDisplay2A value matches 6 run data modify storage phan:data display.lap.digit2a set value '[{"text":"\\uA922\\uF001"}]'
execute if score #lapDisplay2A value matches 7 run data modify storage phan:data display.lap.digit2a set value '[{"text":"\\uA923\\uF001"}]'
execute if score #lapDisplay2A value matches 8 run data modify storage phan:data display.lap.digit2a set value '[{"text":"\\uA924\\uF001"}]'
execute if score #lapDisplay2A value matches 9.. run data modify storage phan:data display.lap.digit2a set value '[{"text":"\\uA925\\uF001"}]'
#00/0X
execute if score #lapDisplay2B value matches ..0 run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA916\\uF001"}]'
execute if score #lapDisplay2B value matches 1 run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA917\\uF001"}]'
execute if score #lapDisplay2B value matches 2 run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA918\\uF001"}]'
execute if score #lapDisplay2B value matches 3 run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA919\\uF001"}]'
execute if score #lapDisplay2B value matches 4 run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA920\\uF001"}]'
execute if score #lapDisplay2B value matches 5 run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA921\\uF001"}]'
execute if score #lapDisplay2B value matches 6 run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA922\\uF001"}]'
execute if score #lapDisplay2B value matches 7 run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA923\\uF001"}]'
execute if score #lapDisplay2B value matches 8 run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA924\\uF001"}]'
execute if score #lapDisplay2B value matches 9.. run data modify storage phan:data display.lap.digit2b set value '[{"text":"\\uA925\\uF001"}]'

#show on actionbar
scoreboard players set @s actionbarDelay 35
title @s actionbar ["",{"text":"\uA914\uF001\uA912\uF001\uA913\uF001"},{"nbt":"display.lap.digit1a","storage":"phan:data","interpret":true},{"nbt":"display.lap.digit1b","storage":"phan:data","interpret":true},{"text":"\uA926\uF001"},{"nbt":"display.lap.digit2a","storage":"phan:data","interpret":true},{"nbt":"display.lap.digit2b","storage":"phan:data","interpret":true},{"text":"\uA915\uF001"}]