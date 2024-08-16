#assume innocent until proven guilty
scoreboard players set #assist_enabled value 0
scoreboard players set #assist_enabled_generic value 0
scoreboard players set #assist_enabled_scoreattack value 0
scoreboard players set #assist_enabled_portalrace value 0


#generic
execute if score #assist_movement value matches 1.. run scoreboard players set #assist_enabled_generic value 1
execute if score #assist_energy value matches 1.. run scoreboard players set #assist_enabled_generic value 1
execute if score #assist_enemies value matches 1.. run scoreboard players set #assist_enabled_generic value 1

#score attack / time attack
execute if score #assist_time_limit value matches 1.. run scoreboard players set #assist_enabled_scoreattack value 1
execute if score #assist_combos value matches 1.. run scoreboard players set #assist_enabled_scoreattack value 1
execute if score #assist_navigation value matches 1.. run scoreboard players set #assist_enabled_scoreattack value 1

#portal race
execute if score #assist_items value matches 1.. run scoreboard players set #assist_enabled_portalrace value 1
execute if score #assist_catch_up value matches 1.. run scoreboard players set #assist_enabled_portalrace value 1
execute if score #assist_rival_bot value matches 1.. run scoreboard players set #assist_enabled_portalrace value 1
execute if score #assist_race_end_time value matches 1.. run scoreboard players set #assist_enabled_portalrace value 1


#any "generic" assists also trigger the gamemode specific assist flags to get set
execute if score #assist_enabled_generic value matches 1.. run scoreboard players set #assist_enabled_scoreattack value 1
execute if score #assist_enabled_generic value matches 1.. run scoreboard players set #assist_enabled_portalrace value 1

#any assist will trigger the display flag
execute if score #assist_enabled_scoreattack value matches 1.. run scoreboard players set #assist_enabled value 1
execute if score #assist_enabled_portalrace value matches 1.. run scoreboard players set #assist_enabled value 1


#i am a champion of logic
#debate me bro