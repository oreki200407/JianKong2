#資訊
execute as @e[type=interaction,tag=tutorial_marker] if data entity @s interaction run function tutorial:info/interaction

#救援
execute as @e[type=interaction,tag=tutorial_player_interaction] at @s if data entity @s attack run function tutorial:save/death
execute as @a[tag=tutorial,predicate=game:flag/sneak] at @s if entity @e[type=item_display, tag=tutorial_tomb, distance=..1.5] run function tutorial:save/saving
scoreboard players reset @a[tag=tutorial, predicate=!game:flag/sneak, scores={revive_time=1..}] revive_time

#開鎖器
execute as @a[tag=tutorial_unlock] run function tutorial:unlock/unlocking

#捕獸夾
execute at @e[type=marker,tag=tutorial_bear_trap_point,limit=1] unless entity @a[distance=..1.5] unless entity @e[type=item_display,tag=tutorial_bear_trap] run summon item_display ~ ~.375 ~ {item: {id: "tripwire_hook", components: {"custom_model_data": {strings: ["bear_trap"]}}}, transformation: {scale: [0.75f, 0.75f, 0.75f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}, Tags: ["tutorial_bear_trap"]}
execute as @e[type=item_display, tag=tutorial_bear_trap] run function tutorial:bear_trap/trap_working
execute as @e[tag=tutorial_trapped] run function tutorial:bear_trap/trapped

#電箱
execute as @a[tag=tutorial] at @s run function tutorial:box/use/root
execute as @a[tag=tutorial_fixing_box] run function tutorial:box/fix/fixing

#錘子
execute as @a[tag=tutorial] if items entity @s weapon diamond[item_name="錘子"] run scoreboard players add @s hammer_hold 1
execute as @e[tag=tutorial_plank] at @s run function tutorial:hammer/plank

#發電機
execute as @a[tag=tutorial] run function power:root
execute as @e[tag=tutorial_power1,tag=!puzzle_game] at @s run function power:puzzle_game/reset/root
execute as @e[tag=tutorial_power2,tag=!netwalk_game] at @s run function power:netwalk_game/reset/root
execute as @e[tag=tutorial_power3,tag=!light_game] at @s run function power:light_game/reset/root
execute as @e[type=area_effect_cloud, tag=power_time, nbt={PortalCooldown: 0}] at @s run function power:light_off