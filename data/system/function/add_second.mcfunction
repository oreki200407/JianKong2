schedule function system:add_second 1s

scoreboard players add 經過時間 gameinfo 1
execute if score 倒數 system matches 1.. run scoreboard players remove 倒數 system 1
execute if score 階段 system matches 1 run bossbar set countdown name [{"selector":"@e[limit=1,type=marker,tag=discuss]","color": "gold","bold": true},{"translate": "還剩 "},{"score":{"name": "倒數","objective": "system","bold": true,"color": "purple"}},{"translate": " 秒"}]
execute if score 階段 system matches 2 run bossbar set countdown name [{"selector":"@e[limit=1,type=marker,tag=answer]","color": "gold","bold": true},{"translate": "還剩 "},{"score":{"name": "倒數","objective": "system","bold": true,"color": "purple"}},{"translate": " 秒"}]
execute if score 階段 system matches 1 if score 倒數 system = 討論時間一半 system run tellraw @a ["",{"text":">> ","color":"gold"},{"translate":"討論時間剩下一半，"},{"text":"更換花色-單人/全體","color":"gold"},{"translate":"已無法使用，"},{"text":"強制作答","color":"gold"},{"translate":"已可使用"}]
execute if score 階段 system matches 1 if score 倒數 system = 討論時間一半 system run scoreboard players set 允許強制作答 system 1
execute if score 階段 system matches 1 if score 倒數 system matches 0 run function gameplay:round_answer
execute if score 階段 system matches 2 if score 倒數 system matches 0 run function gameplay:round_end
execute store result bossbar countdown value run scoreboard players get 倒數 system
execute store result score 存活人數 gameinfo if entity @a[team = !spec]
scoreboard players operation 存活人數一半 system = 存活人數 gameinfo
scoreboard players operation 存活人數一半 system /= 一半 system