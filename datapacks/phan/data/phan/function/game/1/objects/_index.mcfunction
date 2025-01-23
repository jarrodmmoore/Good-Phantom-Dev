#hitstun timer. used for... stuff?
scoreboard players remove @s[scores={hitstun=1..}] hitstun 1

#do stuff based on what we are
execute if entity @s[tag=groupA] run function phan:game/1/objects/_index_group_a
execute if entity @s[tag=groupB] run function phan:game/1/objects/_index_group_b
#yeah, i divided object types into two arbitrary groups to save a couple of tag checks
#this adds up, though! hundred of objects might be running this every tick.

#DELETE if we're no longer valid
execute if entity @s[tag=act1Spawn] run function phan:game/1/objects/check_valid_act1
execute if entity @s[tag=act2Spawn] run function phan:game/1/objects/check_valid_act2
execute if entity @s[tag=act3Spawn] run function phan:game/1/objects/check_valid_act3
execute if entity @s[tag=act4Spawn] run function phan:game/1/objects/check_valid_act4
#yeah, we could use function macros to do this kind of stuff now
#but
#1: it is 2023 and i'm not doing this in minecraft snapshots
#2: macro-ing 6 times in a function file is way slower than a few tag checks. would be especially bad since we often have over 100 entities running this