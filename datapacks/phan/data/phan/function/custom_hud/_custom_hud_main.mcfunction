#the HUD is considered not full until proven otherwise
#(HUD is full when there are more than 32 players trying to control it)
scoreboard players set #hudNodesAvailable value 1

#all active players must be assigned their own HUD node
execute as @a[gamemode=adventure,tag=playing] unless score @s hudNode matches 1.. run function phan:custom_hud/get_hud_node

#=====
#generic stuff that we're going to calculate globally

#player count
execute if score #gameState value matches 4 run function phan:custom_hud/count_players

#keep track of spacing on both sides...
scoreboard players set #hudLeftDebt value 0
scoreboard players set #hudRightDebt value 0

#=====

#HUD modes
#1 = score attack (gameplay)
#2 = time attack (gameplay)
#3 = versus race (gameplay)
#4 = versus battle (gameplay)

#update display for all nodes
#score attack mode
execute if score #hudMode value matches 1 as @a[tag=playing,scores={pShowHUD=1..,hudNode=1..}] run function phan:custom_hud/gameplay/_update
#time attack mode
execute if score #hudMode value matches 2 as @a[tag=playing,scores={pShowHUD=1..,hudNode=1..}] run function phan:custom_hud/time_attack/_update
#versus mode
execute if score #hudMode value matches 3 as @a[tag=playing,scores={pShowHUD=1..,hudNode=1..}] run function phan:custom_hud/versus_race/_update
execute if score #hudMode value matches 4 as @a[tag=playing,scores={pShowHUD=1..,hudNode=1..}] run function phan:custom_hud/versus_battle/_update

#also update the secondary display
execute if score #hudMode value matches 1 as @a[tag=playing,scores={pShowHUD=1..,hudNode=1..}] run function phan:custom_hud/time_change/_update
execute if score #hudMode value matches 2 as @a[tag=playing,scores={pShowHUD=1..,hudNode=1..}] run function phan:custom_hud/time_running_out/_update
execute if score #hudMode value matches 3..4 as @a[tag=playing,scores={pShowHUD=1..,hudNode=1..}] run function phan:custom_hud/time_running_out/_update_versus_with_warning
execute if score #hudMode value matches 3..4 as @a[tag=noSpecDataAdopt,scores={pShowHUD=1..,hudNode=1..}] run function phan:custom_hud/time_running_out/_update_versus


#make sure bossbars are shown to the correct players
execute if score #hudNodeHighest value matches 1.. run function phan:custom_hud/set_players_1_8
execute if score #hudNodeHighest value matches 9.. run function phan:custom_hud/set_players_9_16
execute if score #hudNodeHighest value matches 17.. run function phan:custom_hud/set_players_17_24
execute if score #hudNodeHighest value matches 25.. run function phan:custom_hud/set_players_25_32

#too many HUD nodes being used?
#panic and kick all players back to the lobby
#(assuming i did my job correctly, this can only happen if players try to force extra players into the game via commands)
execute if score #hudNodesAvailable value matches 0 run tellraw @a ["",{"text":"[ ! ] Sorry, 33+ player multiplayer is not supported!\n(There are only 32 player nodes.)","color":"red"}]
execute if score #hudNodesAvailable value matches 0 run function phan:game/0/_0_init