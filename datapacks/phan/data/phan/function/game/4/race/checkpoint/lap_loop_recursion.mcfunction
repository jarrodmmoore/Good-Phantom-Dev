#only deal with relevant checkpoints
#(this time around, we only care about checkpoints that are "posCalc" points)
execute if score #check25relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=25}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/25
execute if score #check24relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=24}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/24
execute if score #check23relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=23}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/23
execute if score #check22relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=22}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/22
execute if score #check21relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=21}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/21

execute if score #check20relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=20}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/20
execute if score #check19relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=19}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/19
execute if score #check18relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=18}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/18
execute if score #check17relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=17}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/17
execute if score #check16relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=16}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/16

execute if score #check15relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=15}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/15
execute if score #check14relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=14}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/14
execute if score #check13relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=13}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/13
execute if score #check12relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=12}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/12
execute if score #check11relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=11}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/11

execute if score #check10relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=10}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/10
execute if score #check9relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=9}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/9
execute if score #check8relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=8}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/8
execute if score #check7relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=7}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/7
execute if score #check6relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=6}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/6

execute if score #check5relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=5}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/5
execute if score #check4relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=4}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/4
execute if score #check3relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=3}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/3
execute if score #check2relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=2}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/2
execute if score #check1relevant value matches 1 as @e[limit=1,type=marker,tag=posCalc,tag=checkpoint,scores={versusSpawn=1,editArg1=1}] at @s run function phan:game/4/race/checkpoint/operate_subsequent/1

#recursion until we've dealt with all relevant lap values
scoreboard players remove #lapRecursion value 1
execute if score #lapRecursion value >= #relevantLapMin value run function phan:game/4/race/checkpoint/lap_loop_recursion