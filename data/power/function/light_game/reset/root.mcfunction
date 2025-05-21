scoreboard players reset #random_count light_game

data merge block ~ ~ ~ {Items:[]}
data merge block ~1 ~ ~ {Items:[]}

item replace block ~ ~ ~ container.0 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.1 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.7 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.8 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.9 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.10 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.16 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.17 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.18 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.19 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.25 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~ ~ ~ container.26 with coal[custom_model_data={strings:["none"]},custom_name=""]

item replace block ~1 ~ ~ container.0 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.1 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.7 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.8 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.9 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.10 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.16 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.17 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.18 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.19 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.20 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.21 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.22 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.23 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.24 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.25 with coal[custom_model_data={strings:["none"]},custom_name=""]
item replace block ~1 ~ ~ container.26 with coal[custom_model_data={strings:["none"]},custom_name=""]

execute store result storage jk2:data root.monitor.light_game.number int 1 run scoreboard players set #reset light_game 0

function power:light_game/reset/insert

function power:light_game/reset/random