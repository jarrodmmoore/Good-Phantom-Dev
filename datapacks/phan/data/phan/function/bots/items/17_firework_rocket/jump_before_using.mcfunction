#prepare to use
tag @s add botUseItemSoon
scoreboard players set @s botItemThinkTime 8

#jump
scoreboard players set @s botJumpTimer 0
tag @s[scores={botSkill=3..}] add botSpamJumpKey