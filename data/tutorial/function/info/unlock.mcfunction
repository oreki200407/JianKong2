clear @s diamond[item_name="開鎖器"]
give @s diamond[item_name="開鎖器",lore=[[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]], consumable={consume_seconds: 99999}, custom_model_data={strings:["lockpick"]}]

tellraw @s ["◎ 求生者可使用", {text: "開鎖器", color: "gold"}, "解鎖鐵門"]
tellraw @s ["◎ 在鐵門旁手持開鎖器點擊", {keybind: "key.use", color: "gold"}]
tellraw @s ["◎ 接著持續上下滾動", {text: "滑鼠滾輪", color: "gold"}, "進行解鎖操作"]