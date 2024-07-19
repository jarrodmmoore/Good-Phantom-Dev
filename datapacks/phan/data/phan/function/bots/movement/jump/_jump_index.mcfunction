#what kind of jump are we doing?

#clear jump input
scoreboard players reset @s botJumpTimer

#super jump pad
execute if entity @s[tag=!botSpamJumpKey,scores={botJumpPadTimeHigh=1..}] run return run function phan:bots/movement/jump/high_pad_no_spam
execute if entity @s[tag=botSpamJumpKey,scores={botJumpPadTimeHigh=1..}] run return run function phan:bots/movement/jump/high_pad_spam

#jump pad
execute if entity @s[tag=!botSpamJumpKey,scores={botJumpPadTimeLow=1..}] run return run function phan:bots/movement/jump/low_pad_no_spam
execute if entity @s[tag=botSpamJumpKey,scores={botJumpPadTimeLow=1..}] run return run function phan:bots/movement/jump/low_pad_spam

#default: normal jump
execute if entity @s[tag=!botSpamJumpKey] run return run function phan:bots/movement/jump/normal_no_spam
execute if entity @s[tag=botSpamJumpKey] run function phan:bots/movement/jump/normal_spam