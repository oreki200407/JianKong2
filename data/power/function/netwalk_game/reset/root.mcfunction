tag @s add netwalk_game

#隨機的第一項
data modify storage jk2:data root.monitor.netwalk_game.nodes_vec2arr set value [{row: 0, column: 0}]
execute store result storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0].row int 1 run random value 0..4
execute store result storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0].column int 1 run random value 0..4

#箱子內容
item replace block ~ ~ ~ container.0 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.1 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.2 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.3 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.4 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.5 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.6 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.7 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.8 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]

item replace block ~ ~ ~ container.9 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.10 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.11 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.12 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.13 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.14 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.15 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.16 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.17 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]

item replace block ~ ~ ~ container.18 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.19 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.20 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.21 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.22 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.23 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.24 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.25 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.26 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]

item replace block ~1 ~ ~ container.0 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.1 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.2 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.3 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.4 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.5 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.6 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.7 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.8 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]

item replace block ~1 ~ ~ container.9 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.10 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.11 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.12 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.13 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.14 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.15 with white_stained_glass_pane[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.16 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.17 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]

item replace block ~1 ~ ~ container.18 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.19 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.20 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.21 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.22 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.23 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.24 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.25 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.26 with gray_stained_glass_pane[tooltip_display={hide_tooltip: true}]

#生成
function power:netwalk_game/reset/generate