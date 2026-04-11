#what kind of jump are we doing?

#reset modifier for hook if not blinded by squid
execute unless score @s squidBlindTime matches 1.. run scoreboard players set @s[scores={botHookModifierTime=1..}] botHookModifier 0

#clear jump input
scoreboard players reset @s botJumpTimer

#no longer grounded
scoreboard players set @s onGround 0
#this should hopefully stop bots from doing an invalid double jump
scoreboard players set @s[scores={airTime=..10}] airTime 11

#before jumping, get a little extra horizontal velocity to mimic a sprint jump
#otherwise bots will be visibly slower than humans in areas with jumps
execute if score @s botSkill matches 3.. run scoreboard players set #botSprintJump value 1

#super jump pad
execute if entity @s[tag=!botSpamJumpKey,scores={botJumpPadTimeHigh=1..}] run return run function phan:bots/movement/jump/high_pad_no_spam
execute if entity @s[tag=botSpamJumpKey,scores={botJumpPadTimeHigh=1..}] run return run function phan:bots/movement/jump/high_pad_spam

#jump pad
execute if entity @s[tag=!botSpamJumpKey,scores={botJumpPadTimeLow=1..}] run return run function phan:bots/movement/jump/low_pad_no_spam
execute if entity @s[tag=botSpamJumpKey,scores={botJumpPadTimeLow=1..}] run return run function phan:bots/movement/jump/low_pad_spam

#default: normal jump
execute if entity @s[tag=!botSpamJumpKey] run return run function phan:bots/movement/jump/normal_no_spam
execute if entity @s[tag=botSpamJumpKey] run function phan:bots/movement/jump/normal_spam