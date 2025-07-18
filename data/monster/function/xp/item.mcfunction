#無條件進位
execute if score @s xp matches 1.. run function monster:xp/roundup

#https://forum.gamer.com.tw/Co.php?bsn=18673&sn=998522
execute store result score @s xp_orb run clear @s slime_ball[item_name="經驗球"]
execute if score @s xp_orb matches 0 run return fail

execute if score @s xp_orb matches 4096.. run function monster:xp/give_level {lvl: 4096}
execute if score @s xp_orb matches 2048.. run function monster:xp/give_level {lvl: 2048}
execute if score @s xp_orb matches 1024.. run function monster:xp/give_level {lvl: 1024}
execute if score @s xp_orb matches 512.. run function monster:xp/give_level {lvl: 512}
execute if score @s xp_orb matches 256.. run function monster:xp/give_level {lvl: 256}
execute if score @s xp_orb matches 128.. run function monster:xp/give_level {lvl: 128}
execute if score @s xp_orb matches 64.. run function monster:xp/give_level {lvl: 64}
execute if score @s xp_orb matches 32.. run function monster:xp/give_level {lvl: 32}
execute if score @s xp_orb matches 16.. run function monster:xp/give_level {lvl: 16}
execute if score @s xp_orb matches 8.. run function monster:xp/give_level {lvl: 8}
execute if score @s xp_orb matches 4.. run function monster:xp/give_level {lvl: 4}
execute if score @s xp_orb matches 2.. run function monster:xp/give_level {lvl: 2}
execute if score @s xp_orb matches 1 run function monster:xp/give_level {lvl: 1}