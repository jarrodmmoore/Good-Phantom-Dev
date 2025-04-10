summon item ~ ~2 ~ {Tags:["checkValid","stay","setMe"],NoGravity:0b,Glowing:1b,Item:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{translate:"gp.item.energy_potion",color:"aqua",bold:true,italic:false},"minecraft:custom_data":{item:1b,rightclick:1b,energyPotion:1b}}}}
particle instant_effect ~ ~2 ~ 0 0 0 0.2 10 force
execute at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1.5 1.25

function phan:game/1/spawning/spawn__give_generic_data
tag @e[tag=setMe,type=item,distance=..2] remove setMe