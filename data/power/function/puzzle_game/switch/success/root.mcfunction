$execute if items block ~ ~ ~ container.$(left) echo_shard[custom_model_data={strings:["20"]}] run item replace block ~ ~ ~ container.$(switch) with echo_shard[custom_data={number:$(switch)},custom_model_data={strings:["20"]},tooltip_display={hide_tooltip: true}]
$execute if items block ~ ~ ~ container.$(left) echo_shard[custom_model_data={strings:["20"]}] run return run item replace block ~ ~ ~ container.$(left) with echo_shard[custom_data={number:$(left)},custom_model_data={strings:["$(piece)"]},tooltip_display={hide_tooltip: true}]

$execute if items block ~ ~ ~ container.$(right) echo_shard[custom_model_data={strings:["20"]}] run item replace block ~ ~ ~ container.$(switch) with echo_shard[custom_data={number:$(switch)},custom_model_data={strings:["20"]},tooltip_display={hide_tooltip: true}]
$execute if items block ~ ~ ~ container.$(right) echo_shard[custom_model_data={strings:["20"]}] run return run item replace block ~ ~ ~ container.$(right) with echo_shard[custom_data={number:$(right)},custom_model_data={strings:["$(piece)"]},tooltip_display={hide_tooltip: true}]

$item replace block ~ ~ ~ container.$(switch) with echo_shard[custom_data={number:$(switch)},custom_model_data={strings:["$(piece)"]},tooltip_display={hide_tooltip: true}]
playsound entity.villager.no master @s