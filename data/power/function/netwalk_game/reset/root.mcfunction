###################################################
# 開始Netwalk
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/reset/
# As     : 發電機標記，tag=power2
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add netwalk_game

#隨機的第一項
data modify storage jk2:data root.monitor.netwalk_game.nodes_vec2arr set value [{row: 0, column: 0}]
execute store result storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0].row int 1 run random value 0..4
execute store result storage jk2:data root.monitor.netwalk_game.nodes_vec2arr[0].column int 1 run random value 0..4

#箱子內容
item replace block ~ ~ ~ container.0 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~ ~ ~ container.1 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~ ~ ~ container.2 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.3 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.4 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.5 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.6 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.7 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~ ~ ~ container.8 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]

item replace block ~ ~ ~ container.9 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~ ~ ~ container.10 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~ ~ ~ container.11 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.12 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.13 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.14 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.15 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.16 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~ ~ ~ container.17 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]

item replace block ~ ~ ~ container.18 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~ ~ ~ container.19 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~ ~ ~ container.20 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.21 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.22 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.23 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.24 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~ ~ ~ container.25 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~ ~ ~ container.26 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]

item replace block ~1 ~ ~ container.0 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.1 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.2 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.3 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.4 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.5 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.6 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.7 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.8 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]

item replace block ~1 ~ ~ container.9 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.10 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.11 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.12 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.13 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.14 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.15 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_data={connected_vec2arr: []}]
item replace block ~1 ~ ~ container.16 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.17 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]

item replace block ~1 ~ ~ container.18 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.19 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.20 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.21 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.22 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.23 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.24 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.25 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]
item replace block ~1 ~ ~ container.26 with magenta_glazed_terracotta[tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["none"]}]

#生成
function power:netwalk_game/reset/generate