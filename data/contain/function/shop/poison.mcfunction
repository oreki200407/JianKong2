execute unless score 蜘蛛眼 info_monitor matches 3.. run return run tellraw @s ["◎ 材料不足, 無法", {"text": "購買陷阱", "color": "gold"}]
execute unless score 火藥 info_monitor matches 2.. run return run tellraw @s ["◎ 材料不足, 無法", {"text": "購買陷阱", "color": "gold"}]

scoreboard players remove 蜘蛛眼 info_monitor 3
scoreboard players remove 火藥 info_monitor 2
give @s purple_dye[item_name="飛濺劇毒藥水",custom_data={"type":"trap","command":"summon splash_potion ~ ~.1 ~ {Item:{id:\"splash_potion\",count:1,components:{\"potion_contents\":{custom_effects:[{id:\"poison\",amplifier:1,duration:200}]}}}}"},custom_model_data={strings:["poison_monitor"]}, consumable={consume_seconds: 99999}] 1
playsound block.anvil.use ambient @s ~ ~ ~ 1 2