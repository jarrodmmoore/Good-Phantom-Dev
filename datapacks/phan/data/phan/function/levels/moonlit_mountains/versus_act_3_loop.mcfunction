#old, obsolete
#respawn if fallen into the void
#execute as @a[tag=playing,gamemode=adventure,scores={location_y=..35}] run function phan:game/4/race/respawn
#execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,scores={location_y=..35}] run tag @s add botRespawn

#make sure gate is closed on lap 1-2
execute if score #mmAct3State value matches 0 if loaded -1842 78 -80 if block -1842 78 -80 structure_void as @e[type=item_display,tag=mmAct3DynamicArrow,x=-1841,y=76,z=-79,distance=..10] positioned -1841 80 -79 positioned ~ ~.5 ~ run tp @s ~ ~ ~
execute if score #mmAct3State value matches 0 if loaded -1842 78 -80 if block -1842 78 -80 structure_void run fill -1842 78 -80 -1842 82 -77 orange_stained_glass replace structure_void

#listen for player to hit lap 3
execute if score #mmAct3State value matches 0 if entity @a[tag=playing,scores={lap=3..}] run scoreboard players add #mmAct3State value 1
execute if score #mmAct3State value matches 0 if score #botsEnabled value matches 1.. if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={lap=3..}] run scoreboard players add #mmAct3State value 1

#door to cave opens up on lap 3
execute if score #mmAct3State value matches 1 if loaded -1842 78 -80 if block -1842 78 -80 orange_stained_glass as @e[type=item_display,tag=mmAct3DynamicArrow,x=-1841,y=76,z=-79,distance=..10] positioned -1841 74 -79 positioned ~ ~.5 ~ run tp @s ~ ~ ~
execute if score #mmAct3State value matches 1 if loaded -1842 78 -80 if block -1842 78 -80 orange_stained_glass run fill -1842 78 -80 -1842 82 -77 structure_void replace orange_stained_glass
