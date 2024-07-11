function system:install

effect give @s blindness 3 99 true
effect give @s slowness 3 99 true

#-------建造大廳-------
function system:build_lobby

#-------召喚中心點-------
forceload add ~ ~
setworldspawn ~ ~ ~
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby"]}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["discuss"],CustomName:'{"translate":"討論階段","color":"gold","bold": true}'}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["answer"],CustomName:'{"translate":"作答階段","color":"gold","bold": true}'}

#-------完成-------
scoreboard players set 一半 system 2
scoreboard players set 一百 system 100
scoreboard players set @e[type=marker, tag=lobby] mode 1

scoreboard objectives setdisplay sidebar editinfo

tag @a add join