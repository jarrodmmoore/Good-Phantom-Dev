#must switch to a non-emissive texture so the fadeout works
execute if entity @s[tag=!speedPadDisplaySuper] run item replace entity @s container.0 with cyan_dye[item_model="gp/item_entity/speed_pad_fading"]
execute if entity @s[tag=speedPadDisplaySuper] run item replace entity @s container.0 with cyan_dye[item_model="gp/item_entity/speed_pad_super_fading"]

#done. stop worrying about it
tag @s add darkening_speed_pad