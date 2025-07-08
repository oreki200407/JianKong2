###################################################
# 召喚捕獸夾
# 
# Name   : summon.mcfunction
# Path   : gadget:bear_trap/
# As     : 輸入指令的人
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

summon item_display ~ ~.375 ~ {item: {id: "tripwire_hook", components: {"custom_model_data": {strings: ["bear_trap"]}}}, transformation: {scale: [0.75f, 0.75f, 0.75f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}, Tags: ["bear_trap"]}
playsound block.chain.hit ambient @a
kill