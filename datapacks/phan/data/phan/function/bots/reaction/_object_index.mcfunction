#executed by the entity our bot is reacting to


#=====
#potential temporary targets (the objects checked first will probably take priority)

#boost off of mines if we're ready to do that
execute if score #botPreparedToBoostTrap value matches 1.. if score #botSkill value matches 3.. if score #targetExists value matches 0 positioned ^ ^ ^5 if entity @s[type=item_display,tag=enemyMine,distance=..5] positioned ^ ^ ^-5 run function phan:bots/reaction/mine_boost

#item box
execute if score #botSkill value matches 2.. positioned ~-7 ~-5 ~-7 if entity @s[type=item_display,tag=itemBox,dx=14,dy=6,dz=14] positioned ~7 ~5 ~7 run function phan:bots/reaction/item_box

#trapped chest
execute unless score #botPreparedToBoostTrap value matches 1.. rotated ~ 0 positioned ^ ^ ^5 positioned ~-5 ~-5 ~-5 if entity @s[type=item_display,tag=trappedChest,dx=10,dy=6,dz=10] positioned ~5 ~5 ~5 positioned ^ ^ ^-5 run function phan:bots/reaction/trapped_chest

#speed pad
execute if score #botSkill value matches 3.. if score #botBoostTime value matches ..15 rotated ~ 0 positioned ^ ^ ^5 if entity @s[type=item_display,tag=speedPadDisplay,distance=..5] positioned ^ ^ ^-5 run function phan:bots/reaction/speed_pad
#=====


#=====
#always relevent (no priority)

#forced redirect event
execute if entity @s[type=marker,tag=AIBC,scores={AIBC_event=3}] run function phan:bots/reaction/forced_redirect

#avoid mines if possible
execute unless score #botPreparedToBoostTrap value matches 1.. if score #botSkill value matches 3.. if score #targetExists value matches 0 positioned ^ ^ ^5 if entity @s[type=item_display,tag=enemyMine,distance=..4] positioned ^ ^ ^-5 run function phan:bots/reaction/mine
#=====