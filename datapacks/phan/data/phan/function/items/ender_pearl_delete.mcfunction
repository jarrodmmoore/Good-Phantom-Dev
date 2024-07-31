#nope
particle block_marker{block_state:"barrier"} ~ ~ ~ 0 0 0 0 1 force @a

#if owner is a bot, they should NOT be teleported
scoreboard players operation #checkID value = @s playerID
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #checkID value run scoreboard players set @s botTeleportTimer -1

#we must die
scoreboard players set @s lifespan 1