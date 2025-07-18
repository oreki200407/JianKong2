#無條件進位
execute store result score @s xp run xp query @s points
execute if score @s xp matches 1.. run function monster:xp/roundup

#https://forum.gamer.com.tw/Co.php?bsn=18673&sn=998522
execute store result score @s xp run clear @s slime_ball[item_name="經驗球"]
execute if score @s xp matches 0 run return fail

execute if score @s xp matches 64.. run function monster:xp/give_level {lvl: 64}
execute if score @s xp matches 32.. run function monster:xp/give_level {lvl: 32}
execute if score @s xp matches 16.. run function monster:xp/give_level {lvl: 16}
execute if score @s xp matches 8.. run function monster:xp/give_level {lvl: 8}
execute if score @s xp matches 4.. run function monster:xp/give_level {lvl: 4}
execute if score @s xp matches 2.. run function monster:xp/give_level {lvl: 2}
execute if score @s xp matches 1 run function monster:xp/give_level {lvl: 1}