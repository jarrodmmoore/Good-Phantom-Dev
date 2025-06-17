setblock ~ ~ ~ barrier strict
summon marker ~ ~ ~ {Tags:["setMyLife","temporaryBarrier"]}
scoreboard players set @e[tag=setMyLife,type=marker,distance=..1] lifespan 5
tag @e[tag=setMyLife,type=marker,distance=..1] remove setMyLife