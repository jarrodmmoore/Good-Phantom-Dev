#kill whichever bot controller was created last
execute in overworld as @e[type=block_display,tag=botController] if score @s botID = #botCount value run function phan:game/2/bots/destroy_bot_controller

#faster cooldown
scoreboard players set @s[type=player] inputCooldown 4