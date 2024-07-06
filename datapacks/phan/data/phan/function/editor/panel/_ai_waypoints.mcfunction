execute unless items entity @s hotbar.* piglin_spawn_egg unless items entity @s inventory.* piglin_spawn_egg run function phan:editor/panel/ai_waypoint/give_tools

#AIBC

#need values!

#menu title
tellraw @s ["",{"text":"\n==\\/== CREATE AI WAYPOINT ==\\/==","color":"#6666FF","bold":true}]

#waypoint parameters
tellraw @s ["",{"text":" "}]
#directions
tellraw @s[scores={AIBC_dir1=-2147483648..2147483647}] ["",{"text":"[set] ","color":"yellow","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s AIBC_dir1 "}},{"text":"AIBC_dir1 = "},{"score":{"name":"@s","objective":"AIBC_dir1"}}]
tellraw @s[scores={AIBC_dir2=-2147483648..2147483647}] ["",{"text":"[set] ","color":"yellow","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s AIBC_dir2 "}},{"text":"AIBC_dir2 = "},{"score":{"name":"@s","objective":"AIBC_dir2"}}]
tellraw @s[scores={AIBC_dir3=-2147483648..2147483647}] ["",{"text":"[set] ","color":"yellow","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s AIBC_dir3 "}},{"text":"AIBC_dir3 = "},{"score":{"name":"@s","objective":"AIBC_dir3"}}]
tellraw @s[scores={AIBC_dir4=-2147483648..2147483647}] ["",{"text":"[set] ","color":"yellow","bold":false,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s AIBC_dir4 "}},{"text":"AIBC_dir4 = "},{"score":{"name":"@s","objective":"AIBC_dir4"}}]
#event
execute if score @s AIBC_event matches 1.. run function phan:editor/panel/ai_waypoint/event_text/_index
tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_decrement"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_increment"}},{"text":"AIBC_event = "},{"score":{"name":"@s","objective":"AIBC_event"}}]
tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/modifier_decrement"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/modifier_increment"}},{"text":"AIBC_modifier = "},{"score":{"name":"@s","objective":"AIBC_modifier"}}]
execute if entity @s[tag=!eventBadSkill,tag=!eventHighSkill,scores={AIBC_event=1..}] run tellraw @s ["",{"text":"[High Skill]","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_skill_high"}},{"text":" "},{"text":"[Bad Decision]","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_skill_bad"}}]
execute if entity @s[tag=eventBadSkill,tag=!eventHighSkill,scores={AIBC_event=1..}] run tellraw @s ["",{"text":"[High Skill]","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_skill_high"}},{"text":" "},{"text":"[Bad Decision]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_skill_bad"}}]
execute if entity @s[tag=!eventBadSkill,tag=eventHighSkill,scores={AIBC_event=1..}] run tellraw @s ["",{"text":"[High Skill]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_skill_high"}},{"text":" "},{"text":"[Bad Decision]","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_skill_bad"}}]
execute if entity @s[tag=eventBadSkill,tag=eventHighSkill,scores={AIBC_event=1..}] run tellraw @s ["",{"text":"[High Skill]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_skill_high"}},{"text":" "},{"text":"[Bad Decision]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/event_skill_bad"}}]

tellraw @s ["",{"text":" "}]

#SELECT NEAREST
#MODIFY NEAREST

tellraw @s ["",{"text":"[reset all]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/zero"},"hoverEvent":{"action":"show_text","value":"set all properties to zero"}}]
tellraw @s ["",{"text":"[repair tags]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=AIBC,type=marker] run function phan:editor/panel/ai_waypoint/repair_tags"},"hoverEvent":{"action":"show_text","value":"repair tags and update rotation of all nodes in loading distance"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[back]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/ai_waypoint/back_to_home"},"hoverEvent":{"action":"show_text","value":"back"}}]

#feedback
playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0