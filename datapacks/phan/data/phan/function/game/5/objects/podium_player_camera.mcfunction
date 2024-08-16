#stay alive as long as this function runs
scoreboard players set @s lifespan 10

#zoom out slightly at the end
execute if score #gameTime value matches 240.. if block ^ ^ ^-0.1 #phan:not_solid run tp @s ^ ^ ^-0.01