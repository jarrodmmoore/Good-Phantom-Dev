#is it irresponsible for us to operate on every chest slot at 20Hz?
#probably

#but there's not much going on in Good Phantom's lobby so i think we can get away with it. shouldn't destroy TPS too hard


#set name of chest
#(i wanted this to be a dynamic ON/OFF message, but the text doesn't update until the client exits and re-enters the chest, so that's a bust)
data merge block ~ ~ ~ {CustomName:{translate:"gp.assist.assist_mode"}}

#always-empty slots
#top row
item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.7 with air
#middle row
item replace block ~ ~ ~ container.10 with air
item replace block ~ ~ ~ container.11 with air
item replace block ~ ~ ~ container.16 with air
#bottom row
item replace block ~ ~ ~ container.18 with air
item replace block ~ ~ ~ container.19 with air
item replace block ~ ~ ~ container.20 with air

#=====
#STATIC STUFF

#general
item replace block ~ ~ ~ container.3 with light_blue_wool[item_model="gp/player_model/phantom_head",custom_name={translate:"gp.assist.all_modes",bold:true,italic:true},custom_data={assistMenu:1b,assistGeneral:1b}]
#item replace block ~ ~ ~ container.8 with red_dye[item_model="gp/inventory/assist_mode/background_connector_3",tooltip_display={hide_tooltip:true},custom_data={assistMenu:1b}]
item replace block ~ ~ ~ container.8 with air

#score attack / time attack
execute if score #timeAttackUnlocked value matches ..0 run item replace block ~ ~ ~ container.12 with yellow_wool[item_model="gp/object/stardust",custom_name={translate:"gp.mode_select.score_attack",bold:true,italic:true,color:"yellow"},custom_data={assistMenu:1b,assistScoreAttack:1b}]
execute if score #timeAttackUnlocked value matches 1.. run item replace block ~ ~ ~ container.12 with yellow_wool[item_model="gp/object/stardust",custom_name=["",{translate:"gp.mode_select.score_attack",bold:true,italic:true,color:"yellow"},{text:" / ",color:"white",italic:false,bold:true},{translate:"gp.mode_select.time_attack",bold:true,italic:true,color:"red"}],custom_data={assistMenu:1b,assistScoreAttack:1b}]
#item replace block ~ ~ ~ container.17 with red_dye[item_model="gp/inventory/assist_mode/background_connector_3",tooltip_display={hide_tooltip:true},custom_data={assistMenu:1b}]
item replace block ~ ~ ~ container.17 with air

#portal race
item replace block ~ ~ ~ container.21 with red_wool[item_model="gp/object/phantom_chest",custom_name={translate:"gp.mode_select.versus",bold:true,italic:true,color:"light_purple"},custom_data={assistMenu:1b,assistPortalRace:1b}]
#item replace block ~ ~ ~ container.26 with red_dye[item_model="gp/inventory/assist_mode/background_connector_4",tooltip_display={hide_tooltip:true},custom_data={assistMenu:1b}]
item replace block ~ ~ ~ container.26 with air

#=====
#CONDITIONAL STUFF

#assist mode
execute if score #assist_enabled value matches 1.. run item replace block ~ ~ ~ container.9 with minecraft:red_dye[item_model="gp/inventory/assist_mode/assist_mode_on",custom_name={translate:"gp.assist.assist_mode",bold:true,italic:false},lore=[{translate:"gp.misc.off",color:"gray",bold:false,italic:false},{translate:"gp.misc.on",color:"yellow",bold:false,italic:false}],custom_data={assistMenu:1b,assistEnabled:1b}]
execute if score #assist_enabled value matches ..0 run item replace block ~ ~ ~ container.9 with minecraft:red_dye[item_model="gp/inventory/assist_mode/assist_mode_off",custom_name={translate:"gp.assist.assist_mode",bold:true,italic:false},lore=[{translate:"gp.misc.off",color:"yellow",bold:false,italic:false},{translate:"gp.misc.on",color:"gray",bold:false,italic:false}],custom_data={assistMenu:1b,assistEnabled:1b}]

#TOP ROW

