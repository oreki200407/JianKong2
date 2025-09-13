playsound ui.button.click master @s
execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative", "color":"gold"}, "來操作"]

give @s armor_stand[item_name="門", entity_data={id:"minecraft:armor_stand",CustomNameVisible:1b,Glowing:1b,Tags:["door","edit","edit_kill"],CustomName:"門"}] 1
give @s armor_stand[item_name="生怪點", entity_data={id:"minecraft:armor_stand",NoGravity:1b,CustomNameVisible:1b,Glowing:1b,Tags:["point","edit","edit_kill"],CustomName:"生怪點"}] 1
give @s armor_stand[item_name="電箱", entity_data={id:"minecraft:armor_stand",Small:1b,CustomNameVisible:1b,Glowing:1b,Tags:["box_point","edit"]}] 1
give @s armor_stand[item_name="求生者重生點", entity_data={id:"minecraft:armor_stand",CustomNameVisible:1b,Glowing:1b,Tags:["spawn_survivor","edit","edit_kill"],CustomName:"求生者重生點"}] 1

give @s command_block[item_name="毒氣A點",block_entity_data={id:"command_block",auto:1b,Command:'summon armor_stand ~ ~-0.5 ~ {Small:1b,Glowing:1b,NoGravity:1b,Tags:["poison_a","edit"],CustomNameVisible:1b,CustomName:"毒氣點尚未設定完畢"}'}]
give @s command_block[item_name="毒氣B點",block_entity_data={id:"command_block",auto:1b,Command:'summon armor_stand ~ ~-0.5 ~ {NoGravity:1b,Tags:["poison_b"]}'}]

give @s player_head[item_name="刪除盔甲座",lore=[[{"text":"對著盔甲座點擊","color":"gray","italic":false}, {keybind: "key.use"}, "使用"]],profile={properties:{textures:["eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzcyMzcwNGE5ZDU5MTBiOWNkNTA1ZGM5OWM3NzliZjUwMzc5Y2I4NDc0NWNjNzE5ZTlmNzg0ZGQ4YyJ9fX0="]}},custom_data={delete:true}] 1