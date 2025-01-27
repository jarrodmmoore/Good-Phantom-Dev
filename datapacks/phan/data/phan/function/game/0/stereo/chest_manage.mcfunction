#set name of chest
#(i wanted this to be a dynamic ON/OFF message, but the text doesn't update until the client exits and re-enters the chest, so that's a bust)
data merge block ~ ~ ~ {CustomName:'{"translate":"gp.lobby.music_collection"}'}

#always-empty slots
#top row
item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.8 with air
#middle row
item replace block ~ ~ ~ container.9 with air
item replace block ~ ~ ~ container.10 with air
item replace block ~ ~ ~ container.16 with air
item replace block ~ ~ ~ container.17 with air
#bottom row
item replace block ~ ~ ~ container.18 with air
item replace block ~ ~ ~ container.19 with air
item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.21 with air
#
item replace block ~ ~ ~ container.23 with air
item replace block ~ ~ ~ container.24 with air
item replace block ~ ~ ~ container.25 with air
#hint sheet in slot 26
item replace block ~ ~ ~ container.26 with red_dye[item_model="paper",custom_name='{"translate":"gp.lobby.disc_hint","italic":false,"color":"white"}',lore=['{"translate":"gp.lobby.disc_hint_1","color":"white","italic":true}','{"translate":"gp.lobby.disc_hint_2","color":"white","italic":true}'],custom_data={musicDiscSelect:1b}]

#music note particles while we're in this function...
execute if score #lobbyJukebox value matches 1 if score #2sec value matches 0 positioned 200 -5 135 run particle note ~ ~ ~ 0 0 0 1 1 force
execute if score #lobbyJukebox value matches 1 if score #2sec value matches 0 positioned 200 -5 137 run particle note ~ ~ ~ 0 0 0 1 1 force
execute if score #lobbyJukebox value matches 1 if score #2sec value matches 20 positioned 200 -5 135 run particle note ~ ~ ~ 0 0 0 1 1 force
execute if score #lobbyJukebox value matches 1 if score #2sec value matches 20 positioned 200 -5 137 run particle note ~ ~ ~ 0 0 0 1 1 force

#conditional stuff

#1=shimmer (mellohi)
execute if score #disc_found_1 value matches 1.. run item replace block ~ ~ ~ container.1 with minecraft:red_dye[item_model="gp/inventory/disc/1",custom_name='{"text":"01 - Shimmer","color":"gold","italic":true}',lore=['{"text":"Transcendence","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc1:1b}]
execute if score #disc_found_1 value matches ..0 run item replace block ~ ~ ~ container.1 with air

#2=echo dance (strad)
execute if score #disc_found_2 value matches 1.. run item replace block ~ ~ ~ container.2 with minecraft:red_dye[item_model="gp/inventory/disc/2",custom_name='{"text":"02 - Echo Dance","color":"gold","italic":true}',lore=['{"text":"Teach Me How to Love Again","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc2:1b}]
execute if score #disc_found_2 value matches ..0 run item replace block ~ ~ ~ container.2 with air

#3=shadow puppets (stal)
execute if score #disc_found_3 value matches 1.. run item replace block ~ ~ ~ container.3 with minecraft:red_dye[item_model="gp/inventory/disc/3",custom_name='{"text":"03 - Shadow Puppets","color":"gold","italic":true}',lore=['{"text":"Blue","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc3:1b}]
execute if score #disc_found_3 value matches ..0 run item replace block ~ ~ ~ container.3 with air

#4=purple dreams (mall)
execute if score #disc_found_4 value matches 1.. run item replace block ~ ~ ~ container.4 with minecraft:red_dye[item_model="gp/inventory/disc/4",custom_name='{"text":"04 - Purple Dreams","color":"gold","italic":true}',lore=['{"text":" ","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc4:1b}]
execute if score #disc_found_4 value matches ..0 run item replace block ~ ~ ~ container.4 with air

