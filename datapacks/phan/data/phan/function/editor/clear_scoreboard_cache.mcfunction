scoreboard players add #clearCacheProgress value 1

#generic node stuff
execute if score #clearCacheProgress value matches 1 run scoreboard players reset * editNode
execute if score #clearCacheProgress value matches 2 run scoreboard players reset * editLoadArea
execute if score #clearCacheProgress value matches 3 run scoreboard players reset * editArea
execute if score #clearCacheProgress value matches 4 run scoreboard players reset * editYaw
execute if score #clearCacheProgress value matches 5 run scoreboard players reset * editPitch
execute if score #clearCacheProgress value matches 6 run scoreboard players reset * editArg1
execute if score #clearCacheProgress value matches 7 run scoreboard players reset * editArg2
execute if score #clearCacheProgress value matches 8 run scoreboard players reset * editArg3

#trigger volumes
execute if score #clearCacheProgress value matches 9 run scoreboard players reset * checkMinX
execute if score #clearCacheProgress value matches 9 run scoreboard players reset * checkMinY
execute if score #clearCacheProgress value matches 10 run scoreboard players reset * checkMinZ
execute if score #clearCacheProgress value matches 10 run scoreboard players reset * checkMaxX
execute if score #clearCacheProgress value matches 11 run scoreboard players reset * checkMaxY
execute if score #clearCacheProgress value matches 11 run scoreboard players reset * checkMaxZ

#checkpoint visual lines
execute if score #clearCacheProgress value matches 12 run scoreboard players reset * editNode
execute if score #clearCacheProgress value matches 12 run scoreboard players reset * editNode
execute if score #clearCacheProgress value matches 13 run scoreboard players reset * editNode
execute if score #clearCacheProgress value matches 13 run scoreboard players reset * editNode
execute if score #clearCacheProgress value matches 14 run scoreboard players reset * editNode
execute if score #clearCacheProgress value matches 14 run scoreboard players reset * editNode

#bot waypoints
execute if score #clearCacheProgress value matches 15 run scoreboard players reset * AIBC_id
execute if score #clearCacheProgress value matches 16 run scoreboard players reset * AIBC_dir1
execute if score #clearCacheProgress value matches 17 run scoreboard players reset * AIBC_dir2
execute if score #clearCacheProgress value matches 18 run scoreboard players reset * AIBC_dir3
execute if score #clearCacheProgress value matches 19 run scoreboard players reset * AIBC_dir4
execute if score #clearCacheProgress value matches 20 run scoreboard players reset * AIBC_event
execute if score #clearCacheProgress value matches 21 run scoreboard players reset * AIBC_modifier

#done once everything is cleared
execute if score #clearCacheProgress value matches 22.. run scoreboard players set #clearCacheProgress value 0