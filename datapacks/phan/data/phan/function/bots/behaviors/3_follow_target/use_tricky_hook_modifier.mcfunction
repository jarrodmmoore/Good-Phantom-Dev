execute store result score @s botHookModifier run random value -100..100
execute store result score @s botHookModifierTime run random value 15..70

#if we don't have energy to shoot projectiles, we're gonna have to go in for a bite attack.
#so that means don't circle-strafe!
execute if score @s energy matches ..1 unless score @s botHookModifier matches -60..60 store result score @s botHookModifier run random value -60..60