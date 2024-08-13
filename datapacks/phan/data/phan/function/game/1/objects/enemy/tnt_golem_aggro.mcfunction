#find target
scoreboard players operation #findTarget value = @s targetID
execute as @a[tag=playing,distance=..50] if score @s playerID = #findTarget value run tag @s add tntGolemTarget

#face target
execute facing entity @a[limit=1,tag=tntGolemTarget,distance=..50] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

#make noise when we first notice player
execute if score @s editArg2 matches 0 run playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 3.5 0.66
execute if score @s editArg2 matches 0 run playsound minecraft:block.grindstone.use master @a ~ ~ ~ 3.5 0.9
execute if score @s editArg2 matches 0 run scoreboard players set @s editArg2 10

#shoot
scoreboard players add @s editArg2 1
execute if score @s editArg2 matches 25.. unless score @s editArg3 matches 1.. run function phan:game/1/objects/enemy/tnt_golem_throw_think
#i also added the restriction that the golem must be holding a tnt (have the correct model) in order to initiate tate an attack.
#this check is probably redundant, but you never know. i just want this to look good no matter what

#cleanup
tag @a[tag=tntGolemTarget,distance=..50] remove tntGolemTarget