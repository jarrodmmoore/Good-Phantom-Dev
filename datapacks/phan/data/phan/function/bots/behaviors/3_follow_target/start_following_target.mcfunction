scoreboard players set @s botChaseTime 0
scoreboard players set @s botBehavior 3

#if we're just starting to target a player, choose a funky hook when approaching to throw them off
execute if score @s botTargetPriority matches 2 run function phan:bots/behaviors/3_follow_target/use_tricky_hook_modifier