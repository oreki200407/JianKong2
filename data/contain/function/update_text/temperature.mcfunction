###################################################
# 更新怪物的體溫顯示
# 
# Name   : temperature.mcfunction
# Path   : contain:update_text/
# As     : 給原料的怪物(@e[tag=contain]) 或 怪物對應的marker
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

data modify entity @e[type=text_display, tag=contain_value_temperature,limit=1] text set value \
[\
	"體溫\n",\
	{score:{name:"@e[type=villager, tag=contain_villager,limit=1,tag=contain]",objective:"contain_temperature"}}, "\n",\
	{score:{name:"@e[type=skeleton, tag=contain_skeleton,limit=1,tag=contain]",objective:"contain_temperature"}}, "\n",\
	{score:{name:"@e[type=cave_spider, tag=contain_spider,limit=1,tag=contain]",objective:"contain_temperature"}}, "\n",\
	{score:{name:"@e[type=zombie, tag=contain_zombie,limit=1,tag=contain]",objective:"contain_temperature"}}, "\n",\
	{score:{name:"@e[type=creeper, tag=contain_creeper,limit=1,tag=contain]",objective:"contain_temperature"}}\
]