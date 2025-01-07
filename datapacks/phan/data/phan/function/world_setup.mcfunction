#run this manually!

#we can't put this in "_bootup" because minecraft will try to run it before any entities are loaded
#...which would result in the randomization armor stands duplicating and causing erratic behavior!

#world spawn
setworldspawn 162 -6 132

#variables
scoreboard players set #hudMode value 1
scoreboard players add #gameState value 0

#summon stands
kill @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1]
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,1]}
scoreboard players set @e[tag=setup] r 1
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,2]}
scoreboard players set @e[tag=setup] r 2
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,3]}
scoreboard players set @e[tag=setup] r 3
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,4]}
scoreboard players set @e[tag=setup] r 4
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,5]}
scoreboard players set @e[tag=setup] r 5
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,6]}
scoreboard players set @e[tag=setup] r 6
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,7]}
scoreboard players set @e[tag=setup] r 7
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,8]}
scoreboard players set @e[tag=setup] r 8
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,9]}
scoreboard players set @e[tag=setup] r 9
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,10]}
scoreboard players set @e[tag=setup] r 10
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,11]}
scoreboard players set @e[tag=setup] r 11
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,12]}
scoreboard players set @e[tag=setup] r 12
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,13]}
scoreboard players set @e[tag=setup] r 13
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,14]}
scoreboard players set @e[tag=setup] r 14
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,15]}
scoreboard players set @e[tag=setup] r 15
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,16]}
scoreboard players set @e[tag=setup] r 16
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,17]}
scoreboard players set @e[tag=setup] r 17
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,18]}
scoreboard players set @e[tag=setup] r 18
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,19]}
scoreboard players set @e[tag=setup] r 19
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,20]}
scoreboard players set @e[tag=setup] r 20
tag @e[tag=setup] remove setup

#need 4 extra for subtitle score display
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,21]}
scoreboard players set @e[tag=setup] r 21
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,22]}
scoreboard players set @e[tag=setup] r 22
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,23]}
scoreboard players set @e[tag=setup] r 23
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,24]}
scoreboard players set @e[tag=setup] r 24
tag @e[tag=setup] remove setup

#and 3 more for remembering our previous 3 ranks
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,25]}
scoreboard players set @e[tag=setup] r 25
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,26]}
scoreboard players set @e[tag=setup] r 26
tag @e[tag=setup] remove setup
summon armor_stand 0 -63 0 {Marker:1b,Tags:["randomize","setup"],UUID:[I;0,808,0,27]}
scoreboard players set @e[tag=setup] r 27
tag @e[tag=setup] remove setup

#later i learned that you can use storage to store strings for stuff, so the extra UUID nonsense wasn't really needed.
#oh well! it's still pretty performant so i see no reason to overhaul it