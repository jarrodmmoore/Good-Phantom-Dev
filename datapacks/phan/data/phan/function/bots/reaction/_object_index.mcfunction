#executed by the entity our bot is reacting to

execute positioned ~-7 ~-5 ~-7 if entity @s[type=item_display,tag=itemBox,dx=14,dy=6,dz=14] positioned ~7 ~5 ~7 run function phan:bots/reaction/item_box
execute if entity @s[type=marker,tag=AIBC,scores={AIBC_event=3}] run function phan:bots/reaction/forced_redirect
#more here...