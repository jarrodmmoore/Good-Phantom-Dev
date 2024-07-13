#everybody get set up!
execute if score #activeDimension value matches 1 as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,sort=random] in overworld at @a[limit=1,tag=doneWithIntro] positioned ~ ~-5 ~ run function phan:bots/controller/_bot_controller_setup
execute if score #activeDimension value matches 2 as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,sort=random] in the_nether at @a[limit=1,tag=doneWithIntro] positioned ~ ~-5 ~ run function phan:bots/controller/_bot_controller_setup
execute if score #activeDimension value matches 3 as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,sort=random] in the_end at @a[limit=1,tag=doneWithIntro] positioned ~ ~-5 ~ run function phan:bots/controller/_bot_controller_setup

#no players? just try to set up wherever we are
execute unless entity @a[limit=1,tag=doneWithIntro] as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,sort=random] at @s positioned ~ ~5 ~ run function phan:bots/controller/_bot_controller_setup