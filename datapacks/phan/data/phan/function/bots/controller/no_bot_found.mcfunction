#oh no! she's gone!
tag @s add botEntityMissing

#put us on sidebar
execute if score #vGameType value matches 1 run function phan:bots/race/publish_positions
execute if score #vGameType value matches 2 run function phan:bots/battle/publish_positions

#race mode: might advance forward if it's been long enough since we hit a checkpoint
#also make sure we're still factored into the position assignment system
execute if score #vGameType value matches 1 run function phan:bots/controller/no_bot_found_consider_advancing_cp

#battle mode: make sure our ender eye placement is still factored into the position assignment system
execute if score #vGameType value matches 2 run function phan:bots/controller/keep_unloaded_bot_in_battle_ranking