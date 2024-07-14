###################################################
# 召喚捕獸夾
# 
# Name   : summon.mcfunction
# Path   : gadget:trap/
# As     : 輸入指令的人
# At     : As
# Loop   : 否
# Author : Alex Cai
###################################################

execute align xyz run summon block_display ~.25 ~ ~.25 {block_state: {Name: "iron_trapdoor"}, transformation: {scale: [0.5f, 0.5f, 0.5f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}, Tags: ["trap"]}