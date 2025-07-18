#https://forum.gamer.com.tw/Co.php?bsn=18673&sn=998522
execute store result score @s xp run data get entity @s Item.count

execute if score @s xp matches 16.. run summon experience_orb ~ ~ ~ {Value: 1, Tags: ["xp"], Passengers: [{id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}]}
scoreboard players remove @s[scores={xp=16..}] xp 16

execute if score @s xp matches 8.. run summon experience_orb ~ ~ ~ {Value: 1, Tags: ["xp"], Passengers: [{id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}]}
scoreboard players remove @s[scores={xp=8..}] xp 8

execute if score @s xp matches 4.. run summon experience_orb ~ ~ ~ {Value: 1, Tags: ["xp"], Passengers: [{id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}, {id: "experience_orb", Value: 1, Tags: ["xp"]}]}
scoreboard players remove @s[scores={xp=4..}] xp 4

execute if score @s xp matches 2.. run summon experience_orb ~ ~ ~ {Value: 1, Tags: ["xp"], Passengers: [{id: "experience_orb", Value: 1, Tags: ["xp"]}]}
scoreboard players remove @s[scores={xp=2..}] xp 2

execute if score @s xp matches 1 run summon experience_orb ~ ~ ~ {Value: 1, Tags: ["xp"]}
kill