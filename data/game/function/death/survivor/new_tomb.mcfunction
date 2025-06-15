#設定頭顱
data merge entity @s {Glowing: true, glow_color_override: 16711680, CustomName: ["按住", {"keybind": "key.sneak"}, "救援"], CustomNameVisible: true, item: {id: "minecraft:player_head"}, billboard: "vertical", transformation:{left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 180f, 0f, 1f], translation: [0f, 0f, 0f], scale: [1f, 1f, 1f]}, Tags: ["tomb","tomb_temp"]}

#讓展示實體記住對應的玩家
execute store result entity @s data.player_uuid0 int 1 run scoreboard players get #fall_down uuid0