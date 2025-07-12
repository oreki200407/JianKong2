execute if score #switching system matches 1 run return fail

execute unless score 骨頭 info_monitor matches 3.. run return run tellraw @s ["◎ 材料不足, 無法", {"text": "購買陷阱", "color": "gold"}]
execute unless score 腐肉 info_monitor matches 2.. run return run tellraw @s ["◎ 材料不足, 無法", {"text": "購買陷阱", "color": "gold"}]

scoreboard players remove 骨頭 info_monitor 3
scoreboard players remove 腐肉 info_monitor 2
give @s purple_dye[item_name="捕獸夾",custom_data={"type":"trap","command":"summon armor_stand ~ ~ ~ {Tags:[\"bear_trap_point\"],Small:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,DisabledSlots:4144959,attributes:[{id:\"explosion_knockback_resistance\",base:1},{id:\"gravity\",base:1}]}"},custom_model_data={strings:["bear_trap_monitor"]}, consumable={consume_seconds: 99999}] 1
playsound block.anvil.use ambient @s ~ ~ ~ 1 2