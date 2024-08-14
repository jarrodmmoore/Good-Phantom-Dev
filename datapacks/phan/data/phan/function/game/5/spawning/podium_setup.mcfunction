#chunks must be loaded! if not, try again later
scoreboard players set #test value 0
execute if loaded ~ ~ ~ if loaded ~4 ~ ~ if loaded ~ ~ ~4 if loaded ~4 ~ ~4 run scoreboard players set #test value 1
execute if score #test value matches 0 run return run tag @s add spawn_failed

#can't clone across dimensions afiak, so do some nonsense and hope spawn chunks smile upon us
execute if score #podiumSequenceDimension value matches 1 run function phan:game/5/spawning/podium_setup_overworld
execute if score #podiumSequenceDimension value matches 2 run function phan:game/5/spawning/podium_setup_nether
execute if score #podiumSequenceDimension value matches 3 run function phan:game/5/spawning/podium_setup_end