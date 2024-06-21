#if player spends x amount of time moving while in the lobby, show them a tip
execute if entity @s[scores={moving=1..,fails=3..}] run function phan:game/0/tip_assist_mode
execute if score @s moving matches 1.. run function phan:game/0/tip_timer

#player near a sleeping person? can enter level
tag @s[tag=hasEnderEye] remove hasEnderEye
execute if entity @s[gamemode=!creative,scores={nearPlayer=1..}] if items entity @s hotbar.4 flint[custom_data~{levelEntry:1b}] run tag @s add hasEnderEye
clear @s[gamemode=!creative,tag=!hasEnderEye] flint
item replace entity @s[gamemode=adventure,tag=!hasEnderEye,tag=!noInventory,scores={inputCooldown=..0,nearPlayer=1..}] hotbar.4 with minecraft:flint[custom_name='[{"keybind":"key.use","italic":false},{"text":" "},{"translate":"gp.lobby.enter_level","color":"#C808CF","bold":true,"italic":false}]',custom_data={levelEntry:1b}] 1
execute if entity @s[gamemode=adventure,scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand flint[custom_data~{levelEntry:1b}] run function phan:game/0/player_starts_level

#warn players that their resource pack is missing
execute if score #5Hz value matches ..1 run title @s[gamemode=adventure,scores={actionbarDelay=..0}] actionbar ["",{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"red"}]
execute if score #5Hz value matches 2.. run title @s[gamemode=adventure,scores={actionbarDelay=..0}] actionbar ["",{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"dark_red"}]

#go to practice area?
execute if entity @s[scores={location_x=188..189,location_y=-7..-6,location_z=118}] run function phan:game/0/player/warp_to_practice_area