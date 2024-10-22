#reset assist mode
scoreboard players set #assist_movement value 0
scoreboard players set #assist_energy value 0
scoreboard players set #assist_enemies value 0
#
scoreboard players set #assist_time_limit value 0
scoreboard players set #assist_combos value 0
scoreboard players set #assist_navigation value 0
#
scoreboard players set #assist_items value 0
scoreboard players set #assist_catch_up value 0
scoreboard players set #assist_rival_bot value 0
scoreboard players set #assist_race_end_time value 0
#
function phan:game/0/assist_mode/check_if_assists_enabled