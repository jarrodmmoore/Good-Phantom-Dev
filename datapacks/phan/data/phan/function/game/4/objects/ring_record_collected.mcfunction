#record id of a ring in our list of recently hit rings
scoreboard players add @s ringID 0
scoreboard players add @s[scores={ringID=..0}] hitRingA_head 1
scoreboard players set @s[scores={hitRingA_head=11..}] hitRingA_head 1
execute if score #vGameType value matches 2 run scoreboard players set @s[scores={hitRingA_head=7..}] hitRingA_head 1
scoreboard players add @s[scores={ringID=1..}] hitRingB_head 1
scoreboard players set @s[scores={hitRingB_head=11..}] hitRingB_head 1
execute if score #vGameType value matches 2 run scoreboard players set @s[scores={hitRingB_head=7..}] hitRingB_head 1

execute if entity @s[scores={ringID=..0,hitRingA_head=1}] run scoreboard players operation @s hitRing1a = #thisRingID value
execute if entity @s[scores={ringID=..0,hitRingA_head=2}] run scoreboard players operation @s hitRing2a = #thisRingID value
execute if entity @s[scores={ringID=..0,hitRingA_head=3}] run scoreboard players operation @s hitRing3a = #thisRingID value
execute if entity @s[scores={ringID=..0,hitRingA_head=4}] run scoreboard players operation @s hitRing4a = #thisRingID value
execute if entity @s[scores={ringID=..0,hitRingA_head=5}] run scoreboard players operation @s hitRing5a = #thisRingID value
execute if entity @s[scores={ringID=..0,hitRingA_head=6}] run scoreboard players operation @s hitRing6a = #thisRingID value
execute if entity @s[scores={ringID=..0,hitRingA_head=7}] run scoreboard players operation @s hitRing7a = #thisRingID value
execute if entity @s[scores={ringID=..0,hitRingA_head=8}] run scoreboard players operation @s hitRing8a = #thisRingID value
execute if entity @s[scores={ringID=..0,hitRingA_head=9}] run scoreboard players operation @s hitRing9a = #thisRingID value
execute if entity @s[scores={ringID=..0,hitRingA_head=10}] run scoreboard players operation @s hitRing10a = #thisRingID value

execute if entity @s[scores={ringID=1..,hitRingB_head=1}] run scoreboard players operation @s hitRing1b = #thisRingID value
execute if entity @s[scores={ringID=1..,hitRingB_head=2}] run scoreboard players operation @s hitRing2b = #thisRingID value
execute if entity @s[scores={ringID=1..,hitRingB_head=3}] run scoreboard players operation @s hitRing3b = #thisRingID value
execute if entity @s[scores={ringID=1..,hitRingB_head=4}] run scoreboard players operation @s hitRing4b = #thisRingID value
execute if entity @s[scores={ringID=1..,hitRingB_head=5}] run scoreboard players operation @s hitRing5b = #thisRingID value
execute if entity @s[scores={ringID=1..,hitRingB_head=6}] run scoreboard players operation @s hitRing6b = #thisRingID value
execute if entity @s[scores={ringID=1..,hitRingB_head=7}] run scoreboard players operation @s hitRing7b = #thisRingID value
execute if entity @s[scores={ringID=1..,hitRingB_head=8}] run scoreboard players operation @s hitRing8b = #thisRingID value
execute if entity @s[scores={ringID=1..,hitRingB_head=9}] run scoreboard players operation @s hitRing9b = #thisRingID value
execute if entity @s[scores={ringID=1..,hitRingB_head=10}] run scoreboard players operation @s hitRing10b = #thisRingID value