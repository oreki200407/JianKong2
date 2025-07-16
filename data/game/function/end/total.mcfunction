scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar end
tp @a @e[type=marker, tag=lobby_spawn, limit=1]
gamemode adventure @a
scoreboard players set #mode system 2
execute at @e[type=marker, tag=lobby_spawn, limit=1] run spawnpoint @s ~ ~ ~

effect clear @a
effect give @s resistance infinite 4 true
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s weakness infinite 99 true

execute if score §c紅隊 end > §9藍隊 end run return run title @a title {"text":"紅隊獲勝","bold":true,"color":"red"}
execute if score §c紅隊 end < §9藍隊 end run return run title @a title {"text":"藍隊獲勝","bold":true,"color":"blue"}
title @a title {"text":"平手","bold":true,"color":"gold"}

give @a written_book[written_book_content={pages:[["",{"text":"【總分數】",click_event:{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar end"}},{"text":"\n"},{"text":"【個人貢獻分數】",click_event:{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar score"}},{"text":"\n"},{"text":"【倒地次數】",click_event:{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar st_fall"}},{"text":"\n"},{"text":"【死亡次數】",click_event:{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar st_death"}},{"text":"\n"},{"text":"【救援次數】",click_event:{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar st_save"}},{"text":"\n"},{"text":"【擊殺數】",click_event:{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar st_kill"}},{"text":"\n"},{"text":"【受傷量】",click_event:{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar st_damage"}},{"text":"\n"},{"text":"【受傷分數】",click_event:{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar damage_score"}},{"text":"\n"}]],title:"查看數據",author:"監控局局長"}]