#movement
execute if score #assist_movement value matches ..0 run item replace block ~ ~ ~ container.4 with minecraft:red_dye[item_model="gp/inventory/assist_mode/movement_1_normal",custom_name={translate:"gp.assist.movement",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"yellow",bold:false,italic:false},{translate:"options.difficulty.easy",color:"gray",bold:false,italic:false},{translate:"gp.assist.movement.breezy",color:"gray",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.movement_normal",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistMovement:1b}]
execute if score #assist_movement value matches 1 run item replace block ~ ~ ~ container.4 with minecraft:red_dye[item_model="gp/inventory/assist_mode/movement_2_easy",custom_name={translate:"gp.assist.movement",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"options.difficulty.easy",color:"yellow",bold:false,italic:false},{translate:"gp.assist.movement.breezy",color:"gray",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.movement_easy",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistMovement:1b}]
execute if score #assist_movement value matches 2.. run item replace block ~ ~ ~ container.4 with minecraft:red_dye[item_model="gp/inventory/assist_mode/movement_3_peaceful",custom_name={translate:"gp.assist.movement",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"options.difficulty.easy",color:"gray",bold:false,italic:false},{translate:"gp.assist.movement.breezy",color:"yellow",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.movement_easy",bold:false,italic:true,color:"white"},{text:" "},{translate:"gp.assist.info.movement_peaceful_1",with:[{translate:"item.minecraft.feather",color:"yellow",bold:false,italic:true}],bold:false,italic:true,color:"white"},{translate:"gp.assist.info.movement_peaceful_2",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistMovement:1b}]

#energy
execute if score #assist_energy value matches ..0 run item replace block ~ ~ ~ container.5 with minecraft:red_dye[item_model="gp/inventory/assist_mode/energy_1_normal",custom_name={translate:"gp.assist.energy",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"yellow",bold:false,italic:false},{translate:"gp.assist.energy.regen",color:"gray",bold:false,italic:false},{translate:"gp.assist.energy.infinite",color:"gray",bold:false,italic:false}],custom_data={assistMenu:1b,assistEnergy:1b}]
execute if score #assist_energy value matches 1 run item replace block ~ ~ ~ container.5 with minecraft:red_dye[item_model="gp/inventory/assist_mode/energy_2_easy",custom_name={translate:"gp.assist.energy",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"gp.assist.energy.regen",color:"yellow",bold:false,italic:false},{translate:"gp.assist.energy.infinite",color:"gray",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.energy_easy",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistEnergy:1b}]
execute if score #assist_energy value matches 2.. run item replace block ~ ~ ~ container.5 with minecraft:red_dye[item_model="gp/inventory/assist_mode/energy_3_peaceful",custom_name={translate:"gp.assist.energy",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"gp.assist.energy.regen",color:"gray",bold:false,italic:false},{translate:"gp.assist.energy.infinite",color:"yellow",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.energy_peaceful",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistEnergy:1b}]

#enemies
execute if score #assist_enemies value matches ..0 run item replace block ~ ~ ~ container.6 with minecraft:red_dye[item_model="gp/inventory/assist_mode/enemy_1_normal",custom_name={translate:"gp.assist.enemies",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"yellow",bold:false,italic:false},{translate:"options.difficulty.easy",color:"gray",bold:false,italic:false},{translate:"options.difficulty.peaceful",color:"gray",bold:false,italic:false}],custom_data={assistMenu:1b,assistEnemies:1b}]
execute if score #assist_enemies value matches 1 run item replace block ~ ~ ~ container.6 with minecraft:red_dye[item_model="gp/inventory/assist_mode/enemy_2_easy",custom_name={translate:"gp.assist.enemies",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"options.difficulty.easy",color:"yellow",bold:false,italic:false},{translate:"options.difficulty.peaceful",color:"gray",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.enemies_easy",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistEnemies:1b}]
execute if score #assist_enemies value matches 2.. run item replace block ~ ~ ~ container.6 with minecraft:red_dye[item_model="gp/inventory/assist_mode/enemy_3_peaceful",custom_name={translate:"gp.assist.enemies",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"options.difficulty.easy",color:"gray",bold:false,italic:false},{translate:"options.difficulty.peaceful",color:"yellow",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.enemies_peaceful",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistEnemies:1b}]

#MIDDLE ROW

