execute unless items entity @s hotbar.* vex_spawn_egg unless items entity @s inventory.* vex_spawn_egg run give @s vex_spawn_egg[entity_data={id:"minecraft:vex",NoGravity:0b,NoAI:1b,Tags:["nodeSpawn"]},custom_name='{"text":"Node"}'] 1

#editNode
#editYaw
#editPitch
#editArea
#editLoadArea
#editArg1
#editArg2
#editArg3

#need values!
execute unless score @s editNode matches 1.. run scoreboard players set @s editNode 1
scoreboard players add @s editYaw 0
scoreboard players add @s editPitch 0
scoreboard players add @s editArea 0
scoreboard players add @s editLoadArea 0
scoreboard players add @s editArg1 0
scoreboard players add @s editArg2 0
scoreboard players add @s editArg3 0

#menu title
tellraw @s ["",{"text":"\n==\\/== CREATE NODE ==\\/==","color":"#6666FF","bold":true}]

#editArg info
#ender eye
execute if score @s editNode matches 5 if score @s editArg2 matches ..0 run tellraw @s ["",{"text":"(editArg2) recursion: none","italic":true}]
execute if score @s editNode matches 5 if score @s editArg2 matches 1.. run tellraw @s ["",{"text":"(editArg2) recursion: ","italic":true},{"score":{"name":"@s","objective":"editArg2"},"italic":true},{"text":"x forward","italic":true}]
execute if score @s editNode matches 5 if score @s editArg3 matches ..1 run tellraw @s ["",{"text":"(editArg3) spacing: 1m","italic":true}]
execute if score @s editNode matches 5 if score @s editArg3 matches 2.. run tellraw @s ["",{"text":"(editArg3) spacing: ","italic":true},{"score":{"name":"@s","objective":"editArg3"},"italic":true},{"text":"m","italic":true}]
#stardust
execute if score @s editNode matches 6 unless score @s editArg1 matches 5 run tellraw @s ["",{"text":"(editArg1) type: single","italic":true}]
execute if score @s editNode matches 6 if score @s editArg1 matches 5 run tellraw @s ["",{"text":"(editArg1) type: 5-pack","italic":true}]
execute if score @s editNode matches 6 if score @s editArg2 matches ..0 run tellraw @s ["",{"text":"(editArg2) recursion: none","italic":true}]
execute if score @s editNode matches 6 if score @s editArg2 matches 1.. run tellraw @s ["",{"text":"(editArg2) recursion: ","italic":true},{"score":{"name":"@s","objective":"editArg2"},"italic":true},{"text":"x forward","italic":true}]
execute if score @s editNode matches 6 if score @s editArg3 matches ..1 run tellraw @s ["",{"text":"(editArg3) spacing: 1m","italic":true}]
execute if score @s editNode matches 6 if score @s editArg3 matches 2.. run tellraw @s ["",{"text":"(editArg3) spacing: ","italic":true},{"score":{"name":"@s","objective":"editArg3"},"italic":true},{"text":"m","italic":true}]
#clock
execute if score @s editNode matches 10 unless score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) type: normal","italic":true}]
execute if score @s editNode matches 10 if score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) type: golden","italic":true}]
#present
#--contains
execute if score @s editNode matches 12 unless score @s editArg1 matches 1..8 run tellraw @s ["",{"text":"(editArg1) contains: nothing","italic":true}]
execute if score @s editNode matches 12 if score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) contains: 15 stardust","italic":true}]
execute if score @s editNode matches 12 if score @s editArg1 matches 2 run tellraw @s ["",{"text":"(editArg1) contains: firework","italic":true}]
execute if score @s editNode matches 12 if score @s editArg1 matches 3 run tellraw @s ["",{"text":"(editArg1) contains: ender pearl","italic":true}]
execute if score @s editNode matches 12 if score @s editArg1 matches 4 run tellraw @s ["",{"text":"(editArg1) contains: super jump","italic":true}]
execute if score @s editNode matches 12 if score @s editArg1 matches 5 run tellraw @s ["",{"text":"(editArg1) contains: energy potion","italic":true}]
execute if score @s editNode matches 12 if score @s editArg1 matches 6 run tellraw @s ["",{"text":"(editArg1) contains: swiftness potion","italic":true}]
execute if score @s editNode matches 12 if score @s editArg1 matches 7 run tellraw @s ["",{"text":"(editArg1) contains: throwable tnt","italic":true}]
execute if score @s editNode matches 12 if score @s editArg1 matches 8 run tellraw @s ["",{"text":"(editArg1) contains: 3 red rockets","italic":true}]
#--time limit
execute if score @s editNode matches 12 run tellraw @s ["",{"text":"(editArg2) time limit: ","italic":true},{"score":{"name":"@s","objective":"editArg2"},"italic":true},{"text":" sec","italic":true}]
#--actions required
execute if score @s editNode matches 12 run tellraw @s ["",{"text":"(editArg3) actions required: ","italic":true},{"score":{"name":"@s","objective":"editArg3"},"italic":true}]
#baddie spawn type
execute if score @s editNode matches 13 if score @s editArg1 matches ..-4 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (100 blocks)","italic":true}]
execute if score @s editNode matches 13 if score @s editArg1 matches -3 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (10 blocks)","italic":true}]
execute if score @s editNode matches 13 if score @s editArg1 matches -2 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (15 blocks)","italic":true}]
execute if score @s editNode matches 13 if score @s editArg1 matches -1 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (20 blocks)","italic":true}]
execute if score @s editNode matches 13 if score @s editArg1 matches 0 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (25 blocks)","italic":true}]
execute if score @s editNode matches 13 if score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) spawn type: raw enemy spawn","italic":true}]
execute if score @s editNode matches 13 if score @s editArg1 matches 2.. run tellraw @s ["",{"text":"(editArg1) spawn type: repeating enemy spawn","italic":true}]
#baddie spawn entity
execute if score @s editNode matches 13 unless score @s editArg2 matches 2.. run tellraw @s ["",{"text":"(editArg2) enemy type: zombie","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 2 run tellraw @s ["",{"text":"(editArg2) enemy type: zombie knight","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 3 run tellraw @s ["",{"text":"(editArg2) enemy type: skeleton","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 4 run tellraw @s ["",{"text":"(editArg2) enemy type: vindicator","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 5 run tellraw @s ["",{"text":"(editArg2) enemy type: baby ghast","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 6 run tellraw @s ["",{"text":"(editArg2) enemy type: guardian","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 7 run tellraw @s ["",{"text":"(editArg2) enemy type: dispenser","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 8 run tellraw @s ["",{"text":"(editArg2) enemy type: iron golem","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 9 run tellraw @s ["",{"text":"(editArg2) enemy type: tnt yeeter","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 10 run tellraw @s ["",{"text":"(editArg2) enemy type: shulker","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 11 run tellraw @s ["",{"text":"(editArg2) enemy type: vex","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 12 run tellraw @s ["",{"text":"(editArg2) enemy type: mine","italic":true}]
#baddie movement rail
function phan:editor/panel/calculate_fwd_back_delay
execute if score @s editNode matches 13 if score @s editArg2 matches 5 if score @s editArg3 matches 0 run tellraw @s ["",{"text":"(editArg3) movement: none","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 5 if score @s editArg3 matches 1 run tellraw @s ["",{"text":"(editArg3) movement: tight circle","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 5 if score @s editArg3 matches 2 run tellraw @s ["",{"text":"(editArg3) movement: wide circle","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 5 if score @s editArg3 matches 3.. run tellraw @s ["",{"text":"(editArg3) movement: forward/back, delay: ","italic":true},{"score":{"name":"#movementDelay","objective":"value"},"italic":true},{"text":" ticks","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 12 if score @s editArg3 matches 0 run tellraw @s ["",{"text":"(editArg3) movement: none","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 12 if score @s editArg3 matches 1 run tellraw @s ["",{"text":"(editArg3) movement: tight circle","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 12 if score @s editArg3 matches 2 run tellraw @s ["",{"text":"(editArg3) movement: wide circle","italic":true}]
execute if score @s editNode matches 13 if score @s editArg2 matches 12 if score @s editArg3 matches 3.. run tellraw @s ["",{"text":"(editArg3) movement: forward/back, delay: ","italic":true},{"score":{"name":"#movementDelay","objective":"value"},"italic":true},{"text":" ticks","italic":true}]
#shulker attack delay
function phan:editor/panel/calculate_shulker_delay
execute if score @s editNode matches 13 if score @s editArg2 matches 10 unless score @s editArg1 matches 0 run tellraw @s ["",{"text":"(editArg3) delay before attacking: ","italic":true},{"score":{"name":"#movementDelay","objective":"value"},"italic":true},{"text":" ticks","italic":true}]
#item box
execute if score @s editNode matches 15 if score @s editArg1 matches ..0 run tellraw @s ["",{"text":"(editArg1) cluster group: none","italic":true}]
execute if score @s editNode matches 15 if score @s editArg1 matches 1.. run tellraw @s ["",{"text":"(editArg1) cluster group: ","italic":true},{"score":{"name":"@s","objective":"editArg1"},"italic":true}]
execute if score @s editNode matches 15 run tellraw @s ["",{"text":"(editArg2) player count requirement: ","italic":true},{"score":{"name":"@s","objective":"editArg2"},"italic":true}]
#arrow sign type
execute if score @s editNode matches 16 if score @s editArg1 matches ..0 run tellraw @s ["",{"text":"(editArg1) arrow color: purple","italic":true}]
execute if score @s editNode matches 16 if score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) arrow color: teal","italic":true}]
execute if score @s editNode matches 16 if score @s editArg1 matches 2 run tellraw @s ["",{"text":"(editArg1) arrow color: crimson","italic":true}]
execute if score @s editNode matches 16 if score @s editArg1 matches 3 run tellraw @s ["",{"text":"(editArg1) arrow color: yellow","italic":true}]
execute if score @s editNode matches 16 if score @s editArg1 matches 4.. run tellraw @s ["",{"text":"(editArg1) arrow color: blue","italic":true}]
execute if score @s editNode matches 16 if score @s editArg2 matches ..0 run tellraw @s ["",{"text":"(editArg2) icon: portal frame","italic":true}]
execute if score @s editNode matches 16 if score @s editArg2 matches 1 run tellraw @s ["",{"text":"(editArg2) icon: ever eye","italic":true}]
execute if score @s editNode matches 16 if score @s editArg2 matches 2 run tellraw @s ["",{"text":"(editArg2) icon: stardust","italic":true}]
execute if score @s editNode matches 16 if score @s editArg2 matches 3.. run tellraw @s ["",{"text":"(editArg2) icon: timer","italic":true}]
#checkpoint
execute if score @s editNode matches 18 run tellraw @s ["",{"text":"(editArg1) checkpoint number: ","italic":true},{"score":{"name":"@s","objective":"editArg1"},"italic":true}]
execute if score @s editNode matches 18 if score @s editArg2 matches 0 run tellraw @s ["",{"text":"(editArg2) optional/invisible checkpoint: no","italic":true}]
execute if score @s editNode matches 18 unless score @s editArg2 matches 0 run tellraw @s ["",{"text":"(editArg2) optional/invisible checkpoint: yes","italic":true}]
execute if score @s editNode matches 18 if score @s editArg3 matches 0.. if score @s editArg2 matches 0 run tellraw @s ["",{"text":"(editArg3) gives ever eyes: ","italic":true},{"score":{"name":"@s","objective":"editArg3"},"italic":true}]
execute if score @s editNode matches 18 if score @s editArg3 matches ..-1 if score @s editArg2 matches 0 run tellraw @s ["",{"text":"(editArg3) silent checkpoint! no sound effects.","italic":true}]
#player start
execute if score @s editNode matches 19 run tellraw @s ["",{"text":"(editArg1) player assign order: ","italic":true},{"score":{"name":"@s","objective":"editArg1"},"italic":true}]
#respawn zone (vs)
execute if score @s editNode matches 20 if score @s editArg1 matches ..-1 run tellraw @s ["",{"text":"(editArg1) min active checkpoint: n/a","italic":true}]
execute if score @s editNode matches 20 if score @s editArg1 matches 0.. run tellraw @s ["",{"text":"(editArg1) min active checkpoint: ","italic":true},{"score":{"name":"@s","objective":"editArg1"},"italic":true}]
execute if score @s editNode matches 20 if score @s editArg2 matches ..-1 run tellraw @s ["",{"text":"(editArg2) max active checkpoint: n/a","italic":true}]
execute if score @s editNode matches 20 if score @s editArg2 matches 0.. run tellraw @s ["",{"text":"(editArg2) max active checkpoint: ","italic":true},{"score":{"name":"@s","objective":"editArg2"},"italic":true}]
execute if score @s editNode matches 20 unless score @s editArg3 matches 1..4 run tellraw @s ["",{"text":"(editArg3) condition: none","italic":true}]
execute if score @s editNode matches 20 if score @s editArg3 matches 1 run tellraw @s ["",{"text":"(editArg3) condition: on ground","italic":true}]
execute if score @s editNode matches 20 if score @s editArg3 matches 2 run tellraw @s ["",{"text":"(editArg3) condition: in water","italic":true}]
execute if score @s editNode matches 20 if score @s editArg3 matches 3 run tellraw @s ["",{"text":"(editArg3) condition: not gliding","italic":true}]
execute if score @s editNode matches 20 if score @s editArg3 matches 4 run tellraw @s ["",{"text":"(editArg3) condition: gliding","italic":true}]
#respawn zone
execute if score @s editNode matches 21 unless score @s editArg1 matches 1..4 run tellraw @s ["",{"text":"(editArg1) condition: none","italic":true}]
execute if score @s editNode matches 21 if score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) condition: on ground","italic":true}]
execute if score @s editNode matches 21 if score @s editArg1 matches 2 run tellraw @s ["",{"text":"(editArg1) condition: in water","italic":true}]
execute if score @s editNode matches 21 if score @s editArg1 matches 3 run tellraw @s ["",{"text":"(editArg1) condition: not gliding","italic":true}]
execute if score @s editNode matches 21 if score @s editArg1 matches 4 run tellraw @s ["",{"text":"(editArg1) condition: gliding","italic":true}]
#loading zone
execute if score @s editNode matches 22 if score @s editArg1 matches 0..5 run tellraw @s ["",{"text":"(editArg1) activates load area ","italic":true},{"score":{"name":"@s","objective":"editArg1"},"italic":true}]
execute if score @s editNode matches 22 unless score @s editArg1 matches 0..5 run tellraw @s ["",{"text":"(editArg1) activates load area ","italic":true},{"score":{"name":"@s","objective":"editArg1"},"italic":true},{"text":" <invalid>","color":"red"}]
#hidden music disc
execute if score @s editNode matches 24 run tellraw @s ["",{"text":"(editArg1) disc number: ","italic":true},{"score":{"name":"@s","objective":"editArg1"},"italic":true}]

#node type select
execute if score @s editNode matches 1 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Big Ring","color":"white","bold":false}]
execute if score @s editNode matches 2 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Lil Ring","color":"white","bold":false}]
execute if score @s editNode matches 3 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Blue Big Ring","color":"white","bold":false}]
execute if score @s editNode matches 4 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Blue Lil Ring","color":"white","bold":false}]
execute if score @s editNode matches 5 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Ever Eye","color":"white","bold":false}]
execute if score @s editNode matches 6 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Stardust","color":"white","bold":false}]
execute if score @s editNode matches 7 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Area Transition Endpoint","color":"white","bold":false}]
execute if score @s editNode matches 8 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Portal Core","color":"white","bold":false}]
execute if score @s editNode matches 9 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Portal Slot","color":"white","bold":false}]
execute if score @s editNode matches 10 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Clock","color":"white","bold":false}]
execute if score @s editNode matches 11 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Firework","color":"white","bold":false}]
execute if score @s editNode matches 12 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Present","color":"white","bold":false}]
execute if score @s editNode matches 13 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Baddie","color":"white","bold":false}]
execute if score @s editNode matches 14 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Small Target (block)","color":"white","bold":false}]
execute if score @s editNode matches 15 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Item Box (VS)","color":"white","bold":false}]
execute if score @s editNode matches 16 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Arrow Sign","color":"white","bold":false}]
execute if score @s editNode matches 17 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Big Target (entity)","color":"white","bold":false}]
execute if score @s editNode matches 18 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Checkpoint (VS)","color":"white","bold":false}]
execute if score @s editNode matches 19 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Player Start (VS)","color":"white","bold":false}]
execute if score @s editNode matches 20 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Respawn Zone (VS)","color":"white","bold":false}]
execute if score @s editNode matches 21 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Respawn Zone","color":"white","bold":false}]
execute if score @s editNode matches 22 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Loading Zone","color":"white","bold":false}]
execute if score @s editNode matches 23 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Ever Eye Spawn Point (VS)","color":"white","bold":false}]
execute if score @s editNode matches 24 run tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_prev"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editnode_next"}},{"text":"editNode = "},{"score":{"name":"@s","objective":"editNode"}},{"text":" "},{"text":"Hidden Music Disc","color":"white","bold":false}]

#generic node parameters
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editarea_decrement"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editarea_increment"}},{"text":"editArea = "},{"score":{"name":"@s","objective":"editArea"}}]
tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editloadarea_decrement"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editloadarea_increment"}},{"text":"editLoadArea = "},{"score":{"name":"@s","objective":"editLoadArea"}}]
tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/edityaw_decrement"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/edityaw_increment"}},{"text":"editYaw = "},{"score":{"name":"@s","objective":"editYaw"}}]
tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editpitch_decrement"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editpitch_increment"}},{"text":"editPitch = "},{"score":{"name":"@s","objective":"editPitch"}}]
tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editarg1_decrement"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editarg1_increment"}},{"text":"editArg1 = "},{"score":{"name":"@s","objective":"editArg1"}}]
tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editarg2_decrement"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editarg2_increment"}},{"text":"editArg2 = "},{"score":{"name":"@s","objective":"editArg2"}}]
tellraw @s ["",{"text":"[-] ","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editarg3_decrement"}},{"text":"[+] ","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/button/editarg3_increment"}},{"text":"editArg3 = "},{"score":{"name":"@s","objective":"editArg3"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[zero all]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/zero"},"hoverEvent":{"action":"show_text","value":"set all properties to zero"}}]
tellraw @s ["",{"text":"[copy nearest]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/copy_nearest"},"hoverEvent":{"action":"show_text","value":"copy data of nearest node"}}]
tellraw @s ["",{"text":"[repair tags]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=node,type=marker] run function phan:editor/panel/repair_tags"},"hoverEvent":{"action":"show_text","value":"repair tags and update rotation of all nodes in loading distance"}}]
tellraw @s ["",{"text":"[fix editLoadArea for certain nodes]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=node,type=marker] run function phan:editor/panel/repair_timers_and_presents"},"hoverEvent":{"action":"show_text","value":"set all portal cores, portal slots, clocks, present nodes to editLoadArea 0"}}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"[back]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:editor/panel/_home"},"hoverEvent":{"action":"show_text","value":"back"}}]

#feedback
playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0