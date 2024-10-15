data merge entity @s {attributes:[{id:"movement_speed",base:0.35d}]}
tag @s remove enemyVindicator
#after hitting the player once, the vindicator returns to its vanilla behavior.
#this was done because a lot of testers would get hit by the vindicator over and over and be too flustered to attack it back.

#notably, the iron golem (which has the same aggressive AI) doesn't do this. it keeps going at you even after hitting you.
#but that's less of an issue because it has a slower move speed. it's also supposed to be a bigger threat as an enemy.