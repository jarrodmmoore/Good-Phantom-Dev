#if we had points being added gradually for visual effect, just add them all right now
execute if score @s addPointsLater matches 1.. run scoreboard players operation @s scoreCurrent += @s addPointsLater
execute if score @s addPointsLater matches 1.. run scoreboard players set @s addPointsLater 0

#advancement for finishing practice course with 100k points
execute if score #assist_enabled_scoreattack value matches 0 run advancement grant @s[scores={scoreCurrent=100000..}] only phan:score_attack/practice_makes_perfect

#clear inv
clear @s
scoreboard players set @s energy 0
scoreboard players set @s showEnemyCount 0
scoreboard players reset @s presentGoal
scoreboard players reset @s presentTime

#sgs2 means watching the transition between areas
scoreboard players set @s pSubGameState 2

#new sequence owo?
scoreboard players set @s pGameTime 100000
tag @s add noInventory

#summon camera!
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["camera","setup"]}
scoreboard players operation @e[tag=setup] playerID = @s playerID
tp @e[tag=camera,tag=setup,type=armor_stand] @s
gamemode spectator @s
spectate @e[limit=1,type=armor_stand,tag=camera,tag=setup] @s
scoreboard players set @s spectatingObject 2

#summon soul
execute at @e[limit=1,sort=nearest,tag=portalCore,type=marker] positioned ~ ~1 ~ run summon armor_stand ~ ~ ~ {Tags:["playerSoul","setup2"],Marker:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/object/soul"}}}]}
scoreboard players operation @e[tag=setup2] playerID = @s playerID

#camera and soul are temporary
scoreboard players set @e[type=armor_stand,tag=camera,tag=setup] lifespan 20
scoreboard players set @e[type=armor_stand,tag=playerSoul,tag=setup2] lifespan 20
execute as @e[type=armor_stand,tag=setup2] on passengers run scoreboard players set @s lifespan 20
tag @e[tag=setup] remove setup
tag @e[tag=setup2] remove setup2

#refresh skybox (sometimes it gets messed up...)
scoreboard players operation @s skyboxSet = @s skybox

#clear some values...
scoreboard players set @s scoreShow 0
scoreboard players set @s currentLoad 0
scoreboard players set @s previousLoad 0