#time limit
execute if score #assist_time_limit value matches ..0 run item replace block ~ ~ ~ container.13 with minecraft:red_dye[item_model="gp/inventory/assist_mode/time_limit_1_normal",custom_name={translate:"gp.assist.time_limit",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"yellow",bold:false,italic:false},{translate:"options.difficulty.easy",color:"gray",bold:false,italic:false},{translate:"gp.assist.generic.off",color:"gray",bold:false,italic:false}],custom_data={assistMenu:1b,assistTimeLimit:1b}]
execute if score #assist_time_limit value matches 1 run item replace block ~ ~ ~ container.13 with minecraft:red_dye[item_model="gp/inventory/assist_mode/time_limit_2_easy",custom_name={translate:"gp.assist.time_limit",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"options.difficulty.easy",color:"yellow",bold:false,italic:false},{translate:"gp.assist.generic.off",color:"gray",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.time_limit_easy",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistTimeLimit:1b}]
execute if score #assist_time_limit value matches 2.. run item replace block ~ ~ ~ container.13 with minecraft:red_dye[item_model="gp/inventory/assist_mode/time_limit_3_peaceful",custom_name={translate:"gp.assist.time_limit",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"options.difficulty.easy",color:"gray",bold:false,italic:false},{translate:"gp.assist.generic.off",color:"yellow",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.time_limit_peaceful",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistTimeLimit:1b}]

#combos
execute if score #assist_combos value matches ..0 run item replace block ~ ~ ~ container.14 with minecraft:red_dye[item_model="gp/inventory/assist_mode/combo_1_normal",custom_name={translate:"gp.assist.combos",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"yellow",bold:false,italic:false},{translate:"options.difficulty.easy",color:"gray",bold:false,italic:false}],custom_data={assistMenu:1b,assistCombos:1b}]
execute if score #assist_combos value matches 1.. run item replace block ~ ~ ~ container.14 with minecraft:red_dye[item_model="gp/inventory/assist_mode/combo_2_easy",custom_name={translate:"gp.assist.combos",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"options.difficulty.easy",color:"yellow",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.combos_easy",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistCombos:1b}]

#navigation
execute if score #assist_navigation value matches ..0 run item replace block ~ ~ ~ container.15 with minecraft:red_dye[item_model="gp/inventory/assist_mode/navigation_1_normal",custom_name={translate:"gp.assist.navigation",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"yellow",bold:false,italic:false},{translate:"options.difficulty.easy",color:"gray",bold:false,italic:false}],custom_data={assistMenu:1b,assistNavigation:1b}]
execute if score #assist_navigation value matches 1.. run item replace block ~ ~ ~ container.15 with minecraft:red_dye[item_model="gp/inventory/assist_mode/navigation_2_easy",custom_name={translate:"gp.assist.navigation",bold:true,italic:false},lore=[{translate:"options.difficulty.normal",color:"gray",bold:false,italic:false},{translate:"options.difficulty.easy",color:"yellow",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.navigation_easy",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistNavigation:1b}]

#BOTTOM ROW

#rival bot
execute if score #assist_rival_bot value matches ..0 run item replace block ~ ~ ~ container.22 with minecraft:red_dye[item_model="gp/inventory/assist_mode/rival_bot_on",custom_name={translate:"gp.assist.rival_bot",bold:true,italic:false},lore=[{translate:"gp.assist.generic.on",color:"yellow",bold:false,italic:false},{translate:"gp.assist.generic.off",color:"gray",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.rival_bot_on",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistRival:1b}]
execute if score #assist_rival_bot value matches 1.. run item replace block ~ ~ ~ container.22 with minecraft:red_dye[item_model="gp/inventory/assist_mode/rival_bot_off",custom_name={translate:"gp.assist.rival_bot",bold:true,italic:false},lore=[{translate:"gp.assist.generic.on",color:"gray",bold:false,italic:false},{translate:"gp.assist.generic.off",color:"yellow",bold:false,italic:false}],custom_data={assistMenu:1b,assistRival:1b}]

