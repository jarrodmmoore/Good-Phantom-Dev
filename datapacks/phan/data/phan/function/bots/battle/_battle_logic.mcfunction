#countdown for LOS checking to stuff
scoreboard players remove @s botBattleThinkTime 1
execute if score @s botBattleThinkTime matches ..0 run function phan:bots/battle/targeting/think

#if we're targeting something, try to continuously update target coordinates to where the target is
execute if score @s botTargetPriority matches 1.. run function phan:bots/battle/targeting/update_target_coordinates

#=====
#ITEM USAGE

#use heavy projectile?
scoreboard players remove @s[scores={inputCooldownC=1..}] inputCooldownC 1
scoreboard players remove @s[scores={botProjectileThinkTime=1..}] botProjectileThinkTime 1
execute if entity @s[scores={botProjectileThinkTime=..0,inputCooldownC=..0}] run function phan:bots/items/b1_heavy_projectile/think

#use bite?
scoreboard players remove @s[scores={inputCooldownD=1..}] inputCooldownD 1
scoreboard players remove @s[scores={botBiteThinkTime=1..}] botBiteThinkTime 1
execute if entity @s[scores={botBiteThinkTime=..0,inputCooldownD=..0}] run function phan:bots/items/b2_bite/think

#=====