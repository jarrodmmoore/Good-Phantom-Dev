scoreboard players reset @s dropSword
scoreboard players reset @s dropLightBlue
scoreboard players reset @s dropFlint

#do the bound input
execute if score @s dropKeyBind matches ..0 run scoreboard players set @s bufferInput0 10
execute if score @s dropKeyBind matches 1 run scoreboard players set @s bufferInput1 10
execute if score @s dropKeyBind matches 2 run scoreboard players set @s bufferInput2 10
execute if score @s dropKeyBind matches 3 run scoreboard players set @s bufferInput3 10
execute if score @s dropKeyBind matches 4.. run scoreboard players set @s bufferInput4 10