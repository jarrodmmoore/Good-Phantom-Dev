#zero out x,y,z velocity
scoreboard players set #test value 0
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #test value
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #test value
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #test value

#cancel firework boost
scoreboard players set @s[scores={botFireworkTime=1..}] botFireworkTime 0