#if there is a block beneath us and a slab in front of us, don't bother jumping
execute unless block ~ ~-1 ~ #phan:not_solid if block ^ ^ ^0.5 #minecraft:slabs[type=bottom] run return 0

#still here? do it
function phan:bots/movement/jump/normal_no_spam