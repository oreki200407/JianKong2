###################################################
# 重設終界箱
# 
# Name   : reset.mcfunction
# Path   : summon:
# As     : 重設終界箱的玩家
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

item replace entity @s enderchest.0 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.8 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.9 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.10 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.11 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.12 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.13 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.14 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.15 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.16 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.17 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.18 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.19 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.20 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.21 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.22 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.23 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.24 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.25 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]
item replace entity @s enderchest.26 with glowstone_dust[custom_data={summon:none},item_model=gray_stained_glass_pane,tooltip_display={hide_tooltip: true}]

function summon:head/reset

execute unless score @s summon_monster matches 1..7 run return fail

execute store result storage jk2:data root.summon.head int 1 run scoreboard players get @s summon_monster
function summon:head/choose with storage jk2:data root.summon
function summon:operation/reset