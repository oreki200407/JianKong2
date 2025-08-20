execute if score #switching system matches 1 run return fail

execute unless score 蜘蛛眼 info_monitor matches 4.. run return run tellraw @s ["◎ 材料不足, 無法", {"text": "購買陷阱", "color": "gold"}]
execute unless score 腐肉 info_monitor matches 2.. run return run tellraw @s ["◎ 材料不足, 無法", {"text": "購買陷阱", "color": "gold"}]

scoreboard players remove 蜘蛛眼 info_monitor 4
scoreboard players remove 腐肉 info_monitor 2
give @s purple_dye[item_name={translate: "item.minecraft.lingering_potion.effect.harming"},custom_data={"type":"trap","command":"summon lingering_potion ~ ~.1 ~ {Item:{id:\"lingering_potion\",count:1,components:{\"potion_contents\":{potion:\"strong_harming\"}}}}"},custom_model_data={strings:["instant_damage_monitor"]}, consumable={consume_seconds: 99999}] 1
playsound block.anvil.use ambient @s ~ ~ ~ 1 2