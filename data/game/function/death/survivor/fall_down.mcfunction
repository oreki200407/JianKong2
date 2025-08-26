###################################################
# 當玩家倒地的時候執行
# 
# Name   : fall_down.mcfunction
# Path   : game:death/survivor/
# As     : 血量歸零倒地的玩家
# At     : As，如果死得太低就改成重生點
# Loop   : 否
# Author : Alex_Cai, oreki20
###################################################

#如果玩家死得太低就回重生點
execute if predicate game:too_low at @e[type=marker, tag=spawn_survivor, limit=1] run return run function game:death/survivor/fall_down

#轉旁觀
gamemode spectator @s
title @s title {text: "你倒地了", color: "red", bold: true}
tellraw @a ["◎ ", {selector: "@s"}, " 倒地了"]
tag @s add fall_down
scoreboard players add @s death_score 50
scoreboard players add @s st_fall 1

#召喚盔甲座和物品展示實體

#讓展示實體乘著盔甲座往下掉
#不可以把Marker設為true
summon armor_stand ~ ~ ~ \
{\
	Invisible: true, Invulnerable: true, Small: true, NoBasePlate: true, DisabledSlots: 4144959, attributes: [{id: "scale", base: 0.0625}, {id: "gravity", base: 1.0}], Tags: ["tomb"],\
	Passengers:\
	[\
		{\
			id: "item_display", Glowing: true, glow_color_override: 16711680, item: {id: "player_head"}, billboard: "vertical", Tags: ["tomb", "tomb_temp"],\
			transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 180f, 0f, 1f], translation: [0f, 1f, 0f], scale: [1f, 1f, 1f]},\
			Passengers:\
			[\
				{\
					id: "text_display", text: ["按住", {keybind: "key.sneak"}, "救援"], billboard: "vertical", Tags: ["tomb_text"],\
					transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 1.2f, 0f], scale: [1.2f, 1.2f, 1.2f]}\
				}\
			]\
		}\
	]\
}

#讓展示實體記住對應的玩家
scoreboard players operation @e[type=item_display, tag=tomb_temp, distance=..1] uuid0_match = @s uuid0
item modify entity @e[type=item_display, tag=tomb_temp, distance=..1, limit=1] contents {function: "fill_player_head", entity: "this"}
tag @e[type=item_display, tag=tomb_temp, distance=..1, limit=1] remove tomb_temp