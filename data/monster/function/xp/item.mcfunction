execute store result score @s xp run clear @s slime_ball[item_name="經驗球"] 1
execute if score @s xp matches 1.. run xp add @s 1 levels

execute store result score @s xp run xp query @s points
execute if score @s xp matches 0 run return fail
xp add @s 1 levels
xp set @s 0 points