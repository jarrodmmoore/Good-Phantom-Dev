#make the skeleton angry at the nearest player
damage @s 1 minecraft:mob_attack by @a[tag=playing,limit=1,sort=nearest]

#stop doing the distance check
tag @s remove enemySkeleton
tag @s remove enemySpecialCode