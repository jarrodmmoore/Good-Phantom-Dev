scoreboard players remove @s energy 3

#we damage anything we touch
scoreboard players set @s bodyHitbox 20

#give us a strong boost next time we touch the ground (assuming that happens within 1 sec from now)
scoreboard players set @s boostBuffer 120

#feedback
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.1
playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.8

#cooldown / input management
scoreboard players set @s inputCooldownD 16
scoreboard players set @s bufferInput0 0
scoreboard players reset @s carrotInput