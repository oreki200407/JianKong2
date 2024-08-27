bossbar set jk2:boss name {"selector":"@s"}
execute store result bossbar jk2:boss max run data get entity @s Health
bossbar set jk2:boss players @a[team=survivor]