$item modify block ~ ~ ~ container.$(number) {function: "set_custom_data", tag: {number: $(number)}}
$item modify block ~1 ~ ~ container.$(number) {function: "set_custom_data", tag: {number: $(number)}}
$execute if items block ~1 ~ ~ container.$(number) echo_shard[custom_model_data={strings:["none"]}] run item modify block ~1 ~ ~ container.$(number) power:chest2