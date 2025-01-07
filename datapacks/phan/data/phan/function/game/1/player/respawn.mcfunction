#we don't rely on hard-cording. we now handle this with nodes placed on the level
function phan:game/4/race/respawn

#...but mappers can still override the node stuff if they really want to.
#some of the stock levels rely on this, so i had to keep it around
function phan:level_manager/load/function_respawn_score_attack with storage phan_dream_active:dream_data

#particles
execute at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2