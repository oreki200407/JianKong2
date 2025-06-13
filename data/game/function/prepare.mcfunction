title @a title {"text":"準備時間","bold":true,"color":"gold"}
scoreboard players set #mode system 4

effect give @a[team=!spec] resistance 180 100 true
effect give @a[team=survivor] night_vision 180 0 true

#時間
scoreboard players reset #time system
scoreboard players set @e[tag=power] power_level 1
schedule function game:time 1s
schedule function game:start 3601t
bossbar set jk2:time players
bossbar set jk2:prepare players @a

#清空大廳
kill @e[type=marker,tag=lobby_spawn]
kill @e[tag=lobby_text]
kill @e[tag=lobby_setting]
kill @e[tag=monitor_marker]
execute at @e[type=marker,tag=lobby] run place structure game:monitor ~-10 ~-1 ~-10

#裝備
item replace entity @a[team=survivor] armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=true,enchantments={"game:sonic_boom_protection": 1}]
item replace entity @a[team=survivor] armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=true,enchantments={"game:sonic_boom_protection": 1}]
item replace entity @a[team=survivor] armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=true,enchantments={"game:sonic_boom_protection": 1}]
give @a[team=monitor] black_dye[custom_model_data={strings:["camera"]},item_name="安裝監視器"]

#重置收容
kill @e[tag=contain]
kill @e[tag=contain_escape]
execute as @e[type=marker,tag=contain_marker] at @s run function contain:summon
scoreboard players set #room contain_temperature 20
scoreboard players set @e[tag=contain] contain_health 20
scoreboard players set @e[tag=contain] contain_temperature 20
scoreboard players set @e[tag=contain] contain_food 20

#電箱
execute at @e[type=armor_stand,tag=box_point] run fill ~ ~ ~ ~ ~1 ~ air

#傳送
function game:teleport
execute at @e[type=marker,tag=spawn_survivor,limit=1] run setblock ~ ~ ~ ender_chest
execute at @e[type=marker,tag=spawn_survivor,limit=1] run spawnpoint @a[team=survivor]
execute at @e[type=marker,tag=lobby,limit=1] run spawnpoint @a[team=monitor]

gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]