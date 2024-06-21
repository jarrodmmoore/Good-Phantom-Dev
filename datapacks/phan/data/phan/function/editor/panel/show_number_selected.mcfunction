#we're counting using "execute as" since we don't want to count anything that was marked for death with a lifespan score
scoreboard players set #test value 0
execute as @e[tag=selected] unless score @s lifespan matches 1.. run scoreboard players add #test value 1
tellraw @s ["",{"text":"(","italic":true},{"score":{"name":"#test","objective":"value"},"italic":true},{"text":" selected)","italic":true}]