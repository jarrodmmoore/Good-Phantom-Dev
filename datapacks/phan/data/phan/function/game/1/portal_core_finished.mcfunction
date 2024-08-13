#don't clip players into the portal...
execute as @a[gamemode=!spectator,distance=..20] if block ~ ~ ~ structure_void if block ~ ~-1 ~ barrier run tp @s ~ ~.5 ~
execute as @a[gamemode=!spectator,distance=..20] if block ~ ~-0.6 ~ end_portal_frame run tp @s ~ ~.5 ~

#light the portal!
fill ~-5 ~ ~-5 ~5 ~ ~5 end_portal replace barrier
fill ~-5 ~1 ~-5 ~5 ~1 ~5 orange_carpet replace structure_void
playsound minecraft:block.end_portal.spawn master @a[tag=doneWithIntro] ~ ~ ~ 1 1 0.3

#we're open
scoreboard players set @s editArg2 1

#tell player their time and give them a bonus
tag @a[tag=tellMe] remove tellMe
execute if score @s area0SpawnA matches 1 run tag @a[tag=playing,scores={pCurrentArea=1}] add tellMe
execute if score @s area0SpawnB matches 1 run tag @a[tag=playing,scores={pCurrentArea=2}] add tellMe
execute if score @s area0SpawnC matches 1 run tag @a[tag=playing,scores={pCurrentArea=3}] add tellMe
scoreboard players operation #findID value = @s playerID
execute as @a[tag=!playing] if score @s spectatingID = #findID value run tag @s add tellMe
tellraw @a[tag=tellMe] ["",{"text":" "}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.game.portal_is_open","color":"gold","italic":true}]
tellraw @a[tag=tellMe] ["",{"text":" "},{"text":" "},{"text":"\uE001 ","color":"white"},{"score":{"name":"#time2portalMin","objective":"value"}},{"text":":"},{"score":{"name":"#time2portalSec10","objective":"value"}},{"score":{"name":"#time2portalSec","objective":"value"}}]

#get bonus depending on how fast you completed the portal
#
# | 24,000 points is the base (you'd get this if you hit the target time on the dot)
# | -20 points for every tick behind the target time
# | +20 points for every tick ahead of the target time (up to a max of 40,000 total)
# | 0 points if you're a minute behind the target time
#
tag @a[tag=lastDonor] remove lastDonor
scoreboard players operation #findDonorID value = @s playerID
execute as @a[tag=playing] if score @s playerID = #findDonorID value run tag @s add lastDonor
scoreboard players set #bonus value 24000
scoreboard players operation #math value = #targetTimeTicks value
scoreboard players operation #math value -= #time2portalTicks value
#store this for later...
scoreboard players operation #timeCompare value = #math value
scoreboard players operation #math value *= #20 value
scoreboard players operation #bonus value += #math value
#bonus has upper limit of 40,000 points
execute if score #bonus value matches 40001.. run scoreboard players set #bonus value 40000
#never any bonus if we're in penalty time
execute if entity @a[tag=lastDonor,scores={pPenaltyTime=1..}] run scoreboard players set #bonus value 0
#if bonus is positive, add it to our score!
execute if score #bonus value matches 1.. run scoreboard players operation @a[tag=lastDonor] addPointsLater += #bonus value
#=====
#show the player what the target time was and how their time compared to it

#get target time in displayable format [X:XX]
scoreboard players operation #targetTimeSec value = #targetTimeTicks value
scoreboard players operation #targetTimeSec value /= #20 value
scoreboard players operation #targetTimeSec value %= #60 value
scoreboard players operation #targetTimeSec10 value = #targetTimeSec value
scoreboard players operation #targetTimeSec10 value /= #10 value
scoreboard players operation #targetTimeSec value %= #10 value
scoreboard players operation #targetTimeMin value = #targetTimeTicks value
scoreboard players operation #targetTimeMin value /= #1200 value

#are we ahead or behind? remember it for later
scoreboard players operation #timeCompareResult value = #timeCompare value

#if timeCompare is negative, negate it to be positive
execute if score #timeCompareResult value matches ..-1 run scoreboard players operation #timeCompare value *= #-1 value

#get time difference in displayable format [+/-X:XX:XX]
scoreboard players operation #timeCompareMsec10 value = #timeCompare value
scoreboard players operation #timeCompareMsec10 value %= #2 value
scoreboard players operation #timeCompareMsec10 value *= #5 value
scoreboard players operation #timeCompareMsec value = #timeCompare value
scoreboard players operation #timeCompareMsec value %= #20 value
scoreboard players operation #timeCompareMsec value /= #2 value

scoreboard players operation #timeCompareSec value = #timeCompare value
scoreboard players operation #timeCompareSec value /= #20 value
scoreboard players operation #timeCompareSec value %= #60 value
scoreboard players operation #timeCompareSec10 value = #timeCompareSec value
scoreboard players operation #timeCompareSec10 value /= #10 value
scoreboard players operation #timeCompareSec value %= #10 value
scoreboard players operation #timeCompareMin value = #timeCompare value
scoreboard players operation #timeCompareMin value /= #1200 value

#show target time, with comparison
#positive result means we were ahead or equal
execute if score #timeCompareResult value matches 0.. run tellraw @a[tag=tellMe] ["",{"text":" "},{"text":" "},{"text":"\uE012 ","color":"white"},{"score":{"name":"#targetTimeMin","objective":"value"}},{"text":":"},{"score":{"name":"#targetTimeSec10","objective":"value"}},{"score":{"name":"#targetTimeSec","objective":"value"}},{"text":" "},{"text":" "},{"text":"(-","color":"green","bold":true},{"score":{"name":"#timeCompareMin","objective":"value"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"#timeCompareSec10","objective":"value"},"color":"green","bold":true},{"score":{"name":"#timeCompareSec","objective":"value"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"#timeCompareMsec","objective":"value"},"color":"green","bold":true},{"score":{"name":"#timeCompareMsec10","objective":"value"},"color":"green","bold":true},{"text":")","color":"green","bold":true}]
#negative result means we were behind
execute if score #bonus value matches 1.. if score #timeCompareResult value matches ..-1 run tellraw @a[tag=tellMe] ["",{"text":" "},{"text":" "},{"text":"\uE012 ","color":"white"},{"score":{"name":"#targetTimeMin","objective":"value"}},{"text":":"},{"score":{"name":"#targetTimeSec10","objective":"value"}},{"score":{"name":"#targetTimeSec","objective":"value"}},{"text":" "},{"text":" "},{"text":"(+","color":"#FF9999","bold":true},{"score":{"name":"#timeCompareMin","objective":"value"},"color":"#FF9999","bold":true},{"text":":","color":"#FF9999","bold":true},{"score":{"name":"#timeCompareSec10","objective":"value"},"color":"#FF9999","bold":true},{"score":{"name":"#timeCompareSec","objective":"value"},"color":"#FF9999","bold":true},{"text":".","color":"#FF9999","bold":true},{"score":{"name":"#timeCompareMsec","objective":"value"},"color":"#FF9999","bold":true},{"score":{"name":"#timeCompareMsec10","objective":"value"},"color":"#FF9999","bold":true},{"text":")","color":"#FF9999","bold":true}]
execute if score #bonus value matches ..0 if score #timeCompareResult value matches ..-1 run tellraw @a[tag=tellMe] ["",{"text":" "},{"text":" "},{"text":"\uE012 ","color":"white"},{"score":{"name":"#targetTimeMin","objective":"value"}},{"text":":"},{"score":{"name":"#targetTimeSec10","objective":"value"}},{"score":{"name":"#targetTimeSec","objective":"value"}},{"text":" "},{"text":" "},{"text":"(+","color":"red","bold":true},{"score":{"name":"#timeCompareMin","objective":"value"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"name":"#timeCompareSec10","objective":"value"},"color":"red","bold":true},{"score":{"name":"#timeCompareSec","objective":"value"},"color":"red","bold":true},{"text":".","color":"red","bold":true},{"score":{"name":"#timeCompareMsec","objective":"value"},"color":"red","bold":true},{"score":{"name":"#timeCompareMsec10","objective":"value"},"color":"red","bold":true},{"text":")","color":"red","bold":true}]

#advancement for finishing all 3 portals in a row without going over target time
execute if score #timeCompareResult value matches 0.. run scoreboard players add @a[tag=lastDonor] targetTimesHit 1
execute if score #assist_enabled_scoreattack value matches 0 unless score #gameState value matches 0 run advancement grant @a[tag=lastDonor,scores={targetTimesHit=3..}] only phan:score_attack/eyes_on_the_prize

#advancement for using teleporter to finish portal under target time in pastel palace
execute if score #assist_enabled_scoreattack value matches 0 if score #chosenLevel value matches 1 if score #timeCompareResult value matches 0.. run advancement grant @a[tag=lastDonor,scores={teleportersUsed=1..}] only phan:score_attack/nice_shortcut

#=====

#announce our bonus
execute if score #bonus value matches 1.. if score #gameState value matches 0..1 run tellraw @a[tag=lastDonor] ["",{"text":" "},{"text":" "},{"translate":"gp.game.time_bonus","color":"white","italic":true},{"text":": ","color":"white","italic":true},{"score":{"name":"#bonus","objective":"value"}}]
execute if score #bonus value matches 1.. if score #gameState value matches 0..1 run tellraw @a[tag=tellMe,tag=!playing] ["",{"text":" "},{"text":" "},{"translate":"gp.game.time_bonus","color":"white","italic":true},{"text":": ","color":"white","italic":true},{"score":{"name":"#bonus","objective":"value"}}]
tellraw @a[tag=tellMe] ["",{"text":" "}]

#just in case...
scoreboard players set #pearlsNeeded value 0
tag @a[tag=tellMe] remove tellMe