#if a player's join score is out of sync with the global value, they need to be initialized!
execute unless score @s join = #join_global value in minecraft:overworld run function phan:join/player_join
scoreboard players add @s join 1

#yeah, a player could technically join back in on the exact #join_global score tick they left on and cause problems
#BUT
#a) the map would need to be played for over 800 hours for this to even have a chance of happening
#b) even if good phantom does get played over 800 hours, it's still a 1 in 60 million chance that they hit the time on the dot

#it's also possible that a player disconnects on the same tick the server shuts down and reconnects on the same tick it reboots
#...but in that case, they're playing singleplayer and it doesn't matter. we can just let them resume whatever they were doing.




#while we're in here, let's do a bunch of stuff
#(these used to be in _main, but I realized inlining them here would avoid a lot of @a's)

#handle death
execute if score @s death matches 1.. run function phan:join/player_handle_death

#we can be hit by tnt while in adventure mode
tag @s[tag=tntCanHit,gamemode=!adventure] remove tntCanHit
tag @s[tag=!tntCanHit,gamemode=adventure] add tntCanHit

#play the intro slides if we're not in the game proper yet
execute if entity @s[tag=!doneWithIntro] at @s run function phan:join/intro/_intro_main

#manage skybox for this player
execute if score @s skyboxSet matches -2147483648..2147483647 at @s run function phan:skybox/player_get_skybox

#players must have their equipment
execute if entity @s[gamemode=adventure,tag=doneWithIntro,tag=!noInventory] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",count:1,components:{"minecraft:custom_data":{Tags:["playerEquipment"]}}}]}] run function phan:join/player_get_equipment
#note: this MUST be run before the get_coordinates function!

#check coordinates and move speed
execute at @s run function phan:movement/get_coordinates

#do movement logic
execute if entity @s[tag=doneWithIntro,gamemode=!spectator] at @s run function phan:movement/_movement_main

#count down to when we can show stuff on actionbar after a delay
execute if score @s actionbarDelay matches 1.. run scoreboard players remove @s actionbarDelay 1

#handle strength powerup
execute if score @s strengthTime matches 1.. run function phan:join/player_strength_power
execute if score @s bodyHitbox matches 1.. run function phan:join/player_body_hitbox

#music toggle trigger
scoreboard players enable @s musicToggle
execute if score @s musicToggle matches 1.. run function phan:bgm/music_toggle

#show tip trigger
scoreboard players enable @s tip
execute if score @s tip matches 1.. run function phan:game/0/tip_show

#count down hudFlashTime
execute if score @s hudFlashTime matches 1.. run scoreboard players remove @s hudFlashTime 1

#################
# ITEM STUFF

#elytra particles (for the launch effect from the "Super Jump" item)
execute if entity @s[tag=doneWithIntro,scores={elytraTimer=1..}] at @s run function phan:items/elytra_active

#blindness from squid
execute if entity @s[tag=doneWithIntro,scores={squidBlindTime=-30..}] at @s run function phan:items/blinding_squid_player_effect

#swiftness on players
execute if score @s swiftnessTime matches 1.. run function phan:items/swiftness_active

#shield on players
execute if score @s shieldTime matches 1.. at @s run function phan:items/shield_active

#attackerID expires after 5sec
scoreboard players remove @s[scores={attackTime=1..}] attackTime 1
scoreboard players reset @s[scores={attackTime=..0,attackerID=1..}] attackerID

#################
# INPUT HANDLING
#carrot on a stick for inputs
function phan:control/carrot_on_stick
#(NOTE: a players "carrotInput" score is > 1 if they made an input on this tick)

#drop key bind trigger
scoreboard players enable @s bindDropKey
execute if score @s bindDropKey matches 1.. run function phan:control/player_bind_drop_key
#swap key bind trigger
scoreboard players enable @s bindSwapKey
execute if score @s bindSwapKey matches 1.. run function phan:control/player_bind_swap_key

#handle bound keys
execute if score @s dropSword matches 1.. run function phan:control/handle_player_input_drop
execute if score @s dropLightBlue matches 1.. run function phan:control/handle_player_input_drop
execute if score @s dropFlint matches 1.. run function phan:control/handle_player_input_drop

#input buffer time
scoreboard players remove @s[scores={bufferInput0=1..}] bufferInput0 1
scoreboard players remove @s[scores={bufferInput1=1..}] bufferInput1 1
scoreboard players remove @s[scores={bufferInput2=1..}] bufferInput2 1
scoreboard players remove @s[scores={bufferInput3=1..}] bufferInput3 1
scoreboard players remove @s[scores={bufferInput4=1..}] bufferInput4 1
#################

#play music
execute at @s run function phan:bgm/_player_main

#did we just enter the game from spectator mode? if so, tell the HUD assigner to give us a new HUD node
execute if entity @s[tag=playing,scores={wasPlayingLastTick=0}] run scoreboard players set @s hudNode 0
execute if entity @s[tag=!playing] run scoreboard players set @s wasPlayingLastTick 0
execute if entity @s[tag=playing] run scoreboard players set @s wasPlayingLastTick 1
#if we didn't do this, players would fight over the same HUD and cause very weird effects
#(in spectator mode, you automatically inherit the HUD of whoever you're watching-- hence why this is a concern)

#if we're ever in adventure mode for ANY REASON, we'll make the game reload position next time we enter spectator
execute if entity @s[gamemode=adventure,tag=!spectatorBuck] run tag @s add spectatorBuck

#keep track of whether we're spectating an object or not
execute if score @s spectatingObject matches 1.. run scoreboard players remove @s spectatingObject 1
#(needed for any players spectating us)
execute if score @s spectateDelay matches 1.. run scoreboard players remove @s spectateDelay 1

#join proper team (so spectator nametags don't show up when we don't want them to)
execute if entity @s[gamemode=!spectator,team=!player] run team join player @s
execute if entity @s[gamemode=spectator,team=!observer] run team join observer @s
#(i'm just gonna handle all this right here so we don't have to worry about managing it in 100 different functions)