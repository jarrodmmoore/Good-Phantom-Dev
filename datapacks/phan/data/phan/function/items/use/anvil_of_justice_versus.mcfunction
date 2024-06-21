#try to hit player in 1st or near 1st
execute if score #success value matches 0 as @a[tag=playing,gamemode=adventure,scores={itemPosition=1}] at @s run function phan:items/anvil_spawn_on_player
execute if score #success value matches 0 as @a[tag=playing,gamemode=adventure,scores={itemPosition=2}] at @s run function phan:items/anvil_spawn_on_player
execute if score #success value matches 0 as @a[tag=playing,gamemode=adventure,scores={itemPosition=3}] at @s run function phan:items/anvil_spawn_on_player
execute if score #success value matches 0 as @a[tag=playing,gamemode=adventure,scores={itemPosition=4}] at @s run function phan:items/anvil_spawn_on_player
execute if score #success value matches 0 as @a[tag=playing,gamemode=adventure,scores={itemPosition=5}] at @s run function phan:items/anvil_spawn_on_player