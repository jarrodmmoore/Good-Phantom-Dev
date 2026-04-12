#track randomization
scoreboard players set #RANDOM_TRACK_COOLDOWN value 7

#bot related
scoreboard players set #MAX_BOT_COUNT value 24
scoreboard players set #BOT_ALLOWED_REROUTES value 1
scoreboard players set #BOT_ALLOWED_REROUTES_ROAM value 5

#ban warp item in race mode?
scoreboard players set #BAN_WARP_ITEM_RACE_MODE value 1

#ban sprinting? y/n
scoreboard players set #SPRINTING_ALLOWED value 1
#i considered disabling sprinting, but unfortunately it ruins levels with underwater sections since you can't swim properly

#value dictating how much turning your view quickly eats your momentum
scoreboard players set #CONST_YAW_LOSS value 8

#multipliers (150 = 1.5x)

#"Easy" time limit multiplier (Assist Mode)
scoreboard players set #CONST_ASSIST_TIME value 150
#"Peaceful" time limit multiplier for Present pickups (Assist Mode)
scoreboard players set #CONST_ASSIST_TIME_2 value 200