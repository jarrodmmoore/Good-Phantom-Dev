#set think cooldown
scoreboard players set #random value 0
execute if score @s botSkill matches ..2 store result score #random value run random value 40..120
execute if score @s botSkill matches 3 store result score #random value run random value 20..70
execute if score @s botSkill matches 4 store result score #random value run random value 16..25
execute if score @s botSkill matches 5.. store result score #random value run random value 1..25
execute if entity @s[tag=vsHomeStretch,scores={botSkill=4..}] run scoreboard players set #random value 1
execute if entity @s[tag=vsHomeStretch,tag=botRival,scores={botSkill=2..}] run scoreboard players set #random value 15
scoreboard players operation @s botBoostThinkTime = #random value

#=====

#kick out if on boost input cooldown
execute if score @s inputCooldownB matches 1.. run return 0

#=====

#very easy bot will NEVER use boost
execute if score @s botSkill matches ..1 run return 0

#can never use if we don't have energy
execute if score @s energy matches ..2 run return 0

#don't use during hitstun
execute if score @s hitstun matches 1.. run return 0

#don't use if we're airborne or gliding
execute if score @s botMoveState matches 1..2 run return 0

#don't use if we're about to jump
execute if score @s botJumpTimer matches -2147483648..2147483647 run return 0

#don't use if we're looking at something
execute if score @s botTempRotTime matches 1.. run return 0
execute unless score @s botTargetID matches 0 run return 0

#easy bot won't use unless somewhat far back
execute if entity @s[scores={botSkill=2,itemLuck=..2}] run return 0

#normal bot won't use while in 1st
execute if entity @s[scores={botSkill=3,itemLuck=..1}] run return 0

#hard+ bot: don't use while under the effects of another boost type
execute if entity @s[tag=!vsHomeStretch,scores={botSkill=4..,botEffectSpeedPad=1..}] run return 0
execute if entity @s[scores={botSkill=4..,botEffectSpeedPad2=1..}] run return 0
execute if entity @s[tag=!vsHomeStretch,scores={botSkill=5..,botEffectSpeedPotion=1..}] run return 0

#hard+ bot will save at least 1 boost for shortcuts or the home stretch
execute if entity @s[tag=!vsHomeStretch,scores={botSkill=4..,energy=..5}] run return 0

#wait a bit before using boost if we're ahead of the rival bot
execute if score @s[tag=!botOnFinalLap,scores={botSkill=5..,energy=..9}] racePosDisplay < #botRivalPosition value run return 0
execute if score @s[scores={botSkill=..4,energy=..15}] racePosDisplay < #botRivalPosition value run return 0

#kick out if blinded
execute if score @s squidBlindTime matches 1.. run return 0

#=====

#random chance of not using boost
execute store result score #random value run random value 1..10

#low level bots like to stockpile boost before using it
execute if entity @s[scores={botSkill=..2,energy=..9}] run scoreboard players add #random value 1

#hard+ bots try to stay below 10 energy
execute if entity @s[scores={botSkill=4..,energy=10..}] run scoreboard players remove #random value 5

#hard+ bots on home stretch: unload boost
execute if entity @s[tag=vsHomeStretch,scores={botSkill=4..}] run scoreboard players set #random value 1

#rival bot is more likely to use, especially when behind
execute if entity @s[tag=botRival] run scoreboard players operation #random value -= @s itemPosition

#hard+ non-rival slightly more likely to use on the final lap
execute if entity @s[tag=!botRival,tag=botOnFinalLap,scores={botSkill=4..}] run function phan:bots/items/0_boost/think_if_near_end

#need to roll a 2 or lower to boost
execute if score #random value matches 3.. run return 0

#=====

#if we made it here: do boost!
function phan:bots/items/0_boost/use