execute unless score 火藥 info_monitor matches 4.. unless score 骨頭 info_monitor matches 3.. run return run tellraw @s ["◎ 材料不足, 無法", {"text": "購買陷阱", "color": "gold"}]

scoreboard players remove 火藥 info_monitor 4
scoreboard players remove 骨頭 info_monitor 3
give @s purple_dye[item_name="黑洞炸彈",custom_data={"type":"trap","command":"function gadget:black_hole/spawn"},custom_model_data={strings:["black_hole_monitor"]}, consumable={consume_seconds: 99999}] 1
playsound block.anvil.use ambient @s ~ ~ ~ 1 2