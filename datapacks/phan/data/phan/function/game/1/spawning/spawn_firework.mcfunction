#i don't intend on ever using this now that presents exist
#but if you want to spawn one of these in with the editor, go for it ig

summon item ~ ~ ~ {Tags:["checkValid","stay","setMe","firework","neverFizzle"],NoGravity:1b,Item:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:custom_name":{translate:"gp.item.firework_rocket",color:"yellow",italic:false}}}}

execute if score #noShoot value matches 1 run scoreboard players set @e[tag=setMe,type=item,distance=..2] hitstun 10

function phan:game/1/spawning/spawn__give_generic_data
tag @e[tag=setMe,type=item,distance=..2] remove setMe