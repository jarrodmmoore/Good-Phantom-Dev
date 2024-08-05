#executed by a player

#handle death
execute if score @s death matches 1.. run function phan:join/player_handle_death

#we can be hit by tnt while in adventure mode
tag @s[tag=tntCanHit,gamemode=!adventure] remove tntCanHit
tag @s[tag=!tntCanHit,gamemode=adventure] add tntCanHit

#play the intro slides if we're not in the game proper yet
execute if entity @s[tag=!doneWithIntro] at @s run function phan:join/intro/_intro_main

#manage skybox for this player
execute if score @s skyboxSet matches -2147483648..2147483647 at @s run function phan:player/player_get_skybox

#players must have their equipment
execute if entity @s[gamemode=adventure,tag=doneWithIntro,tag=!noInventory] unless items entity @s armor.chest elytra[custom_data~{playerEquipment:1b}] run function phan:join/player_get_equipment
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

#=====
# ITEM STUFF

#super jump particles and effect
execute if entity @s[tag=doneWithIntro,scores={elytraTimer=1..}] at @s run function phan:items/super_jump_active

#blindness from squid
execute if entity @s[tag=doneWithIntro,scores={squidBlindTime=-30..}] at @s run function phan:items/blinding_squid_player_effect

#swiftness on players
execute if score @s swiftnessTime matches 1.. run function phan:items/swiftness_active

#shield on players
execute if score @s shieldTime matches 1.. at @s run function phan:items/shield_active

#attackerID expires after 5sec
scoreboard players remove @s[scores={attackTime=1..}] attackTime 1
scoreboard players reset @s[scores={attackTime=..0,attackerID=1..}] attackerID

#=====
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

#=====
# GLOBAL PASSIVE EFFECTS

#invis
effect give @s[gamemode=!creative] invisibility infinite 1 true
effect clear @s[gamemode=creative] invisibility

#instant health to anyone below max hp
execute if entity @s[scores={hp=..20}] run function phan:player/player_health_set
execute if entity @s[scores={hp=21..423}] run function phan:player/player_health

#saturation
effect give @s saturation infinite 10 true
#=====

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

#node editor
scoreboard players enable @s[gamemode=creative] editor
tag @s[tag=!phan_edit,scores={editor=1}] add phan_edit
execute if entity @s[tag=phan_edit] run function phan:editor/_editor_main