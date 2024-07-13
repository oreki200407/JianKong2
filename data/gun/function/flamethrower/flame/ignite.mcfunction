execute if entity @s[type=player, team=!monitor] run return fail
#TODO: 或能用自訂附魔的post_attack
#玩家
execute at @s[type=player] run return run summon small_fireball ~ ~2.1 ~ {Motion: [0.0, -10.0, 0.0]}
#不是玩家
return run data modify entity @s Fire set value 100