###################################################
# Netwalk地圖生成結束，打亂答案
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/reset/after_generate/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ ■ ■ ■ ■ ■ □ □ #
# □ □ □ □ □ □ □ □ □ #

#隨機旋轉
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 2}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 3}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 4}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 5}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 6}

function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 11}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 12}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 13}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 14}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 15}

function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 20}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 21}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 22}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 23}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 0, index: 24}

function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 2}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 3}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 4}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 5}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 6}

function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 11}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 12}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 13}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 14}
function power:netwalk_game/reset/after_generate/rotate/root {x_offset: 1, index: 15}

#給編號和材質
execute store result storage jk2:data root.monitor.netwalk_game.number int 1 run scoreboard players set #reset netwalk_game 0
function power:netwalk_game/reset/number/root

data remove block ~ ~ ~ lock