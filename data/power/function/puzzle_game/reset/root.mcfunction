tag @s add puzzle_game
data remove block ~ ~ ~ lock

scoreboard players reset #puzzle puzzle_game
scoreboard players reset #random_count puzzle_game

data merge block ~ ~ ~ {Items:[]}
data merge block ~1 ~ ~ {Items:[]}

item replace block ~ ~ ~ container.0 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.1 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.2 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.3 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.4 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.5 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.6 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.7 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.8 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.9 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.10 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.16 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.17 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.18 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.19 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.25 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~ ~ ~ container.26 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]

item replace block ~1 ~ ~ container.0 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.1 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.7 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.8 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.9 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.10 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.16 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.17 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.18 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.19 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.20 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.21 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.22 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.23 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.24 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.25 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
item replace block ~1 ~ ~ container.26 with echo_shard[custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]

summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:0,Passengers:[{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]},{id:"marker",Tags:["puzzle"]}]}

execute as @e[tag=puzzle,type=marker] store result entity @s data.number int 1 run scoreboard players add #puzzle puzzle_game 1

execute as @e[tag=puzzle,type=marker,limit=1] run function power:puzzle_game/reset/insert

function power:puzzle_game/reset/random/root