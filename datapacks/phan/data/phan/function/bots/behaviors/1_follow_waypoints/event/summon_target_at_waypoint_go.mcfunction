#someone else summoned the thing? don't try to spawn something with the same UUID, then...
execute if score #test value matches 1.. run return 0
#=====

#summon target
execute if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;777,0,0,10]}
#00000309-0000-0000-0000-00000000000a

#we did it
scoreboard players set #test value 1