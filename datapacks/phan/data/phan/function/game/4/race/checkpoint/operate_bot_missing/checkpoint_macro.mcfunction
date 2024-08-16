#this is a macro not because of performance, but because i am lazy
#(this will be run so rarely that performance doesn't matter anyways...)

#count how many positions we need to hand out, here
scoreboard players set #recursions value 0
$execute as @e[type=block_display,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=botEntityMissing,tag=!vsHomeStretch,tag=!finished,scores={checkFake=$(checkFake)}] if score @s lap = #lapRecursion value run function phan:game/4/race/checkpoint/operate_bot_missing/mark_bot_rankable

#rank bots in order of how long they've been waiting
function phan:game/4/race/checkpoint/operate_bot_missing/rank_by_time_since_cp_recursive

#ok we gave y'all positions. now stop crying!
scoreboard players set #clearBotMissingFlags value 1