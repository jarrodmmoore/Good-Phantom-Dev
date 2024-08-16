#can't shoot projectile if you're high up
scoreboard players set @a[tag=playing,scores={location_y=149..}] inputCooldownB 20
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=ai,type=zombie,scores={location_y=149..}] inputCooldownC 20