#count down the time we want to stay vigiliant
scoreboard players remove @s[scores={botPreparedToDodgeTrap=1..}] botPreparedToDodgeTrap 1
scoreboard players add @s[scores={botPreparedToDodgeTrap=..-1}] botPreparedToDodgeTrap 1

#are we shielding? tank it
execute if score @s shieldTime matches 1.. run return run return 0

#check for trap (mine or trapped chest)
scoreboard players set #test value 0
execute positioned ^ ^ ^2 if entity @e[tag=botRecognizesTrap,distance=..2] run scoreboard players set #test value 1

#test failed? exit, try again next tick
execute if score #test value matches 0 run return 0
#=====

# 0 = avoid trap, as planned
# 1 = don't avoid because we're safe
scoreboard players set #test value 0
scoreboard players operation #checkID value = @s playerID
#always safe to tank it if the mine is ours
execute positioned ^ ^ ^2 as @e[tag=botRecognizesTrap,distance=..2] if score @s playerID = #checkID value run scoreboard players set #test value 1
#safe to tank it if we're shielding
execute if entity @s[tag=botRival,scores={shieldTime=1..}] run scoreboard players set #test value 1
#if we're not the rival bot, don't eat the rival's mines
execute if entity @s[tag=!botRival,scores={shieldTime=1..}] positioned ^ ^ ^2 as @e[tag=botRecognizesTrap,distance=..2] unless score @s playerID = #botRivalID value run scoreboard players set #test value 1

#do alternate logic if we want to boost
execute if score #test value matches 1 run return 0
#=====

#DODGE ZONE

#trap is in range? execute our plan of strafing to the side for a moment
execute if score @s botPreparedToDodgeTrap matches 1.. run scoreboard players set @s botHookModifier 90
execute if score @s botPreparedToDodgeTrap matches ..-1 run scoreboard players set @s botHookModifier -90
scoreboard players set @s botHookModifierTime 5
scoreboard players set @s botPreparedToDodgeTrap 0