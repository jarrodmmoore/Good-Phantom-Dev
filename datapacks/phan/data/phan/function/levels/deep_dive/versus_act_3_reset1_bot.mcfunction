#tp
function phan:bots/bot_generic_teleport {x:-3918,y:39,z:-6}

#after tp
execute at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2