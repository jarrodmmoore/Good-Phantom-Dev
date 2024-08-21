#executed by the zombie that acts as one of our bots
#this function should be called by a botController after it updated the storage "phan:bot_data" with the data corresponding to this bot


#bot isn't moving unless it declared it wants to move
scoreboard players set #botWantsToMove value 0

#make sure we have elytra
execute unless items entity @s armor.chest elytra run item replace entity @s armor.chest with elytra[unbreakable={}]

#coordinates
function phan:bots/movement/get_coordinates

#respawn invulnerability
scoreboard players remove @s[scores={spawnInvulnerability=1..}] spawnInvulnerability 1

#health calculations
scoreboard players reset @s[scores={damage=1..}] damage
execute store result score @s botHp run data get entity @s Health
execute if score @s botHp matches ..1019 run function phan:bots/take_damage

#check for nearby objects of interest
scoreboard players remove @s botReactionTimer 1
execute if score @s botReactionTimer matches ..0 unless score @s botPreparedToBoostTrap matches 1.. unless score @s botTargetPriority matches 1.. run function phan:bots/reaction/_check_objects_of_interest
execute if score @s botPreparedToBoostTrap matches 1.. run function phan:bots/reaction/_check_objects_of_interest_mine_boost

#=====
#ITEM EFFECTS

#super jump particles and effect
execute if score @s elytraTimer matches 1.. at @s run function phan:items/super_jump_active

#blindness from squid
execute if score @s squidBlindTime matches -30.. at @s run function phan:bots/items/blinding_squid_bot_effect

#firework boost
execute if score @s botFireworkTime matches 1.. at @s run function phan:bots/items/firework_boost_effect

#shield on players
execute if score @s shieldTime matches 1.. at @s run function phan:items/shield_active

#attackerID expires after 5sec
scoreboard players remove @s[scores={attackTime=1..}] attackTime 1
scoreboard players reset @s[scores={attackTime=..0,attackerID=1..}] attackerID
#=====

#=====
#BEHAVIOR

#rubber-banding with low level bots
execute if score #5Hz value matches 0 if score @s botSkill matches ..3 run function phan:bots/rubber_band/_index

#battle mode: look for important targets
execute if score #vGameType value matches 2 run function phan:bots/battle/_battle_logic

#behavior based on state
function phan:bots/behaviors/_behavior_state_index
#=====

#=====
#MOVEMENT

#dodge traps (or jump them) if we're checking for them at 20Hz
execute unless score @s botPreparedToDodgeTrap matches 0 unless score @s squidBlindTime matches 1.. run function phan:bots/movement/try_to_dodge_trap
execute if score @s botPreparedToBoostTrap matches 1.. run function phan:bots/movement/bot_prepared_to_boost_trap

#perform movement
function phan:bots/movement/_bot_movement_main

#count down temporary rotation look time (used to make bots look somewhere while moving in a different direction)
scoreboard players remove @s[scores={botTempRotTime=1..}] botTempRotTime 1
#=====

#=====
#ITEM USAGE

#use boost item?
scoreboard players remove @s botBoostThinkTime 1
execute if score #vGameType value matches 1 if score @s botBoostThinkTime matches ..0 run function phan:bots/items/0_boost/think

#do stuff with items
scoreboard players remove @s botItemThinkTime 1
execute if score @s botItemThinkTime matches ..0 run function phan:bots/items/_improvise

#update held item whenever it changes
execute unless score @s botHoldingItem = @s botHoldingItemPrev run function phan:bots/items/_update_held_item
#=====

#publish sidebar stuff
execute if score #vGameType value matches 1 run function phan:bots/race/publish_positions
execute if score #vGameType value matches 2 run function phan:bots/battle/publish_positions


#hurtful time, used to detect when damage was caused by an enemy and needs time punishment
scoreboard players remove @s[scores={hurtfulTime=1..}] hurtfulTime 1

#bot must obey input cooldown the same as everyone else
scoreboard players remove @s[scores={inputCooldown=1..}] inputCooldown 1
scoreboard players remove @s[scores={inputCooldownB=1..}] inputCooldownB 1

#bot can only make mistakes every so often
scoreboard players remove @s[scores={botMistakeCooldown=1..}] botMistakeCooldown 1


#=====
#DEBUG, SHOW SCORES FOR BOT W/ ID 1
#execute if score @s botID matches 1 if score #5Hz value matches 1 run function phan:bots/debug_show_scores
#=====


#stay alive as long as we're running this function
scoreboard players set @s lifespan 10

#handle teleport from ender pearl (or other sources maybe?)
execute if score @s botTeleportTimer matches 0.. run function phan:bots/bot_handle_scheduled_teleport

#respawn?
execute if entity @s[tag=botRespawnAdvance] at @s run function phan:bots/race/respawn_consider_advancing
execute if entity @s[tag=botRespawn] at @s run function phan:bots/race/respawn

#=====
#COMMUNICATION WITH CONTROLLER

#send data to controller if we need to
execute if entity @s[tag=hasDataToSend] run function phan:bots/stage_data_for_transfer

#let our botController know that we exist and ran this function
scoreboard players set #botSuccess value 1
#=====

#inlined lifespan handling to prevent insane entity pile-ups
execute if score @s lifespan matches ..0 at @s run function phan:bots/bot_lifespan_expire