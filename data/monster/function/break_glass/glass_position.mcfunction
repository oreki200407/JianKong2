execute as @e[type=marker, tag=glass_marker, distance=...0001] run return run function monster:break_glass/glass_marker

#沒有return代表沒有marker
summon marker ~ ~ ~ {Tags: ["glass_marker"]}