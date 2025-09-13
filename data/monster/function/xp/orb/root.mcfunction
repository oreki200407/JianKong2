#https://forum.gamer.com.tw/Co.php?bsn=18673&sn=998522
execute store result score @s xp run data get entity @s Item.count

execute if score @s xp matches 16.. run function monster:xp/orb/16

execute if score @s xp matches 8.. run function monster:xp/orb/8

execute if score @s xp matches 4.. run function monster:xp/orb/4

execute if score @s xp matches 2.. run function monster:xp/orb/2

execute if score @s xp matches 1 run summon experience_orb ~ ~ ~ {Value: 1, Tags: ["xp"]}
kill