#5=soap (far)
execute if score #disc_found_5 value matches 1.. run item replace block ~ ~ ~ container.5 with minecraft:red_dye[item_model="gp/inventory/disc/5",custom_name='{"text":"05 - Soap","color":"gold","italic":true}',lore=['{"text":"Planet Earth","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc5:1b}]
execute if score #disc_found_5 value matches ..0 run item replace block ~ ~ ~ container.5 with air

#6=heart nebula (blocks)
execute if score #disc_found_6 value matches 1.. run item replace block ~ ~ ~ container.6 with minecraft:red_dye[item_model="gp/inventory/disc/6",custom_name='{"text":"06 - Heart Nebula","color":"gold","italic":true}',lore=['{"text":"Planet Earth","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc6:1b}]
execute if score #disc_found_6 value matches ..0 run item replace block ~ ~ ~ container.6 with air

#7=watching the sun (pigstep)
execute if score #disc_found_7 value matches 1.. run item replace block ~ ~ ~ container.7 with minecraft:red_dye[item_model="gp/inventory/disc/7",custom_name='{"text":"07 - Watching the Sun Fall with You","color":"gold","italic":true}',lore=['{"text":"Planet Earth","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc7:1b}]
execute if score #disc_found_7 value matches ..0 run item replace block ~ ~ ~ container.7 with air

#8=pillars (wait)
execute if score #disc_found_8 value matches 1.. run item replace block ~ ~ ~ container.11 with minecraft:red_dye[item_model="gp/inventory/disc/8",custom_name='{"text":"08 - Pillars (Instrumental)","color":"gold","italic":true}',lore=['{"text":"Reach","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc8:1b}]
execute if score #disc_found_8 value matches ..0 run item replace block ~ ~ ~ container.11 with air

#9=mitosis (otherside)
execute if score #disc_found_9 value matches 1.. run item replace block ~ ~ ~ container.12 with minecraft:red_dye[item_model="gp/inventory/disc/9",custom_name='{"text":"09 - Mitosis","color":"gold","italic":true}',lore=['{"text":"Things I Feel and Stuff I Dream","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc9:1b}]
execute if score #disc_found_9 value matches ..0 run item replace block ~ ~ ~ container.12 with air

#10=stranded (13)
execute if score #disc_found_10 value matches 1.. run item replace block ~ ~ ~ container.13 with minecraft:red_dye[item_model="gp/inventory/disc/10",custom_name='{"text":"10 - Stranded (Instrumental)","color":"gold","italic":true}',lore=['{"text":"Transcendence","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc10:1b}]
execute if score #disc_found_10 value matches ..0 run item replace block ~ ~ ~ container.13 with air

#11=shine (cat)
execute if score #disc_found_11 value matches 1.. run item replace block ~ ~ ~ container.14 with minecraft:red_dye[item_model="gp/inventory/disc/11",custom_name='{"text":"11 - Shine","color":"gold","italic":true}',lore=['{"text":"Things I Feel and Stuff I Dream","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc11:1b}]
execute if score #disc_found_11 value matches ..0 run item replace block ~ ~ ~ container.14 with air

#12=whimsy forest (ward)
execute if score #disc_found_12 value matches 1.. run item replace block ~ ~ ~ container.15 with minecraft:red_dye[item_model="gp/inventory/disc/12",custom_name='{"text":"12 - Whimsy Forest (Instrumental)","color":"gold","italic":true}',lore=['{"text":"Blue","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc12:1b}]
execute if score #disc_found_12 value matches ..0 run item replace block ~ ~ ~ container.15 with air

#13=fluidity (relic)
execute if score #disc_found_13 value matches 1.. run item replace block ~ ~ ~ container.22 with minecraft:red_dye[item_model="gp/inventory/disc/13",custom_name='{"text":"13 - Fluidity","color":"gold","italic":true}',lore=['{"text":"Reach","color":"gray","bold":false,"italic":false}','{"text":"Back in August","color":"dark_purple","bold":false,"italic":false}'],custom_data={musicDiscSelect:1b,musicDisc13:1b}]
execute if score #disc_found_13 value matches ..0 run item replace block ~ ~ ~ container.22 with air