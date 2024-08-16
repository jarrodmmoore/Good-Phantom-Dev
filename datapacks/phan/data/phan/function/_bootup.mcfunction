#level randomization
scoreboard players set #RANDOM_TRACK_COOLDOWN value 8
tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=randomViable] remove randomViable
tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..15}] add randomViable

#get ready to catch errors with functions due to server host
scoreboard players set #errorCheck value 0

#run setup functions
function phan:setup/constants
function phan:setup/bossbars
function phan:setup/scoreboard
function phan:setup/gamerules
function phan:setup/teams