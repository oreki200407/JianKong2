execute align xz run summon text_display ~ ~ ~ {text: ["60"], billboard: "vertical", Tags: ["one_box","new_one_box"],transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 2.2f, 0f], scale: [1f, 1f, 1f]}}
scoreboard players set @e[type=text_display, tag=new_one_box] system 60
tag @e[type=text_display, tag=new_one_box] remove new_one_box

#電箱
setblock ~ ~ ~ dispenser[facing=down]{CustomName:"電箱"}
setblock ~ ~1 ~ ender_chest

#填充內容物
function box:use/reset

clear @s tripwire_hook[item_name="一分鐘電箱"] 1