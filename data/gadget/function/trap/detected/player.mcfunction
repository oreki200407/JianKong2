#如果是玩家被抓到
attribute @s generic.jump_strength modifier add jk2:trap -0.95 add_multiplied_base
scoreboard players set @s jump 0
tellraw @s "你踩到了捕獸夾！"