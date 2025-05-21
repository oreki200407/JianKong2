$execute if items block ~ ~ ~ container.$(up) coal[custom_model_data={strings:["red"]},custom_name=""] run item replace block ~ ~ ~ container.$(up) with coal[custom_data={number:$(up)},custom_model_data={strings:["green"]},custom_name="change"]
$execute if items block ~ ~ ~ container.$(up) coal[custom_model_data={strings:["green"]},custom_name=""] run item replace block ~ ~ ~ container.$(up) with coal[custom_data={number:$(up)},custom_model_data={strings:["red"]},custom_name="change"]

$execute if score #switch light_game matches ..15 if items block ~ ~ ~ container.$(down) coal[custom_model_data={strings:["red"]},custom_name=""] run item replace block ~ ~ ~ container.$(down) with coal[custom_data={number:$(down)},custom_model_data={strings:["green"]},custom_name="change"]
$execute if score #switch light_game matches ..15 if items block ~ ~ ~ container.$(down) coal[custom_model_data={strings:["green"]},custom_name=""] run item replace block ~ ~ ~ container.$(down) with coal[custom_data={number:$(down)},custom_model_data={strings:["red"]},custom_name="change"]

$execute if score #switch light_game matches 20..24 if items block ~1 ~ ~ container.$(down) coal[custom_model_data={strings:["red"]},custom_name=""] run item replace block ~1 ~ ~ container.$(down) with coal[custom_data={number:$(down)},custom_model_data={strings:["green"]},custom_name="change"]
$execute if score #switch light_game matches 20..24 if items block ~1 ~ ~ container.$(down) coal[custom_model_data={strings:["green"]},custom_name=""] run item replace block ~1 ~ ~ container.$(down) with coal[custom_data={number:$(down)},custom_model_data={strings:["red"]},custom_name="change"]

function power:light_game/switch/success/root with storage jk2:data root.monitor.light_game