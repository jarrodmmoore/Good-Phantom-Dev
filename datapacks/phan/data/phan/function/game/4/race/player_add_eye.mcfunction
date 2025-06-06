scoreboard players remove @s eyesToAdd 1
scoreboard players add @s enderEyes 1
#only do the deposit noise if we're actually adding something to the portal frame
execute if score @s enderEyes <= #vEyesNeeded value run scoreboard players add @s eyesToDeposit 1

#also play sound for spectators
function phan:player/tell_spectators

#play sound effect
function phan:common/playsound_positionless_macro {sound:"minecraft:custom_sfx/pickup1",targets:"@a[tag=tellMe]",pitch:".8",volume:"1"}

#do again in a set amount of time
execute if score @s eyesToAdd matches 1.. run scoreboard players set @s eyeAddDelay 2
execute if score @s eyesToAdd matches ..0 run scoreboard players set @s eyeAddDelay 6