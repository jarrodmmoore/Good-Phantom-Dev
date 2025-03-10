#don't let players in this level is it's marked as not selectable
scoreboard players set #success value 1
execute if score @s nearPlayer matches -2147483648..2147483647 store result storage phan:level_index level_id int 1 run scoreboard players get @s nearPlayer
execute if score @s nearPlayer matches -2147483648..2147483647 run function phan:game/0/level_entry_check_if_selectable with storage phan:level_index
execute if score #success value matches 0 run return run function phan:game/0/level_entry_inform_unselectable
#=====

execute if score #10Hz value matches 1 run particle entity_effect{color:[0.9,0.1,1.0,0.75]} ~ ~2.2 ~ 0.1 0.1 0.1 1 1 force @a[distance=..4,gamemode=adventure]
#transfer "nearPlayer" score to the player. when player right clicks, this score will be used to boot the correct level
scoreboard players operation @a[distance=..4] nearPlayer = @s nearPlayer

#revoke nearPlayer score if player is too far below us. we don't want players selecting the wrong level through a ceiling
execute store result score #coord_y value run data get entity @s Pos[1]
execute as @a[distance=..4] unless score @s location_y >= #coord_y value run scoreboard players reset @s nearPlayer

#all nearby players should see personalized particle highlighting the thing in the middle of their hotbar
execute if score #2sec value matches 1 as @a[distance=..4,scores={inputCooldown=..0,nearPlayer=0..}] at @s anchored eyes run particle instant_effect ^ ^-.7 ^1 0.02 0.02 0.02 0 1 force @s
execute if score #2sec value matches 11 as @a[distance=..4,scores={inputCooldown=..0,nearPlayer=0..}] at @s anchored eyes run particle instant_effect ^ ^-.7 ^1 0.02 0.02 0.02 0 1 force @s
execute if score #2sec value matches 21 as @a[distance=..4,scores={inputCooldown=..0,nearPlayer=0..}] at @s anchored eyes run particle instant_effect ^ ^-.7 ^1 0.02 0.02 0.02 0 1 force @s
execute if score #2sec value matches 31 as @a[distance=..4,scores={inputCooldown=..0,nearPlayer=0..}] at @s anchored eyes run particle instant_effect ^ ^-.7 ^1 0.02 0.02 0.02 0 1 force @s

#if a player joined the server after someone else unlocked other levels, suggest they play Pastel Palace before anything else
#(reasoning: pastel is an easier level designed to teach players some important things)
execute unless score @s nearPlayer matches 1 as @a[distance=..4,scores={anyDreamCompleted=0,nearPlayer=0..}] run function phan:game/0/level_entry_suggest_pastel_palace