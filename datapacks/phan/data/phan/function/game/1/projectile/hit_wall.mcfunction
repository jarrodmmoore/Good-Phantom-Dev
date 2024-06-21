#everything within a radius of us will get hit/collected
execute as @e[distance=..3,tag=shootable,tag=!targetNode] at @s unless block ~ -64 ~ structure_void run function phan:game/1/projectile/get_hit_index
#weird exception: there are cases where we do NOT want pickups to be collectable through walls...
#so in those cases we'll put structure_void at -64 below the pickup to block that from happening

#targets have a slightly smaller splash range
execute as @e[distance=..2,tag=shootable,tag=targetNode] at @s run function phan:game/1/projectile/get_hit_index

#projectile dies now
scoreboard players set @s[scores={lifespan=2..}] lifespan 1