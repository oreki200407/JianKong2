###################################################
# 進入編輯模式
# 
# Name   : enter.mcfunction
# Path   : edit:
# As     : 打指令的玩家
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative","color":"gold"},"來操作"]
scoreboard objectives setdisplay sidebar edit

execute as @a[tag=tutorial] run function tutorial:exit

scoreboard players set #mode system 1
execute as @e[type=armor_stand,tag=edit] run data merge entity @s {Glowing:1b,CustomNameVisible:1b,Invisible:0b}

kill @e[tag=edit_setting]
kill @e[tag=lobby_setting]

summon item_display ~ ~-1.75 ~ \
{\
	Passengers:\
	[\
		{\
			id:"text_display",Tags:["edit_setting"],Rotation:[180.0f,0.0f],\
			transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0.1f],scale:[0.75f,0.75f,0.75f]},\
			text:{"bold":true,"color":"gold","text":"領取編輯工具"}\
		},\
		{\
			id:"interaction",width:0.5f,height:0.5f,response:1b,Tags:["edit_setting","edit_give"]\
		}\
	],\
	transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.49f,0f],scale:[0.95f,0.95f,0.95f]},\
	item:{id:"player_head",count:1,components:{"minecraft:profile":{properties: {textures: ["eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdhMGZjNmRjZjczOWMxMWZlY2U0M2NkZDE4NGRlYTc5MWNmNzU3YmY3YmQ5MTUzNmZkYmM5NmZhNDdhY2ZiIn19fQ=="]}}}},\
	Tags:["edit_setting"]\
}

summon item_display ~-2 ~-1.75 ~ \
{\
	Passengers:\
	[\
		{\
			id:"text_display",Tags:["edit_setting"],Rotation:[180.0f,0.0f],\
			transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0.1f],scale:[0.75f,0.75f,0.75f]},\
			text:{"bold":true,"color":"blue","text":"查看場地"}\
		},\
		{\
			id:"interaction",width:0.5f,height:0.5f,response:1b,Tags:["edit_setting","edit_check"]\
		}\
	],\
	transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.49f,0f],scale:[0.95f,0.95f,0.95f]},\
	item:{id:"player_head",count:1,components:{"minecraft:profile":{properties: {textures: ["eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmMyNzEwNTI3MTllZjY0MDc5ZWU4YzE0OTg5NTEyMzhhNzRkYWM0YzI3Yjk1NjQwZGI2ZmJkZGMyZDZiNWI2ZSJ9fX0="]}}}},\
	Tags:["edit_setting"]\
}

summon item_display ~2 ~-1.75 ~ \
{\
	Passengers:\
	[\
		{\
			id:"text_display",Tags:["edit_setting"],Rotation:[180.0f,0.0f],\
			transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0.1f],scale:[0.75f,0.75f,0.75f]},\
			text:{"bold":true,"color":"green","text":"退出編輯模式"}\
		},\
		{\
			id:"interaction",width:0.5f,height:0.5f,response:1b,Tags:["edit_setting","edit_exit"]\
		}\
	],\
	transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.49f,0f],scale:[0.95f,0.95f,0.95f]},\
	item:{id:"player_head",count:1,components:{"minecraft:profile":{properties: {textures: ["eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzdiNjJkMjc1ZDg3YzA5Y2UxMGFjYmNjZjM0YzRiYTBiNWYxMzVkNjQzZGM1MzdkYTFmMWRmMzU1YTIyNWU4MiJ9fX0="]}}}},\
	Tags:["edit_setting"]\
}