function phan:game/4/race/checkpoint/operate/checkpoint_add_1
#sync checkFake with check
scoreboard players operation @s checkFake = @s check

#sound effect... just to be consistent with Sprint Racer ;)
function phan:player/tell_spectators
execute if score @s playerGetEyes matches 0.. at @s run playsound minecraft:block.note_block.xylophone master @a[tag=tellMe] ~ 100000 ~ 100000 1

#flash split time
scoreboard players operation @s splitTime = @s rawTime
scoreboard players set @s[scores={playerGetEyes=0..}] hudFlashTime 25

#DEBUG: show time it took to hit this checkpoint
#execute if entity @s[tag=debugCheckpointTimes] run tellraw @a ["",{"text":"[DEBUG] time to checkpoint ","color":"green"},{"score":{"name":"@s","objective":"check"},"color":"green"},{"text":": ","color":"green"},{"score":{"name":"@s","objective":"debug"},"color":"white"}]
#scoreboard players set @s[tag=debugCheckpointTimes] debug 0

#add ender eyes
execute if score @s playerGetEyes matches ..-1 run scoreboard players set @s playerGetEyes 0
scoreboard players operation @s eyesToAdd += @s playerGetEyes
scoreboard players set @s playerGetEyes 0
scoreboard players set @s eyeAddDelay 0

#manage the lists of rings and boxes the player recently hit
scoreboard players add @s ringID 1
execute if score @s ringID matches 2.. run scoreboard players set @s ringID 0
execute if score @s ringID matches 0 run function phan:game/4/objects/ring_clear_list_a
execute if score @s ringID matches 1 run function phan:game/4/objects/ring_clear_list_b
scoreboard players add @s boxID 1
execute if score @s boxID matches 2.. run scoreboard players set @s boxID 0
execute if score @s boxID matches 0 run function phan:game/4/objects/box_clear_list_a
execute if score @s boxID matches 1 run function phan:game/4/objects/box_clear_list_b


#players further behind get free energy
execute if score @s itemLuck matches 3 run scoreboard players add @s energy 1
execute if score @s itemLuck matches 4 run scoreboard players add @s energy 2
execute if score @s itemLuck matches 5 run scoreboard players add @s energy 3
execute if score @s energy matches 19..99 run scoreboard players set @s energy 18

#respawn cooldown
scoreboard players set @s[type=player] inputCooldownB 30

#check or record timestamp on this checkpoint to figure out item balancing
function phan:game/4/race/checkpoint/timestamp/_index

#clear tags
tag @s[tag=incrementCheckReal] remove incrementCheckReal
#this overrides any optional check increment
tag @s[tag=incrementCheckOptional] remove incrementCheckOptional