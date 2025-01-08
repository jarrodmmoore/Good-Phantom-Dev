#non-overworld dimensions must check boundaries at y=0 instead of y=-64
$scoreboard players set #activeDimension value $(teleport_dimension)
#non-overworld dimensions must check boundaries at y=0 instead of y=-64
scoreboard players set #checkLoadHeight value -64
execute unless score #activeDimension value matches 1 run scoreboard players set #checkLoadHeight value 0

#do this while we're here, too
function phan:level_manager/load/load_score_attack_act_specific