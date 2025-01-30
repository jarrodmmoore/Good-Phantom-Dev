#levels need to be associated with specific data storage entities
scoreboard players set 00000000-0000-0328-0000-000000000001 levelUID 1
scoreboard players set 00000000-0000-0328-0000-000000000002 levelUID 2
scoreboard players set 00000000-0000-0328-0000-000000000003 levelUID 3
scoreboard players set 00000000-0000-0328-0000-000000000004 levelUID 4
scoreboard players set 00000000-0000-0328-0000-000000000005 levelUID 5
scoreboard players set 00000000-0000-0328-0000-000000000006 levelUID 6
scoreboard players set 00000000-0000-0328-0000-000000000007 levelUID 7
scoreboard players set 00000000-0000-0328-0000-000000000008 levelUID 8
scoreboard players set 00000000-0000-0328-0000-000000000009 levelUID 9
scoreboard players set 00000000-0000-0328-0000-00000000000a levelUID 10
#16
scoreboard players set 00000000-0000-0328-0000-000000000010 levelUID 1001
scoreboard players set 00000000-0000-0328-0000-000000000011 levelUID 1002
scoreboard players set 00000000-0000-0328-0000-000000000012 levelUID 1003
scoreboard players set 00000000-0000-0328-0000-000000000013 levelUID 1004
scoreboard players set 00000000-0000-0328-0000-000000000014 levelUID 1005
scoreboard players set 00000000-0000-0328-0000-000000000015 levelUID 1006
scoreboard players set 00000000-0000-0328-0000-000000000016 levelUID 1007
scoreboard players set 00000000-0000-0328-0000-000000000017 levelUID 1008
scoreboard players set 00000000-0000-0328-0000-000000000018 levelUID 1009
scoreboard players set 00000000-0000-0328-0000-000000000019 levelUID 1010

#level randomization
tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,tag=randomViable] remove randomViable
tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1..}] add randomViable

#get ready to catch errors with functions due to server host
scoreboard players set #errorCheck value 0

#run setup functions
function phan:setup/constants
function phan:setup/bossbars
function phan:setup/scoreboard
function phan:setup/gamerules
function phan:setup/teams
function phan:setup/storages

#version for imported/exported maps
scoreboard players set #mapDataVersion value 102000
scoreboard players set #mapDataWarn value -1

#forget which dream is cached. write it again next time we boot a level (for development convenience)
scoreboard players set #cachedLevel value 0