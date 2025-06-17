scoreboard players remove @s botFireworkTime 1

#particle trails while we're boosting (pretending like we're a vanilla firework boost)
particle firework ~ ~.5 ~ 0 0 0 0 1 force

#don't care about progress right now
scoreboard players set @s botTimeSinceProgress -10
scoreboard players set @s botProgressXX 2147483647
scoreboard players set @s botProgressYY 2147483647
scoreboard players set @s botProgressZZ 2147483647