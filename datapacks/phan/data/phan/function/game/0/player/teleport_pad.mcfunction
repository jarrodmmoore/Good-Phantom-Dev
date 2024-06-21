#start practice course
execute if entity @s[x=829,y=31,z=-1007,distance=..4] run function phan:game/0/player/start_practice_course

#teleporter at the end of the course
execute if entity @s[x=849,y=-6,z=-1044,distance=..4,tag=practiceCourse] run function phan:game/0/player/restart_practice_course
execute if entity @s[x=849,y=-6,z=-1044,distance=..4,tag=!practiceCourse] run function phan:game/0/player/warp_to_practice_area