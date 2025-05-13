execute store success score @s wire_game run clear @s string[custom_model_data={strings:["red_horizontal"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["red_vertical"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["red_vertical"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["red_horizontal"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["red_up_left"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["red_up_right"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["red_up_right"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["red_right_down"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["red_right_down"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["red_left_down"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["red_left_down"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["red_up_left"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["green_horizontal"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["green_vertical"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["green_vertical"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["green_horizontal"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["green_up_left"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["green_up_right"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["green_up_right"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["green_right_down"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["green_right_down"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["green_left_down"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["green_left_down"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["green_up_left"]},custom_name=""]

execute store success score @s wire_game run clear @s string[custom_model_data={strings:["none"]}]
$execute as @a[scores={wire_game=1}] run return run item replace block ~ ~ ~ container.$(switch) with string[custom_data={number:$(switch)},custom_model_data={strings:["none"]},custom_name=""]