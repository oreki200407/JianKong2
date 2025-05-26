#隨機的第一項
data modify storage jk2:data root.monitor.netwalk_game.nodes_vec2arr set value [{row: 0, column: 0}]
execute store result storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0].row int 1 run random value 0..4
execute store result storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0].column int 1 run random value 0..4
data modify storage jk2:data root.monitor.netwalk_game.table set value \
[\
	[{connected: []}, {connected: []}, {connected: []}, {connected: []}, {connected: []}],\
	[{connected: []}, {connected: []}, {connected: []}, {connected: []}, {connected: []}],\
	[{connected: []}, {connected: []}, {connected: []}, {connected: []}, {connected: []}],\
	[{connected: []}, {connected: []}, {connected: []}, {connected: []}, {connected: []}],\
	[{connected: []}, {connected: []}, {connected: []}, {connected: []}, {connected: []}]\
]

#生成
function power:netwalk_game/reset/generate