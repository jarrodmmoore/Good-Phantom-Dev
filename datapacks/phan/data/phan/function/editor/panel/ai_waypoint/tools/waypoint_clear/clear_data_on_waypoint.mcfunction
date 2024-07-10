#feedback
playsound block.lava.extinguish master @a ~ ~ ~ 2 1.6
particle explosion ~ ~.2 ~ 0 0 0 0 1 force

#clear EVERYTHING. (except our AIBC_id, that never changes!)
scoreboard players reset @s AIBC_dir1
scoreboard players reset @s AIBC_dir2
scoreboard players reset @s AIBC_dir3
scoreboard players reset @s AIBC_dir4
scoreboard players reset @s AIBC_event
scoreboard players reset @s AIBC_modifier
tag @s remove AIBC_hasRoute5
tag @s remove AIBC_hookLeft
tag @s remove AIBC_hookRight
tag @s remove AIBC_midAir
tag @s remove AIBC_requireGround
tag @s remove eventBadSkill
tag @s remove eventHighSkill
#this is the only place optimal spread gets cleared
scoreboard players reset @s AIBC_spread_x
scoreboard players reset @s AIBC_spread_z