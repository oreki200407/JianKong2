execute if score #switching system matches 1 run return fail

execute unless score 火藥 info_monitor matches 3.. run return run tellraw @s ["◎ 材料不足, 無法", {"text": "購買陷阱", "color": "gold"}]
execute unless score 紙 info_monitor matches 3.. run return run tellraw @s ["◎ 材料不足, 無法", {"text": "購買陷阱", "color": "gold"}]

scoreboard players remove 火藥 info_monitor 3
scoreboard players remove 紙 info_monitor 3
give @s purple_dye[item_name="鞭炮",custom_data={"type":"trap","command":"function gadget:grenade/summon"},custom_model_data={strings:["bomb_monitor"]}, consumable={consume_seconds: 99999}] 1
playsound block.anvil.use ambient @s ~ ~ ~ 1 2