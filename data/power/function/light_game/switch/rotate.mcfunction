execute store success score @s light_game run clear @s coal[custom_model_data={strings:["green"]}]
$execute as @a[scores={light_game=1}] run item replace block ~ ~ ~ container.$(switch) with coal[custom_data={number:$(switch)},custom_model_data={strings:["red"]},custom_name=""]

execute store success score @s light_game run clear @s coal[custom_model_data={strings:["red"]}]
$execute as @a[scores={light_game=1}] run item replace block ~ ~ ~ container.$(switch) with coal[custom_data={number:$(switch)},custom_model_data={strings:["green"]},custom_name=""]

$execute if items block ~ ~ ~ container.$(left) coal[custom_model_data={strings:["red"]},custom_name=""] run item replace block ~ ~ ~ container.$(left) with coal[custom_data={number:$(left)},custom_model_data={strings:["green"]},custom_name="change"]
$execute if items block ~ ~ ~ container.$(left) coal[custom_model_data={strings:["green"]},custom_name=""] run item replace block ~ ~ ~ container.$(left) with coal[custom_data={number:$(left)},custom_model_data={strings:["red"]},custom_name="change"]

$execute if items block ~ ~ ~ container.$(right) coal[custom_model_data={strings:["red"]},custom_name=""] run item replace block ~ ~ ~ container.$(right) with coal[custom_data={number:$(right)},custom_model_data={strings:["green"]},custom_name="change"]
$execute if items block ~ ~ ~ container.$(right) coal[custom_model_data={strings:["green"]},custom_name=""] run item replace block ~ ~ ~ container.$(right) with coal[custom_data={number:$(right)},custom_model_data={strings:["red"]},custom_name="change"]

$execute if items block ~ ~ ~ container.$(up) coal[custom_model_data={strings:["red"]},custom_name=""] run item replace block ~ ~ ~ container.$(up) with coal[custom_data={number:$(up)},custom_model_data={strings:["green"]},custom_name="change"]
$execute if items block ~ ~ ~ container.$(up) coal[custom_model_data={strings:["green"]},custom_name=""] run item replace block ~ ~ ~ container.$(up) with coal[custom_data={number:$(up)},custom_model_data={strings:["red"]},custom_name="change"]

$execute if data storage jk2:data root.monitor.light_game.chest2 if items block ~-1 ~ ~ container.$(up) coal[custom_model_data={strings:["red"]},custom_name=""] run item replace block ~-1 ~ ~ container.$(up) with coal[custom_data={number:$(up)},custom_model_data={strings:["green"]},custom_name="change"]
$execute if data storage jk2:data root.monitor.light_game.chest2 if items block ~-1 ~ ~ container.$(up) coal[custom_model_data={strings:["green"]},custom_name=""] run item replace block ~-1 ~ ~ container.$(up) with coal[custom_data={number:$(up)},custom_model_data={strings:["red"]},custom_name="change"]

$execute if items block ~ ~ ~ container.$(down) coal[custom_model_data={strings:["red"]},custom_name=""] run item replace block ~ ~ ~ container.$(down) with coal[custom_data={number:$(down)},custom_model_data={strings:["green"]},custom_name="change"]
$execute if items block ~ ~ ~ container.$(down) coal[custom_model_data={strings:["green"]},custom_name=""] run item replace block ~ ~ ~ container.$(down) with coal[custom_data={number:$(down)},custom_model_data={strings:["red"]},custom_name="change"]

$execute unless data storage jk2:data root.monitor.light_game.chest2 if items block ~1 ~ ~ container.$(down) coal[custom_model_data={strings:["red"]},custom_name=""] run item replace block ~1 ~ ~ container.$(down) with coal[custom_data={number:$(down)},custom_model_data={strings:["green"]},custom_name="change"]
$execute unless data storage jk2:data root.monitor.light_game.chest2 if items block ~1 ~ ~ container.$(down) coal[custom_model_data={strings:["green"]},custom_name=""] run item replace block ~1 ~ ~ container.$(down) with coal[custom_data={number:$(down)},custom_model_data={strings:["red"]},custom_name="change"]

$execute if items block ~ ~ ~ container.$(left) coal[custom_name="change"] run item modify block ~ ~ ~ container.$(left) {"function": "minecraft:set_name","name": {"text": ""}}
$execute if items block ~ ~ ~ container.$(right) coal[custom_name="change"] run item modify block ~ ~ ~ container.$(right) {"function": "minecraft:set_name","name": {"text": ""}}
$execute if items block ~ ~ ~ container.$(up) coal[custom_name="change"] run item modify block ~ ~ ~ container.$(up) {"function": "minecraft:set_name","name": {"text": ""}}
$execute if items block ~-1 ~ ~ container.$(up) coal[custom_name="change"] run item modify block ~-1 ~ ~ container.$(up) {"function": "minecraft:set_name","name": {"text": ""}}
$execute if items block ~ ~ ~ container.$(down) coal[custom_name="change"] run item modify block ~ ~ ~ container.$(down) {"function": "minecraft:set_name","name": {"text": ""}}
$execute if items block ~1 ~ ~ container.$(down) coal[custom_name="change"] run item modify block ~1 ~ ~ container.$(down) {"function": "minecraft:set_name","name": {"text": ""}}

execute store success score @s light_game run clear @s coal[custom_model_data={strings:["none"]}]
$execute as @a[scores={light_game=1}] run item replace block ~ ~ ~ container.$(switch) with coal[custom_data={number:$(switch)},custom_model_data={strings:["none"]},custom_name=""]