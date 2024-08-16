#assign positions arbitrarily
execute as @e[type=block_display,tag=botEntityMissing,tag=vsHomeStretch,x=197,y=-11,z=117,dx=1,dy=1,dz=1,sort=arbitrary] run function phan:game/4/race/checkpoint/operate_bot_missing/bot_controller_get_position
#we won't bother sorting by wait time in battle since the player won't see the specifics of bot positions

#clear the flag that got us sent here
scoreboard players set #checkDoMissingPlayersHS value 0