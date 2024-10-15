#true if within 1.5m on x AND z axis
execute if score #coord_x2 value matches -150000..150000 if score #coord_z2 value matches -150000..150000 run return 1

#else
return 0