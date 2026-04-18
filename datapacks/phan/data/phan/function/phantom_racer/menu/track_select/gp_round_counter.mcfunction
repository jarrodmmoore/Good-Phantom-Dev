#call with $(gp_id)

#update constantly!
$execute as @e[type=text_display,tag=tvSubtitle6,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.cup_rounds",with:[{nbt:"rounds",storage:"phan_grand_prix_$(gp_id):metadata",interpret:false}]}]