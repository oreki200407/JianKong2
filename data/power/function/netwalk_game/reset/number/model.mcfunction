###################################################
# 給予custom_model_data
# 
# Name   : model.mcfunction
# Path   : power:netwalk_game/reset/number/
# As     : 發電機標記，tag=netwalk_game
# At     : As，或是As的~1 ~ ~
# Loop   : 是
# Author : oreki20
###################################################

$item modify block ~ ~ ~ container.$(number) {"function": "minecraft:set_custom_model_data","strings": {"values": ["$(type)$(orientation)"],"mode": "append"}}