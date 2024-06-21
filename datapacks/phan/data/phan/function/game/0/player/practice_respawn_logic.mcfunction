#respawn if we're in placed we shouldn't be
execute if entity @s[gamemode=adventure,scores={airTime=..1}] if block ~ ~-.5 ~ #phan:practice_area_respawn unless block ~ -55 ~ #phan:area_check run scoreboard players set @s respawn 1
execute if entity @s[gamemode=adventure,tag=!practiceCourse] if block ~ -50 ~ #phan:area_check run scoreboard players set @s respawn 1
execute if entity @s[gamemode=adventure,scores={location_y=..-20}] run scoreboard players set @s respawn 1
execute if entity @s[gamemode=adventure,tag=!practiceCourse,scores={location_y=..23}] run scoreboard players set @s respawn 1