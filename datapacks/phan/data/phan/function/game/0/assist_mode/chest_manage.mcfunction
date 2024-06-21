#is it irrseponsible for us to operate on every chest slot at 20Hz?
#probably

#but there's not much going on in Good Phantom's lobby so i think we can get away with it. shouldn't destroy TPS too hard


#set name of chest
#(i wanted this to be a dynamic ON/OFF message, but the text doesn't update until the client exits and re-enters the chest, so that's a bust)
data merge block ~ ~ ~ {CustomName:'{"translate":"gp.assist.assist_mode"}'}

#always-empty slots
#top row
item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.4 with air
item replace block ~ ~ ~ container.5 with air
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.7 with air
item replace block ~ ~ ~ container.8 with air
#middle row
item replace block ~ ~ ~ container.10 with air
item replace block ~ ~ ~ container.11 with air
#bottom row
item replace block ~ ~ ~ container.18 with air
item replace block ~ ~ ~ container.19 with air
item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.21 with air
item replace block ~ ~ ~ container.22 with air
item replace block ~ ~ ~ container.23 with air
item replace block ~ ~ ~ container.24 with air
item replace block ~ ~ ~ container.25 with air
item replace block ~ ~ ~ container.26 with air

#conditional stuff

#assist mode
execute if score #assist_enabled value matches 1.. run item replace block ~ ~ ~ container.9 with minecraft:red_dye[custom_model_data=1111101,custom_name='{"translate":"gp.assist.assist_mode","bold":true,"italic":false}',lore=['{"translate":"gp.misc.off","color":"gray","bold":false,"italic":false}','{"translate":"gp.misc.on","color":"yellow","bold":false,"italic":false}'],custom_data={assistMenu:1b,assistEnabled:1b}]
execute if score #assist_enabled value matches ..0 run item replace block ~ ~ ~ container.9 with minecraft:red_dye[custom_model_data=1111102,custom_name='{"translate":"gp.assist.assist_mode","bold":true,"italic":false}',lore=['{"translate":"gp.misc.off","color":"yellow","bold":false,"italic":false}','{"translate":"gp.misc.on","color":"gray","bold":false,"italic":false}'],custom_data={assistMenu:1b,assistEnabled:1b}]

#time limit
execute if score #assist_time_limit value matches ..0 run item replace block ~ ~ ~ container.12 with minecraft:red_dye[custom_model_data=1111111,custom_name='{"translate":"gp.assist.time_limit","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"gray","bold":false,"italic":false}'],custom_data={assistMenu:1b,assistTimeLimit:1b}]
execute if score #assist_time_limit value matches 1 run item replace block ~ ~ ~ container.12 with minecraft:red_dye[custom_model_data=1111112,custom_name='{"translate":"gp.assist.time_limit","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"gray","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.time_limit_easy","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistTimeLimit:1b}]
execute if score #assist_time_limit value matches 2.. run item replace block ~ ~ ~ container.12 with minecraft:red_dye[custom_model_data=1111113,custom_name='{"translate":"gp.assist.time_limit","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"yellow","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.time_limit_peaceful","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistTimeLimit:1b}]

#movement
execute if score #assist_movement value matches ..0 run item replace block ~ ~ ~ container.13 with minecraft:red_dye[custom_model_data=1111121,custom_name='{"translate":"gp.assist.movement","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"gray","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.movement_normal","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistMovement:1b}]
execute if score #assist_movement value matches 1 run item replace block ~ ~ ~ container.13 with minecraft:red_dye[custom_model_data=1111122,custom_name='{"translate":"gp.assist.movement","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"gray","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.movement_easy","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistMovement:1b}]
execute if score #assist_movement value matches 2.. run item replace block ~ ~ ~ container.13 with minecraft:red_dye[custom_model_data=1111123,custom_name='{"translate":"gp.assist.movement","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"yellow","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.movement_easy","bold":false,"italic":true,"color":"white"}','{"text":" "}','{"translate":"gp.assist.info.movement_peaceful_1","with":[{"translate":"item.minecraft.feather","color":"yellow","bold":false,"italic":true}],"bold":false,"italic":true,"color":"white"}','{"translate":"gp.assist.info.movement_peaceful_2","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistMovement:1b}]

