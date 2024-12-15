#quit out if bad data
execute if entity @s[type=marker] unless score @s AIBC_id matches -2147483648..2147483647 run return 0

#quit out immediately if we're already targeting this thing
scoreboard players operation #checkID value = @s AIBC_id
execute as @e[tag=botSelf,type=zombie,distance=..1] if function phan:bots/reaction/forced_redirect_check_if_redundant run return 0

#keep checking really fast if we're kinda sorta in range
scoreboard players set @e[tag=botSelf,type=zombie,distance=..1] botReactionTimer 2

#do nothing if out of bounds
execute if score @s AIBC_modifier matches ..0 run return 0
execute if entity @s[scores={AIBC_modifier=9},distance=10..] run return 0
execute if entity @s[scores={AIBC_modifier=8},distance=9..] run return 0
execute if entity @s[scores={AIBC_modifier=7},distance=8..] run return 0
execute if entity @s[scores={AIBC_modifier=6},distance=7..] run return 0
execute if entity @s[scores={AIBC_modifier=5},distance=6..] run return 0
execute if entity @s[scores={AIBC_modifier=4},distance=5..] run return 0
execute if entity @s[scores={AIBC_modifier=3},distance=4..] run return 0
execute if entity @s[scores={AIBC_modifier=2},distance=3..] run return 0
execute if entity @s[scores={AIBC_modifier=1},distance=2..] run return 0

#redirect!
function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target
execute as @e[tag=botSelf,type=zombie,distance=..1] run function phan:bots/reaction/forced_redirect_go