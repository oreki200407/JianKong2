clear @s diamond[item_name="錘子"]
give @s diamond[item_name="錘子",lore=[[{"text": "按住", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]], consumable={consume_seconds: 99999}, custom_model_data={strings:["hammer"]}]

tellraw @s ["◎ 求生者可前往商店購買", {text: "錘子與木板", color: "gold"}, ", 用來加固窗戶"]
tellraw @s ["◎ 完成加固後, 該窗戶將無法被", {text: "怪物", color: "gold"}, "破壞"]