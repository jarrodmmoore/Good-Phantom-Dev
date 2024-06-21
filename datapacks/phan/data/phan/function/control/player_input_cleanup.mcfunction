scoreboard players reset @s carrotInput

#cooldown for various items
scoreboard players remove @s[scores={inputCooldown=1..}] inputCooldown 1
scoreboard players remove @s[scores={inputCooldownA=1..}] inputCooldownA 1
scoreboard players remove @s[scores={inputCooldownB=1..}] inputCooldownB 1
scoreboard players remove @s[scores={inputCooldownC=1..}] inputCooldownC 1
scoreboard players remove @s[scores={inputCooldownD=1..}] inputCooldownD 1

#hurtful time, used to detect when damage was caused by an enemy and needs time punishment
scoreboard players remove @s[scores={hurtfulTime=1..}] hurtfulTime 1