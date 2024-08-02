#this system tries to handle checkpoint stuff as efficiently as possible

#note that after the first iteration we switch to a different function (lap_loop_recursion) that makes checkpoints run X_subsequent instead of X_first
#why?
#because i'm trying to kill two birds with one stone by handling both position calculation and trigger areas in the same go
#BUT-- checking the trigger areas on the checkpoints only needs to be done once, not for EVERY LAP, thus we have two sets of functions (second set doesn't bother with checking trigger areas)

#only deal with relevant checkpoints
#(gross use of @e here, but this is a neccesary evil since the checkpoints need to be processed in reverse order)

execute if score #check25exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=25}] at @s run function phan:game/4/race/checkpoint/operate/25
execute if score #checkDoMissingPlayers24 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:24}
execute if score #check24exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=24}] at @s run function phan:game/4/race/checkpoint/operate/24
execute if score #checkDoMissingPlayers23 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:23}
execute if score #check23exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=23}] at @s run function phan:game/4/race/checkpoint/operate/23
execute if score #checkDoMissingPlayers22 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:22}
execute if score #check22exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=22}] at @s run function phan:game/4/race/checkpoint/operate/22
execute if score #checkDoMissingPlayers21 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:21}
execute if score #check21exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=21}] at @s run function phan:game/4/race/checkpoint/operate/21
execute if score #checkDoMissingPlayers20 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:20}

execute if score #check20exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=20}] at @s run function phan:game/4/race/checkpoint/operate/20
execute if score #checkDoMissingPlayers19 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:19}
execute if score #check19exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=19}] at @s run function phan:game/4/race/checkpoint/operate/19
execute if score #checkDoMissingPlayers18 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:18}
execute if score #check18exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=18}] at @s run function phan:game/4/race/checkpoint/operate/18
execute if score #checkDoMissingPlayers17 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:17}
execute if score #check17exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=17}] at @s run function phan:game/4/race/checkpoint/operate/17
execute if score #checkDoMissingPlayers16 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:16}
execute if score #check16exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=16}] at @s run function phan:game/4/race/checkpoint/operate/16
execute if score #checkDoMissingPlayers15 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:15}

execute if score #check15exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=15}] at @s run function phan:game/4/race/checkpoint/operate/15
execute if score #checkDoMissingPlayers14 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:14}
execute if score #check14exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=14}] at @s run function phan:game/4/race/checkpoint/operate/14
execute if score #checkDoMissingPlayers13 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:13}
execute if score #check13exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=13}] at @s run function phan:game/4/race/checkpoint/operate/13
execute if score #checkDoMissingPlayers12 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:12}
execute if score #check12exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=12}] at @s run function phan:game/4/race/checkpoint/operate/12
execute if score #checkDoMissingPlayers11 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:11}
execute if score #check11exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=11}] at @s run function phan:game/4/race/checkpoint/operate/11
execute if score #checkDoMissingPlayers10 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:10}

execute if score #check10exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=10}] at @s run function phan:game/4/race/checkpoint/operate/10
execute if score #checkDoMissingPlayers9 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:9}
execute if score #check9exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=9}] at @s run function phan:game/4/race/checkpoint/operate/9
execute if score #checkDoMissingPlayers8 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:8}
execute if score #check8exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=8}] at @s run function phan:game/4/race/checkpoint/operate/8
execute if score #checkDoMissingPlayers7 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:7}
execute if score #check7exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=7}] at @s run function phan:game/4/race/checkpoint/operate/7
execute if score #checkDoMissingPlayers6 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:6}
execute if score #check6exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=6}] at @s run function phan:game/4/race/checkpoint/operate/6
execute if score #checkDoMissingPlayers5 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:5}

execute if score #check5exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=5}] at @s run function phan:game/4/race/checkpoint/operate/5
execute if score #checkDoMissingPlayers4 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:4}
execute if score #check4exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=4}] at @s run function phan:game/4/race/checkpoint/operate/4
execute if score #checkDoMissingPlayers3 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:3}
execute if score #check3exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=3}] at @s run function phan:game/4/race/checkpoint/operate/3
execute if score #checkDoMissingPlayers2 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:2}
execute if score #check2exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=2}] at @s run function phan:game/4/race/checkpoint/operate/2
execute if score #checkDoMissingPlayers1 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:1}
execute if score #check1exists value matches 1 as @e[type=marker,tag=checkpoint,scores={versusSpawn=1,editArg1=1}] at @s run function phan:game/4/race/checkpoint/operate/1
execute if score #checkDoMissingPlayers0 value matches 1 run function phan:game/4/race/checkpoint/operate_bot_missing/checkpoint_macro {checkFake:0}

#recursion until we've dealt with all relevant lap values
scoreboard players remove #lapRecursion value 1
execute if score #lapRecursion value >= #relevantLapMin value run function phan:game/4/race/checkpoint/lap_loop_recursion