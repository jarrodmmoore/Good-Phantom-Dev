#count up age
scoreboard players add @s age 1

#stop doing damage when we stop falling
execute unless score @s editArg1 matches 1 if score @s age matches 10.. if entity @s[nbt={OnGround:1b}] run scoreboard players set @s editArg1 1

#while falling: hit players on the head
execute unless score @s editArg1 matches 1 positioned ~-.5 ~-2 ~-.5 run damage @a[gamemode=adventure,dx=1,dy=1,dz=1,limit=1] 4 mob_attack by @s from @s
execute if score #botsEnabled value matches 1.. unless score @s editArg1 matches 1 positioned ~-.5 ~-2 ~-.5 run damage @e[tag=ai,type=zombie,dx=1,dy=1,dz=1,limit=1] 4 mob_attack by @s from @s


#act like a speed pad (because we ARE one!)
execute positioned ~-1 ~-1 ~-1 as @a[gamemode=adventure,dx=2,dy=2,dz=2] at @s run function phan:movement/speed_pad
execute if score #botsEnabled value matches 1.. positioned ~-1 ~-1 ~-1 as @e[tag=ai,type=zombie,dx=2,dy=2,dz=2] at @s run function phan:bots/movement/speed_pad

#keep visual child alive
execute on passengers run scoreboard players set @s lifespan 3

#child gets darker when we're low on life
scoreboard players operation #percent value = @s lifespan
execute if score @s lifespan matches ..100 on passengers run function phan:items/speed_pad_darken