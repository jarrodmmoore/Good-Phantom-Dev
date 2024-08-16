#this should be run by the armor stand with tag=botElytra
scoreboard players set #test value 0
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #test value
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #test value
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #test value

#cancel firework boost
execute on passengers if entity @s[tag=ai] run scoreboard players set @s[scores={botFireworkTime=1..}] botFireworkTime 0