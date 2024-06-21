scoreboard players set #showSidebarPoints value 0
execute if entity @s[gamemode=adventure] run scoreboard players operation #showSidebarPoints value += @s scoreCurrent2
scoreboard players operation #showSidebarPoints value += @s scoreArea1
scoreboard players operation #showSidebarPoints value += @s scoreArea2
scoreboard players operation #showSidebarPoints value += @s scoreArea3
scoreboard players operation #showSidebarPoints value += @s scoreBonus

#show what we've got no matter what
scoreboard players operation @s scoreSidebar = #showSidebarPoints value
scoreboard players display numberformat @s scoreSidebar styled {"color":"yellow"}