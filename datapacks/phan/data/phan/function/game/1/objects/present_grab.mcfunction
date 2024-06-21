tag @a[limit=1,sort=nearest,tag=playing] add catcher

#give data to player
scoreboard players operation #setTime value = @s editArg2
scoreboard players operation #setTime value *= #20 value
scoreboard players operation #setGoal value = @s editArg3
execute as @a[limit=1,tag=catcher] run function phan:game/1/objects/present_grab_inherit_data

#inherit catcher's ID
scoreboard players operation @s playerID = #setID value

#play sound for anyone spectating the catcher
tag @a[tag=tellMe] remove tellMe
tag @a[limit=1,tag=catcher] add tellMe
scoreboard players operation #findID value = @s playerID
execute as @a[tag=!playing] if score @s spectatingID = #findID value run tag @s add tellMe

#feedback
execute as @a[tag=tellMe] at @s run playsound minecraft:block.note_block.chime master @s ~ 100000 ~ 100000 .9
execute at @s run playsound minecraft:entity.boat.paddle_land master @a ~ ~ ~ 2.5 2

#clean up and mark self as grabbed
tag @a[tag=catcher] remove catcher
scoreboard players set @s lifespan 20
tag @s add claimedPresent