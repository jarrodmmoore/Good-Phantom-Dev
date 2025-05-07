#precondition: wpMaxX, wpMinX, wpMaxZ, wpMinZ, coord_xx, coord_zz are all set

#here, we set our bias of where we prefer to be inside a lane depending on where the last spread happened

#bias should end up in range 0..10

#x bias
scoreboard players operation #rangeX value = #wpMaxX value
scoreboard players operation #rangeX value -= #wpMinX value
scoreboard players operation @s botBiasX = #coord_xx value
scoreboard players operation @s botBiasX -= #wpMinX value
scoreboard players operation @s botBiasX *= #100 value
scoreboard players operation @s botBiasX /= #rangeX value
scoreboard players operation @s botBiasX /= #10 value

#z bias
scoreboard players operation #rangeZ value = #wpMaxZ value
scoreboard players operation #rangeZ value -= #wpMinZ value
scoreboard players operation @s botBiasZ = #coord_zz value
scoreboard players operation @s botBiasZ -= #wpMinZ value
scoreboard players operation @s botBiasZ *= #100 value
scoreboard players operation @s botBiasZ /= #rangeZ value
scoreboard players operation @s botBiasZ /= #10 value

#clamp final value in 0..10
scoreboard players set @s[scores={botBiasX=11..}] botBiasX 10
scoreboard players set @s[scores={botBiasX=..-1}] botBiasX 0
scoreboard players set @s[scores={botBiasZ=11..}] botBiasZ 10
scoreboard players set @s[scores={botBiasZ=..-1}] botBiasZ 0

#if range was 0 on some axis, do a completely random bias on that axis
execute if score #rangeX value matches 0 store result score @s botBiasX run random value 0..10
execute if score #rangeZ value matches 0 store result score @s botBiasZ run random value 0..10