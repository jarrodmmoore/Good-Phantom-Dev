#note the lack of string quote marks!

$data modify storage phan_dream_$(level_id):dream_data name_text set value $(name_text)
$data modify storage phan_dream_$(level_id):dream_data name_display set value $(name_display)

$data modify storage phan_dream_$(level_id):sa_act_1 thumbnail_text set value $(thumbnail_text_s1)
$data modify storage phan_dream_$(level_id):sa_act_2 thumbnail_text set value $(thumbnail_text_s2)
$data modify storage phan_dream_$(level_id):sa_act_3 thumbnail_text set value $(thumbnail_text_s3)

$data modify storage phan_dream_$(level_id):pr_act_1 thumbnail_text set value $(thumbnail_text_p1)
$data modify storage phan_dream_$(level_id):pr_act_2 thumbnail_text set value $(thumbnail_text_p2)
$data modify storage phan_dream_$(level_id):pr_act_3 thumbnail_text set value $(thumbnail_text_p3)
$data modify storage phan_dream_$(level_id):pr_act_4 thumbnail_text set value $(thumbnail_text_p4)

scoreboard players set #success value 1