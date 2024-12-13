scoreboard players remove @s[scores={autoJumpPadCooldown=1..}] autoJumpPadCooldown 1

#this should work out a lot better for high ping players

#high
execute if block ~ ~-0.9 ~ #phan:jump_high unless score @s autoJumpPadCooldown matches 1.. if score @s onGround matches 1.. run function phan:movement/jump_pad_high_auto
execute if block ~ ~-1.1 ~ #phan:jump_high unless score @s autoJumpPadCooldown matches 1.. if score @s onGround matches 1.. run function phan:movement/jump_pad_high_auto
#short
execute if block ~ ~-0.9 ~ #phan:jump_short unless score @s autoJumpPadCooldown matches 1.. if score @s onGround matches 1.. run function phan:movement/jump_pad_short_auto
execute if block ~ ~-1.1 ~ #phan:jump_short unless score @s autoJumpPadCooldown matches 1.. if score @s onGround matches 1.. run function phan:movement/jump_pad_short_auto
