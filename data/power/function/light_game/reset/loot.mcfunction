$execute unless items block ~ ~ ~ container.$(number) * run return run item replace block ~ ~ ~ container.$(number) with coal[custom_name="", tooltip_display={hide_tooltip: true}, custom_model_data={strings: ["green"]}, custom_data={number: $(number)}]

$item modify block ~ ~ ~ container.$(number) {function: "set_custom_data", tag: {number: $(number)}}
$item modify block ~1 ~ ~ container.$(number) power:chest2