#item catch-up
execute if score #assist_catch_up value matches ..0 run item replace block ~ ~ ~ container.23 with minecraft:red_dye[item_model="gp/inventory/assist_mode/catch_up_on",custom_name={translate:"gp.assist.item_catch_up",bold:true,italic:false},lore=[{translate:"gp.assist.generic.on",color:"yellow",bold:false,italic:false},{translate:"gp.assist.generic.off",color:"gray",bold:false,italic:false},{text:" "},{translate:"gp.assist.info.item_catch_up_on",bold:false,italic:true,color:"white"}],custom_data={assistMenu:1b,assistCatchUp:1b}]
execute if score #assist_catch_up value matches 1.. run item replace block ~ ~ ~ container.23 with minecraft:red_dye[item_model="gp/inventory/assist_mode/catch_up_off",custom_name={translate:"gp.assist.item_catch_up",bold:true,italic:false},lore=[{translate:"gp.assist.generic.on",color:"gray",bold:false,italic:false},{translate:"gp.assist.generic.off",color:"yellow",bold:false,italic:false}],custom_data={assistMenu:1b,assistCatchUp:1b}]

#race end timer
execute if score #assist_race_end_time value matches ..0 run item replace block ~ ~ ~ container.24 with minecraft:red_dye[item_model="gp/inventory/assist_mode/time_limit_1_normal",custom_name={translate:"gp.assist.race_end_time",bold:true,italic:false},lore=[{translate:"gp.assist.race_end_time.short",color:"yellow",bold:false,italic:false},{translate:"gp.assist.race_end_time.long",color:"gray",bold:false,italic:false}],custom_data={assistMenu:1b,assistRaceEndTime:1b}]
execute if score #assist_race_end_time value matches 1.. run item replace block ~ ~ ~ container.24 with minecraft:red_dye[item_model="gp/inventory/assist_mode/time_limit_2_easy",custom_name={translate:"gp.assist.race_end_time",bold:true,italic:false},lore=[{translate:"gp.assist.race_end_time.short",color:"gray",bold:false,italic:false},{translate:"gp.assist.race_end_time.long",color:"yellow",bold:false,italic:false}],custom_data={assistMenu:1b,assistRaceEndTime:1b}]

#items
execute if score #assist_items value matches ..0 run item replace block ~ ~ ~ container.25 with minecraft:red_dye[item_model="gp/inventory/assist_mode/items_on",custom_name={translate:"gp.assist.items",bold:true,italic:false},lore=[{translate:"gp.assist.generic.on",color:"yellow",bold:false,italic:false},{translate:"gp.assist.generic.off",color:"gray",bold:false,italic:false}],custom_data={assistMenu:1b,assistItems:1b}]
execute if score #assist_items value matches 1.. run item replace block ~ ~ ~ container.25 with minecraft:red_dye[item_model="gp/inventory/assist_mode/items_off",custom_name={translate:"gp.assist.items",bold:true,italic:false},lore=[{translate:"gp.assist.generic.on",color:"gray",bold:false,italic:false},{translate:"gp.assist.generic.off",color:"yellow",bold:false,italic:false}],custom_data={assistMenu:1b,assistItems:1b}]

#=====

#warning! scores won't be saved with assist mode on!
execute if score #assist_enabled value matches 1.. run item replace block ~ ~ ~ container.0 with minecraft:red_dye[item_model="gp/inventory/assist_mode/assist_mode_warning",custom_name={translate:"gp.assist.info.advancements_will_not_be_granted",with:[{translate:"gp.assist.assist_mode",color:"#DD33FF",bold:false,italic:false}],bold:false,italic:false},custom_data={assistMenu:1b,assistWarning:1b}]

execute if score #assist_enabled_scoreattack value matches 1.. run item replace block ~ ~ ~ container.11 with minecraft:red_dye[item_model="gp/inventory/assist_mode/assist_mode_warning",custom_name={translate:"gp.assist.info.scores_will_not_be_saved",with:[{translate:"gp.assist.assist_mode",color:"#DD33FF",bold:false,italic:false}],bold:false,italic:false},custom_data={assistMenu:1b,assistWarning:1b}]
execute if score #assist_enabled_portalrace value matches 1.. run item replace block ~ ~ ~ container.20 with minecraft:red_dye[item_model="gp/inventory/assist_mode/assist_mode_warning",custom_name={translate:"gp.assist.info.trophies_will_not_be_awarded",with:[{translate:"gp.assist.assist_mode",color:"#DD33FF",bold:false,italic:false}],bold:false,italic:false},custom_data={assistMenu:1b,assistWarning:1b}]