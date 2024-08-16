#executed by a botController

execute if score @s lap > #relevantLapMax value run scoreboard players operation #relevantLapMax value = @s lap
execute if score @s lap < #relevantLapMin value run scoreboard players operation #relevantLapMin value = @s lap