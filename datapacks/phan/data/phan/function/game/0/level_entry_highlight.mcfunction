execute if score #10Hz value matches 1 run particle entity_effect{color:[0.9,0.1,1.0,0.75]} ~ ~2.2 ~ 0.1 0.1 0.1 1 1 force @a[distance=..4,gamemode=adventure]
#transfer "nearPlayer" score to the player. when player right clicks, this score will be used to boot the correct level
scoreboard players operation @a[distance=..4,gamemode=adventure] nearPlayer = @s nearPlayer

#all nearby players should see personalized particle highlighting the thing in the middle of their hotbar
execute if score #2sec value matches 1 as @a[distance=..4,gamemode=adventure,scores={inputCooldown=..0}] at @s anchored eyes run particle instant_effect ^ ^-.7 ^1 0.02 0.02 0.02 0 1 force @s
execute if score #2sec value matches 11 as @a[distance=..4,gamemode=adventure,scores={inputCooldown=..0}] at @s anchored eyes run particle instant_effect ^ ^-.7 ^1 0.02 0.02 0.02 0 1 force @s
execute if score #2sec value matches 21 as @a[distance=..4,gamemode=adventure,scores={inputCooldown=..0}] at @s anchored eyes run particle instant_effect ^ ^-.7 ^1 0.02 0.02 0.02 0 1 force @s
execute if score #2sec value matches 31 as @a[distance=..4,gamemode=adventure,scores={inputCooldown=..0}] at @s anchored eyes run particle instant_effect ^ ^-.7 ^1 0.02 0.02 0.02 0 1 force @s

#if a player joined the server after someone else unlocked other levels, suggest they play Pastel Palace before anything else
#(reasoning: pastel is an easier level designed to teach players some important things)
execute unless score @s nearPlayer matches 1 as @a[distance=..4,gamemode=adventure,scores={anyDreamCompleted=0}] run function phan:game/0/level_entry_suggest_pastel_palace