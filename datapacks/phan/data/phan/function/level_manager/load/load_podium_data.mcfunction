#conditions
$weather $(weather)
$time set $(time)
$scoreboard players set @a skyboxSet $(skybox)
$scoreboard players set #nightVision value $(night_vision)

#location
execute store result score #podiumSequenceX value run data get storage phan_dream_active:pr_podium teleport_location[0]
execute store result score #podiumSequenceY value run data get storage phan_dream_active:pr_podium teleport_location[1]
execute store result score #podiumSequenceZ value run data get storage phan_dream_active:pr_podium teleport_location[2]
execute store result score #podiumSequenceDimension value run data get storage phan_dream_active:pr_podium teleport_dimension

#storage was read successfully
scoreboard players set #success value 1