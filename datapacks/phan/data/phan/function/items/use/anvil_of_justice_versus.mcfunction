#try to hit player in 1st or near 1st
execute if score #success value matches 0 as @a[tag=playing,tag=!dontgethit,gamemode=adventure,scores={itemPosition=1}] at @s run function phan:items/anvil_spawn_on_player
execute if score #success value matches 0 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=!dontgethit,scores={itemPosition=1}] at @s run function phan:items/anvil_spawn_on_player

execute if score #success value matches 0 as @a[tag=playing,tag=!dontgethit,gamemode=adventure,scores={itemPosition=2}] at @s run function phan:items/anvil_spawn_on_player
execute if score #success value matches 0 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=!dontgethit,scores={itemPosition=2}] at @s run function phan:items/anvil_spawn_on_player

execute if score #success value matches 0 as @a[tag=playing,tag=!dontgethit,gamemode=adventure,scores={itemPosition=3}] at @s run function phan:items/anvil_spawn_on_player
execute if score #success value matches 0 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=!dontgethit,scores={itemPosition=3}] at @s run function phan:items/anvil_spawn_on_player

execute if score #success value matches 0 as @a[tag=playing,tag=!dontgethit,gamemode=adventure,scores={itemPosition=4}] at @s run function phan:items/anvil_spawn_on_player
execute if score #success value matches 0 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=!dontgethit,scores={itemPosition=4}] at @s run function phan:items/anvil_spawn_on_player

execute if score #success value matches 0 as @a[tag=playing,tag=!dontgethit,gamemode=adventure,scores={itemPosition=5}] at @s run function phan:items/anvil_spawn_on_player
execute if score #success value matches 0 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,tag=!dontgethit,scores={itemPosition=5}] at @s run function phan:items/anvil_spawn_on_player
