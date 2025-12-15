#load chunks around us if they aren't loaded
execute unless loaded ~16 ~ ~ run forceload add ~16 ~
execute unless loaded ~16 ~ ~16 run forceload add ~16 ~16
execute unless loaded ~16 ~ ~-16 run forceload add ~16 ~-16
execute unless loaded ~ ~ ~16 run forceload add ~ ~16
execute unless loaded ~-16 ~ ~ run forceload add ~-16 ~
execute unless loaded ~-16 ~ ~16 run forceload add ~-16 ~16
execute unless loaded ~-16 ~ ~-16 run forceload add ~-16 ~-16
execute unless loaded ~ ~ ~-16 run forceload add ~ ~-16