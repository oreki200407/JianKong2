execute if entity @e[type = marker,scores={mode=3}] run function gameplay:force_end
function system:reset
function system:install

tellraw @a [{"text": ">> ","color":"gold"},{"translate":"資料包更新成功","color":"green"}]