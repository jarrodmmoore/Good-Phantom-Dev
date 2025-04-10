#executed by system

#spawn the puppet
scoreboard players set #success value 0
execute as @e[type=area_effect_cloud,tag=podiumData,scores={editArg1=3}] at @e[type=marker,tag=podiumSpawner,scores={versusSpawn=1,editArg1=3}] positioned ~2 ~ ~2 run function phan:game/5/top_3/spawn_player_puppet

#nothing happened? skip ahead to next placement
execute if score #success value matches 0 run return run scoreboard players add #gameTime value 18
#=====

#cause baby you're a firework
execute as @e[limit=1,sort=random,type=skeleton,tag=needSpread] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"small_ball",colors:[I;15435844],fade_colors:[I;5320730],has_trail:1b,has_twinkle:0b}]}}}}

#bots need spread out if there are multiple
scoreboard players set #varyTeleportNPC value 0
execute as @e[sort=random,type=skeleton,tag=needSpread] at @s run function phan:game/5/top_3/podium_varied_teleport

#clean up tag on puppets
tag @e[type=skeleton,tag=needSpread] remove needSpread

#still here? announce it
execute as @e[type=area_effect_cloud,tag=podiumData,scores={editArg1=3}] if score @s versusPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{selector:"@s"},{translate:"gp.versus.player_got_3rd_single",color:"gold",bold:true,with:[{score:{name:"@s",objective:"versusPoints"}}]}]
execute as @e[type=area_effect_cloud,tag=podiumData,scores={editArg1=3}] unless score @s versusPoints matches 1 run tellraw @a[tag=doneWithIntro] ["",{selector:"@s"},{translate:"gp.versus.player_got_3rd",color:"gold",bold:true,with:[{score:{name:"@s",objective:"versusPoints"}}]}]