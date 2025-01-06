scoreboard players set #queueHead value 1
scoreboard players set #lastLevelPlayed value 0
tag @s remove playing

#disable assist mode
function phan:game/0/assist_mode/_disable_assist_mode

#reset random track cooldowns
scoreboard players set @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] randomCooldown 0
scoreboard players set @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] randomCooldown2 0
scoreboard players set @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] randomCooldown3 0
scoreboard players set @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] randomCooldown4 0
scoreboard players set @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] randomCooldownS1 0
scoreboard players set @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] randomCooldownS2 0
scoreboard players set @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] randomCooldownS3 0
execute as @e[type=armor_stand,tag=randomViable,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] run function phan:game/0/admin_panel/try_act/determine_selectable_acts
execute as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1..}] run function phan:join/solo_join

#clear out any previous versus mode points
function phan:game/4/new_versus_session

#reset game state
scoreboard objectives setdisplay sidebar
function phan:game/0/_0_init

#clean up some variables while we're here...
scoreboard players reset * hitRing1a
scoreboard players reset * hitRing2a
scoreboard players reset * hitRing3a
scoreboard players reset * hitRing4a
scoreboard players reset * hitRing5a
scoreboard players reset * hitRing6a
scoreboard players reset * hitRing7a
scoreboard players reset * hitRing8a
scoreboard players reset * hitRing9a
scoreboard players reset * hitRing10a
scoreboard players reset * hitRing1b
scoreboard players reset * hitRing2b
scoreboard players reset * hitRing3b
scoreboard players reset * hitRing4b
scoreboard players reset * hitRing5b
scoreboard players reset * hitRing6b
scoreboard players reset * hitRing7b
scoreboard players reset * hitRing8b
scoreboard players reset * hitRing9b
scoreboard players reset * hitRing10b

scoreboard players reset * hitBox1a
scoreboard players reset * hitBox2a
scoreboard players reset * hitBox3a
scoreboard players reset * hitBox4a
scoreboard players reset * hitBox5a
scoreboard players reset * hitBox1b
scoreboard players reset * hitBox2b
scoreboard players reset * hitBox3b
scoreboard players reset * hitBox4b
scoreboard players reset * hitBox5b