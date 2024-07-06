#if we had points being added gradually for visual effect, just add them all right now
execute if score @s addPointsLater matches 1.. run scoreboard players operation @s scoreCurrent += @s addPointsLater
execute if score @s addPointsLater matches 1.. run scoreboard players set @s addPointsLater 0

#save score
execute if score @s pCurrentArea matches 1 run scoreboard players operation @s scoreArea1 = @s scoreCurrent
execute if score @s pCurrentArea matches 2 run scoreboard players operation @s scoreArea2 = @s scoreCurrent
execute if score @s pCurrentArea matches 3 run scoreboard players operation @s scoreArea3 = @s scoreCurrent
scoreboard players operation @s scoreTotal += @s scoreCurrent
scoreboard players set @s scoreCurrent2 0

#advancement for entering with 100 combo and <1 sec on clock
execute if score #assist_enabled value matches 0 if score @s combo matches 100.. if score @s pTimeRemaining matches ..39 run advancement grant @s only phan:score_attack/cutting_it_close

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
scoreboard players set @s pTransitionProgress 100000
tag @s add noInventory

#summon camera!
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["camera","setup"]}
scoreboard players operation @e[tag=setup] playerID = @s playerID
tp @e[tag=camera,tag=setup,type=armor_stand] @s
gamemode spectator @s
spectate @e[limit=1,type=armor_stand,tag=camera,tag=setup] @s
scoreboard players set @s spectatingObject 2

#summon soul
execute at @e[limit=1,sort=nearest,tag=portalCore,type=marker] positioned ~ ~1 ~ run summon armor_stand ~ ~ ~ {Tags:["playerSoul","setup2"],Marker:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111127}}}]}
scoreboard players operation @e[tag=setup2] playerID = @s playerID

#camera and soul are temporary
scoreboard players set @e[type=armor_stand,tag=camera,tag=setup] lifespan 20
scoreboard players set @e[type=armor_stand,tag=playerSoul,tag=setup2] lifespan 20
execute as @e[type=armor_stand,tag=setup2] on passengers run scoreboard players set @s lifespan 20
tag @e[tag=setup] remove setup
tag @e[tag=setup2] remove setup2

#reset spawns
execute if score @s pCurrentArea matches 1 run function phan:game/1/spawning/reset_all_a
execute if score @s pCurrentArea matches 2 run function phan:game/1/spawning/reset_all_b
execute if score @s pCurrentArea matches 3 run function phan:game/1/spawning/reset_all_c

#stop music if this was the 3rd portal we finished
scoreboard players add @s actsFinished 1
execute if score @s actsFinished matches 3.. run function phan:bgm/stop_bgm_self


#=====
#ADVANCEMENTS

#advancement when we finish our last portal without having taken any damage
execute if score #assist_enabled value matches 0 run advancement grant @s[scores={actsFinished=3..,timesBeenHit=..0}] only phan:good_phantom/sound_sleeper

#advancement when we finish a single act without dropping combo
execute if score #assist_enabled value matches 0 run advancement grant @s[scores={combosDropped=..0}] only phan:score_attack/full_combo

#advancement when we finish act 2 of neon nightway without shooting any targets
execute if score #assist_enabled value matches 0 if score #chosenLevel value matches 4 run advancement grant @s[scores={targetsShot=..0,pCurrentArea=2}] only phan:good_phantom/not_in_my_3d_platformer

#advancement when we finish act 3 of moonlit mountains having run 3 full laps
execute if score #gameState value matches 1 if score #assist_enabled value matches 0 if score #chosenLevel value matches 2 run advancement grant @s[scores={lap=2..,pCurrentArea=3}] only phan:score_attack/yeah_ive_got_time

#=====


#refresh skybox (sometimes it gets messed up...)
scoreboard players operation @s skyboxSet = @s skybox

#stop music if the level said so
execute if score #multiplayer value matches 0 if score @s pCurrentArea matches 1 if score #portal1StopsMusic value matches 1 run stopsound @s record
execute if score #multiplayer value matches 0 if score @s pCurrentArea matches 1 if score #portal1StopsMusic value matches 1 run scoreboard players set @s musicTime 100
execute if score #multiplayer value matches 0 if score @s pCurrentArea matches 2 if score #portal2StopsMusic value matches 1 run stopsound @s record
execute if score #multiplayer value matches 0 if score @s pCurrentArea matches 2 if score #portal2StopsMusic value matches 1 run scoreboard players set @s musicTime 100
execute if score #multiplayer value matches 0 if score @s pCurrentArea matches 3 if score #portal3StopsMusic value matches 1 run stopsound @s record
execute if score #multiplayer value matches 0 if score @s pCurrentArea matches 3 if score #portal3StopsMusic value matches 1 run scoreboard players set @s musicTime 100

#flash split time in time attack mode
scoreboard players operation @s splitTime = @s rawTime
scoreboard players add @s splitTime 1
execute if score #gameState value matches 3 run scoreboard players set @s hudFlashTime 30

#next area...
execute if score #multiplayer value matches 0 run scoreboard players add @s pCurrentArea 1
scoreboard players set @s pTimerGoal 0
execute if score #multiplayer value matches 0 run function phan:levels/_index_upcoming_timer
scoreboard players set @s scoreShow 0
scoreboard players set @s currentLoad 0
scoreboard players set @s previousLoad 0