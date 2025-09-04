summon item_display ~ ~ ~ {Tags:["tutorial_player","tutorial_marker"],item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["oreki20"]}}},Rotation:[180f,0f]}
summon interaction ~ ~-0.5 ~ {width:0.8f,height:2f,Tags:["tutorial_player_interaction","tutorial_marker"]}
kill @e[type=text_display,tag=tutorial_tomb_text]
kill