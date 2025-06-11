scoreboard players remove @s energy 3

#give us a boost next time we touch the ground (assuming that happens within 1 sec from now)
scoreboard players set @s boostBuffer 20

#feedback
playsound minecraft:entity.breeze.wind_burst master @a

#cooldown / input management
scoreboard players set @s inputCooldownD 16
scoreboard players set @s bufferInput0 0
scoreboard players reset @s carrotInput