#consume energy
scoreboard players remove @s energy 3

#give us a boost next time we touch the ground (assuming that happens within 1 sec from now)
scoreboard players set @s boostBuffer 20

#feedback
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.55
playsound minecraft:entity.allay.item_taken master @a ~ ~ ~ 1 1.3

#cooldown / input management
scoreboard players set @s inputCooldownB 16
scoreboard players set @s[scores={inputCooldown=..1}] inputCooldown 2

#minimum time before we're allowed to think about other items
execute if entity @s[scores={botSkill=..2,botItemThinkTime=..14}] run scoreboard players set @s botItemThinkTime 15
execute if entity @s[scores={botSkill=3,botItemThinkTime=..10}] run scoreboard players set @s botItemThinkTime 11
execute if entity @s[scores={botSkill=4,botItemThinkTime=..6}] run scoreboard players set @s botItemThinkTime 7
execute if entity @s[scores={botSkill=5..,botItemThinkTime=..1}] run scoreboard players set @s botItemThinkTime 2