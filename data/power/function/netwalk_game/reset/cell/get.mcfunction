#根據row和column，從root.monitor.netwalk_game.table中選擇root.monitor.netwalk_game.cell

$data modify storage jk2:data root.monitor.netwalk_game.cell set from storage jk2:data root.monitor.netwalk_game.table[$(row)][$(column)]