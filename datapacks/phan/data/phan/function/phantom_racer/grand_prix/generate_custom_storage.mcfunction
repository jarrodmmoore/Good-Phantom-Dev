$data modify storage phan_grand_prix_$(id):metadata uid set value $(id)
$data modify storage phan_grand_prix_$(id):metadata rounds set value 0
$data modify storage phan_grand_prix_$(id):metadata show_medals set value 1
$data modify storage phan_grand_prix_$(id):metadata name set value '$(name)'
$data modify storage phan_grand_prix_$(id):metadata icon_model set value '$(icon)'

$data modify storage phan_grand_prix_$(id):round_1 dream set value 0
$data modify storage phan_grand_prix_$(id):round_1 act set value 0
