#can't modify a read-only level
#$execute store result score #test4 value run data get storage phan_dream_$(level_id):dream_data read_only 1
#execute unless score #test4 value matches 0 run return run function phan:level_manager/warn_read_only

#jk, we'll allow this. even for read-only levels
#======

#called with args
#$(level_id)

#associated armor stands gets its recorded scores wiped
$execute as @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={levelUID=$(level_id)}] run function phan:high_score/erase_level_scores

#re-summon all score displays
execute if score #gameState value matches 0 run function phan:high_score/display_start