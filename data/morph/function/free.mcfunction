#免費
execute at @e[type=marker,tag=morph_machine] run setblock ~ ~-1 ~-2 air destroy
tellraw @a[team=monitor] ["◎ 人體變型現在已", {text: "免費開放", color: "gold"}]
bossbar set jk2:time color red