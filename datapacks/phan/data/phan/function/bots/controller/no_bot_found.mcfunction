#oh no! she's gone!
tag @s add botEntityMissing

#put us on sidebar
execute if score #vGameType value matches 1 run function phan:bots/race/publish_positions

#race mode: might advance forward if it's been long enough since we hit a checkpoint
execute if score #vGameType value matches 1 run function phan:bots/controller/no_bot_found_consider_advancing_cp