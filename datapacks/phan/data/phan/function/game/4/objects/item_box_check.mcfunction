scoreboard players operation #thisGroupID value = @s editArg1

scoreboard players set #test value 0
execute as @a[tag=playing,gamemode=adventure,distance=..5,sort=nearest] run function phan:game/4/objects/item_box_try_collect

#if test comes back positive, this chest will break and we'll send a signal back to the source to spawn a new one
execute if score #test value matches 1 run function phan:game/4/objects/item_box_break