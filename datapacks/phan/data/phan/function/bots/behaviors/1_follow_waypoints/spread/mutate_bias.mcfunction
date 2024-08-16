execute store result score #math value run random value -3..3
execute store result score #math2 value run random value -3..3
scoreboard players operation @s botBiasX += #math value
scoreboard players operation @s botBiasZ += #math2 value
#clamp in range 0..10
scoreboard players set @s[scores={botBiasX=11..}] botBiasX 10
scoreboard players set @s[scores={botBiasX=..-1}] botBiasX 0
scoreboard players set @s[scores={botBiasZ=11..}] botBiasZ 10
scoreboard players set @s[scores={botBiasZ=..-1}] botBiasZ 0