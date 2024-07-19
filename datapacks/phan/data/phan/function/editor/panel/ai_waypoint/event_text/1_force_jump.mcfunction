tellraw @s ["",{"text":"(event: force jump)","italic":true}]
execute if score @s AIBC_modifier matches 0 run tellraw @s ["",{"text":"(instant)","italic":true}]
execute if score @s AIBC_modifier matches 1.. run tellraw @s ["",{"text":"(delayed ","italic":true},{"score":{"name":"@s","objective":"AIBC_modifier"},"italic":true},{"text":" ticks)","italic":true}]
execute if score @s AIBC_modifier matches ..-1 run tellraw @s ["",{"text":"(force jump at next ledge)","italic":true}]