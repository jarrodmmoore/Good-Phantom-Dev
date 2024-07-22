#send data to controller one last time before we perish
function phan:bots/stage_data_for_transfer

#perish
scoreboard players set @s lifespan 1
tag @s remove ai
tag @s remove botRespawn