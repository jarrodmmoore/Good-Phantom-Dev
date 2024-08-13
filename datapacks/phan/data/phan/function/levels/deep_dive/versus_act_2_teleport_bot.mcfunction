#before tp
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.4 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.3 0.5 0.3 0 20

#tp
function phan:bots/bot_generic_teleport {x:-3966,y:20,z:119}
scoreboard players set @s[scores={checkFake=5}] checkFake 6

#after tp
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.4 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.3 0.5 0.3 0 20