#option 1: use waypoint's ceiling value
#(@s botTargetYYCeiling)

#option 2: use our height minus 1.5 blocks
scoreboard players operation #math2 value = @s location_yy
scoreboard players remove #math2 value 15
#if we're boosting from a firework, aim upward instead
execute if score @s botFireworkTime matches 30.. run scoreboard players add #math2 value 25
execute if score @s botFireworkTime matches 23..29 run scoreboard players add #math2 value 20
execute if score @s botFireworkTime matches 14..22 run scoreboard players add #math2 value 15

#choose the lower of the two heights
scoreboard players operation #math value = @s botTargetYYCeiling
execute if score #math2 value < #math value run scoreboard players operation #math value = #math2 value

#now split the height into two variables
#"test1" is decimal
scoreboard players operation #test1 value = #math value
scoreboard players operation #test1 value %= #10 value
#"math" is integer
scoreboard players operation #math value /= #10 value

#put in storage
execute store result storage phan:coords target_y int 1 run scoreboard players get #math value
execute store result storage phan:coords target_y_dec int 1 run scoreboard players get #test1 value