#enemies
execute if score #assist_enemies value matches ..0 run item replace block ~ ~ ~ container.14 with minecraft:red_dye[custom_model_data=1111131,custom_name='{"translate":"gp.assist.enemies","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"gray","bold":false,"italic":false}'],custom_data={assistMenu:1b,assistEnemies:1b}]
execute if score #assist_enemies value matches 1 run item replace block ~ ~ ~ container.14 with minecraft:red_dye[custom_model_data=1111132,custom_name='{"translate":"gp.assist.enemies","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"gray","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.enemies_easy","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistEnemies:1b}]
execute if score #assist_enemies value matches 2.. run item replace block ~ ~ ~ container.14 with minecraft:red_dye[custom_model_data=1111133,custom_name='{"translate":"gp.assist.enemies","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"yellow","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.enemies_peaceful","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistEnemies:1b}]

#energy
execute if score #assist_energy value matches ..0 run item replace block ~ ~ ~ container.15 with minecraft:red_dye[custom_model_data=1111141,custom_name='{"translate":"gp.assist.energy","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"gray","bold":false,"italic":false}'],custom_data={assistMenu:1b,assistEnergy:1b}]
execute if score #assist_energy value matches 1 run item replace block ~ ~ ~ container.15 with minecraft:red_dye[custom_model_data=1111142,custom_name='{"translate":"gp.assist.energy","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"gray","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.energy_easy","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistEnergy:1b}]
execute if score #assist_energy value matches 2.. run item replace block ~ ~ ~ container.15 with minecraft:red_dye[custom_model_data=1111143,custom_name='{"translate":"gp.assist.energy","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.peaceful","color":"yellow","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.energy_peaceful","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistEnergy:1b}]

#combos
execute if score #assist_combos value matches ..0 run item replace block ~ ~ ~ container.16 with minecraft:red_dye[custom_model_data=1111151,custom_name='{"translate":"gp.assist.combos","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}'],custom_data={assistMenu:1b,assistCombos:1b}]
execute if score #assist_combos value matches 1.. run item replace block ~ ~ ~ container.16 with minecraft:red_dye[custom_model_data=1111152,custom_name='{"translate":"gp.assist.combos","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"yellow","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.combos_easy","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistCombos:1b}]

#navigation
execute if score #assist_navigation value matches ..0 run item replace block ~ ~ ~ container.17 with minecraft:red_dye[custom_model_data=1111161,custom_name='{"translate":"gp.assist.navigation","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"yellow","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"gray","bold":false,"italic":false}'],custom_data={assistMenu:1b,assistNavigation:1b}]
execute if score #assist_navigation value matches 1.. run item replace block ~ ~ ~ container.17 with minecraft:red_dye[custom_model_data=1111162,custom_name='{"translate":"gp.assist.navigation","bold":true,"italic":false}',lore=['{"translate":"options.difficulty.normal","color":"gray","bold":false,"italic":false}','{"translate":"options.difficulty.easy","color":"yellow","bold":false,"italic":false}','{"text":" "}','{"translate":"gp.assist.info.navigation_easy","bold":false,"italic":true,"color":"white"}'],custom_data={assistMenu:1b,assistNavigation:1b}]


#warning! scores won't be saved with assist mode on!
execute if score #assist_enabled value matches 1.. run item replace block ~ ~ ~ container.0 with minecraft:red_dye[custom_model_data=1111201,custom_name='{"translate":"gp.assist.info.scores_will_not_be_saved","with":[{"translate":"gp.assist.assist_mode","color":"#DD33FF","bold":false,"italic":false}],"bold":false,"italic":false}',lore=['{"text":" "}','{"translate":"gp.assist.info.advancements_will_not_be_granted","color":"white","with":[{"translate":"gp.assist.assist_mode","color":"#DD33FF","bold":false,"italic":false}],"bold":false,"italic":false}'],custom_data={assistMenu:1b}]
execute if score #assist_enabled value matches ..0 run item replace block ~ ~ ~ container.0 with air