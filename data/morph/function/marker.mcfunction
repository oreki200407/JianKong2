#讓所有火焰標記產生火焰
execute if entity @s[tag=blaze_fire] run return run function morph:blaze/fire

#計算蜘蛛網維持時間
execute if entity @s[tag=spider_cobweb] run return run function morph:spider/cobweb