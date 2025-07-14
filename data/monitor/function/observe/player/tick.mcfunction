###################################################
# 使用監視器時
# 
# Name   : tick.mcfunction
# Path   : monitor:observe/player/
# As     : 使用監視器的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#移動就回去
execute unless predicate game:keyboard/no_input run function monitor:observe/player/back/root

#滅火 頻率不要太高
execute if predicate {condition: "entity_properties", entity: "this", predicate: {flags: {is_on_fire: true}, periodic_tick: 20}} run summon splash_potion ~ ~.49 ~ {Item: {id: "splash_potion", components: {potion_contents: {potion: "water"}}}}
fill ~ ~ ~ ~ ~ ~ air replace #fire
fill ~ ~ ~ ~ ~ ~ air replace barrier