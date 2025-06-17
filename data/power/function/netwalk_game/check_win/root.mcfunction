###################################################
# 檢查是否過關
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/check_win/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : Alex_Cai
###################################################

#重設箱子
item modify block ~ ~ ~ container.2 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.3 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.4 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.5 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.6 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]

item modify block ~ ~ ~ container.11 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.12 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.13 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.14 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.15 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]

item modify block ~ ~ ~ container.20 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.21 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.22 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.23 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~ ~ ~ container.24 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]

item modify block ~1 ~ ~ container.2 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~1 ~ ~ container.3 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~1 ~ ~ container.4 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~1 ~ ~ container.5 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~1 ~ ~ container.6 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]

item modify block ~1 ~ ~ container.11 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~1 ~ ~ container.12 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~1 ~ ~ container.13 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~1 ~ ~ container.14 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]
item modify block ~1 ~ ~ container.15 [{function: "set_custom_data", tag: "{pass: false}"}, {function: "set_custom_model_data", strings: {values: ["red"], mode: "append"}}]

#召喚一個展示實體 避免一直macro
summon item_display ~ ~ ~ {UUID: [I; 0, 0, 0, 94695]}
data modify storage jk2:data root.monitor.netwalk_game.arguments_stack set value []
function power:netwalk_game/check_win/search/dfs {x_offset: 0, index: 2}