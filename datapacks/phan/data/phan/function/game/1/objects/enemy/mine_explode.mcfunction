#mine boosting is a thing :)
ride @s dismount
execute unless score #gameState value matches 4 at @s if entity @a[gamemode=adventure,scores={fallFlying=1},distance=..3] at @a[limit=1,sort=nearest,gamemode=adventure,scores={fallFlying=1},distance=..3] positioned ^ ^ ^-.2 run tp @s ~ ~ ~

#now explode! i'm pretty sure this will cause chain reactions with multiple mines, so that's fun.
execute unless score #gameState value matches 4 at @s run function phan:items/generic_explode
execute if score #gameState value matches 4 at @s run function phan:items/generic_explode_friendly