#recall what trophies we can offer
function phan:game/5/calculate_trophy_offered

#nobody is ranked until i say so!!
tag @a[tag=doneWithIntro] remove podiumRanked
tag @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] remove podiumRanked

#(need at least 1 point to hit the podium)


#find 1st
scoreboard players set #highestPlayerScore value 1
execute as @a[tag=doneWithIntro] run function phan:game/5/top_3/check_best_points
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] run function phan:game/5/top_3/check_best_points
execute as @a[tag=doneWithIntro] if score @s versusPoints >= #highestPlayerScore value in overworld positioned 197 0 117 run function phan:game/5/top_3/assign_position {position:1}
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] if score @s versusPoints >= #highestPlayerScore value in overworld positioned 197 0 117 run function phan:game/5/top_3/assign_position {position:1}

#is 1st a human and was offered a trophy? try to record trophy
execute if score #math value matches 1.. as @a[tag=doneWithIntro] if score @s versusPoints >= #highestPlayerScore value run function phan:game/5/top_3/award_trophy_for_beating_bots {placement_score:30}


#find 2nd
scoreboard players set #highestPlayerScore value 1
execute as @a[tag=doneWithIntro,tag=!podiumRanked] run function phan:game/5/top_3/check_best_points
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!podiumRanked] run function phan:game/5/top_3/check_best_points
execute as @a[tag=doneWithIntro,tag=!podiumRanked] if score @s versusPoints >= #highestPlayerScore value in overworld positioned 197 0 117 run function phan:game/5/top_3/assign_position {position:2}
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!podiumRanked] if score @s versusPoints >= #highestPlayerScore value in overworld positioned 197 0 117 run function phan:game/5/top_3/assign_position {position:2}

#is 2nd a human and was offered a trophy? try to record trophy
execute if score #math value matches 1.. as @a[tag=doneWithIntro] if score @s versusPoints >= #highestPlayerScore value run function phan:game/5/top_3/award_trophy_for_beating_bots {placement_score:20}


#find 3rd
scoreboard players set #highestPlayerScore value 1
execute as @a[tag=doneWithIntro,tag=!podiumRanked] run function phan:game/5/top_3/check_best_points
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!podiumRanked] run function phan:game/5/top_3/check_best_points
execute as @a[tag=doneWithIntro,tag=!podiumRanked] if score @s versusPoints >= #highestPlayerScore value in overworld positioned 197 0 117 run function phan:game/5/top_3/assign_position {position:3}
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!podiumRanked] if score @s versusPoints >= #highestPlayerScore value in overworld positioned 197 0 117 run function phan:game/5/top_3/assign_position {position:3}

#is 3rd a human and was offered a trophy? try to record trophy
execute if score #math value matches 1.. as @a[tag=doneWithIntro] if score @s versusPoints >= #highestPlayerScore value run function phan:game/5/top_3/award_trophy_for_beating_bots {placement_score:10}


#clean up tag
tag @a[tag=podiumRanked] remove podiumRanked
tag @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=podiumRanked] remove podiumRanked