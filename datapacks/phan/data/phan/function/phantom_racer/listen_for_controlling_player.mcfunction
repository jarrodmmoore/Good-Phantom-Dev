#make sure the controller exists
execute unless entity @e[type=item,tag=gameController,distance=..12] run function phan:phantom_racer/summon_controller

#controller checks if a player wants to pick it up
execute as @e[type=item,tag=gameController,distance=..12] at @s run function phan:phantom_racer/listen_for_controlling_player_go