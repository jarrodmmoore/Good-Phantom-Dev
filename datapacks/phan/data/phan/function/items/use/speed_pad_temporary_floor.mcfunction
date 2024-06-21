setblock ~ ~ ~ barrier
summon marker ~ ~ ~ {Tags:["setMyLife","temporaryBarrier"]}
scoreboard players set @e[tag=setMyLife] lifespan 5
tag @e[tag=setMyLife] remove setMyLife