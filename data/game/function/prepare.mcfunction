title @a title {"text":"準備時間","bold":true,"color":"gold"}
scoreboard players set #mode system 4

effect give @a[team=!spec] saturation infinite 0 true
effect give @a[team=!spec] resistance 180 100 true
effect give @a[team=survivor] night_vision 180 0 true
effect give @a[team=monitor] night_vision infinite 0 true

#發錢
scoreboard players operation @a[team=survivor] money = 初始資金 lobby
scoreboard players set @a[team=survivor] stamina 100

#時間
scoreboard players reset #prepare system
scoreboard players reset #time system
schedule function game:time 1s
schedule function game:start 3601t
bossbar set jk2:time players
bossbar set jk2:prepare players @a

#清空大廳
execute at @e[type=marker, tag=map_info, limit=1] run setblock ~ ~ ~ air
execute at @e[type=marker, tag=monster_info, limit=1] run setblock ~ ~ ~ air
kill @e[type=marker,tag=lobby_spawn]
kill @e[tag=lobby_text]
kill @e[tag=lobby_setting]
kill @e[tag=monitor_marker]
execute at @e[type=marker, tag=lobby, limit=1] run place template game:monitor ~-10 ~-1 ~-10

#發電
scoreboard players set @e[tag=power] power_level 1
scoreboard players set #power1 power 0
scoreboard players set #power2 power 0
scoreboard players set #power3 power 0

#陷阱
scoreboard players set #trap trap_cooldown 15
scoreboard players reset #cooldown trap_cooldown

#裝備
item replace entity @a[team=survivor] armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=false]
item replace entity @a[team=survivor] armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=false]
item replace entity @a[team=survivor] armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=false]
give @a[team=monitor] black_dye[custom_model_data={strings:["camera"]},item_name="安裝監視器",consumable={consume_seconds: 99999}]

#設定初始怪物
execute as @e[type=armor_stand,tag=summon_pick,scores={summon_number=1..7}] run function summon:pick/setting

#重置收容
kill @e[tag=contain]
kill @e[tag=contain_escape]
execute as @e[type=marker,tag=contain_marker] at @s run function contain:summon
scoreboard players set #room contain_temperature 20
scoreboard players set @e[tag=contain] contain_health 20
scoreboard players set @e[tag=contain] contain_temperature 20
scoreboard players set @e[tag=contain] contain_food 20
scoreboard players set 紙 info_monitor 0
scoreboard players set 骨頭 info_monitor 0
scoreboard players set 蜘蛛眼 info_monitor 0
scoreboard players set 腐肉 info_monitor 0
scoreboard players set 火藥 info_monitor 0
scoreboard players set 電力 info_monitor 0

#電箱
execute at @e[type=armor_stand,tag=box_point] run fill ~ ~ ~ ~ ~1 ~ air

#傳送
function game:teleport
execute at @e[type=marker,tag=spawn_survivor,limit=1] run setblock ~ ~ ~ ender_chest
execute at @e[type=marker,tag=spawn_survivor,limit=1] run spawnpoint @a[team=survivor]
execute at @e[type=marker,tag=lobby,limit=1] run spawnpoint @a[team=monitor]

tellraw @a[team=survivor] ["◎ 請在準備時間內", {"color":"gold",text: "購買物品"}]
tellraw @a[team=monitor] ["◎ 請在準備時間內", {"color":"gold",text: "安裝監視器"}]

gamemode adventure @a[team=!spec]