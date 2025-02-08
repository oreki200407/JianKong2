#交換隊伍
title @a title {"text":"交換隊伍","bold":true,"color":"blue"}
schedule function game:prepare 2s
schedule clear summon:natural

#裝備
item replace entity @a[team=survivor] armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},enchantment_glint_override=true,enchantments={"game:sonic_boom_protection": 1}]
item replace entity @a[team=survivor] armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},enchantment_glint_override=true,enchantments={"game:sonic_boom_protection": 1}]
item replace entity @a[team=survivor] armor.feet with leather_boots[unbreakable={show_in_tooltip:false},enchantment_glint_override=true,enchantments={"game:sonic_boom_protection": 1}]

#重置怪物
scoreboard players reset #summon_pick_release summon_monster
execute as @e[type=armor_stand,tag=summon_picked] run function summon:pick/reset
#設定初始怪物
execute as @e[type=armor_stand,tag=summon_pick,scores={summon_number=1..7}] run function summon:pick/setting