scoreboard objectives remove lobby
scoreboard objectives remove info_monitor
scoreboard objectives remove info_survivor
scoreboard objectives remove edit
scoreboard objectives remove system
scoreboard objectives remove constant
scoreboard objectives remove leave

#生命資訊
scoreboard objectives remove health
scoreboard objectives remove food
scoreboard objectives remove stamina

#分數
scoreboard objectives remove score
scoreboard objectives remove death_score
scoreboard objectives remove damage_score
scoreboard objectives remove kill_score
scoreboard objectives remove end

#統計
scoreboard objectives remove st_fall
scoreboard objectives remove st_death
scoreboard objectives remove st_damage
scoreboard objectives remove st_kill
scoreboard objectives remove st_save

#經驗值
scoreboard objectives remove xp
scoreboard objectives remove xp_kill

#戰鬥
scoreboard objectives remove kill
scoreboard objectives remove death
scoreboard objectives remove damage

#遠程武器
scoreboard objectives remove extinguisher
scoreboard objectives remove flamethrower
scoreboard objectives remove flamethrower_attacker_uuid0
scoreboard objectives remove reload_time
scoreboard objectives remove reload
scoreboard objectives remove gun_cooldown

#電箱
scoreboard objectives remove box_operation

#升級台
scoreboard objectives remove upgrade_operate

#召唤
scoreboard objectives remove summon_number
scoreboard objectives remove summon_count
scoreboard objectives remove summon_monster
scoreboard objectives remove summon_operate
scoreboard objectives remove summon_power
scoreboard objectives remove summon_cooldown
scoreboard objectives remove summon_shuffle

#死亡
scoreboard objectives remove revive_time
scoreboard objectives remove death_time
scoreboard objectives remove uuid0
scoreboard objectives remove uuid0_match

#捕獸夾
scoreboard objectives remove bear_trap
scoreboard objectives remove jump_break
scoreboard objectives remove bear_trap_release

#錘子
scoreboard objectives remove hammer
scoreboard objectives remove hammer_hold

#開鎖器
scoreboard objectives remove unlock_progess
scoreboard objectives remove unlock_slot
scoreboard objectives remove selected_slot

#骨折與治療
scoreboard objectives remove fracture
scoreboard objectives remove medical_cooldown

#監視器
scoreboard objectives remove camera
scoreboard objectives remove camera_cooldown
scoreboard objectives remove camera_interface
scoreboard objectives remove camera_level
scoreboard objectives remove level
scoreboard objectives remove cost_time
scoreboard objectives remove heat
scoreboard objectives remove trap
scoreboard objectives remove trap_cooldown
scoreboard objectives remove photo
scoreboard objectives remove photo_cooldown

#毒氣
scoreboard objectives remove poison_point

#收容櫃
scoreboard objectives remove contain_temperature
scoreboard objectives remove contain_health
scoreboard objectives remove contain_food
scoreboard objectives remove contain_second

#發電機
scoreboard objectives remove power
scoreboard objectives remove power_level
scoreboard objectives remove light_game
scoreboard objectives remove puzzle_game
scoreboard objectives remove netwalk_game

#商店
scoreboard objectives remove shop
scoreboard objectives remove shop_operate
scoreboard objectives remove open_ender_chest
scoreboard objectives remove money

#修理
scoreboard objectives remove jump_fix
scoreboard objectives remove fix_progress
scoreboard objectives remove fix_slot
scoreboard objectives remove fix_time

#玻璃裂開
scoreboard objectives remove glass_break

#怪物
scoreboard objectives remove monster_delay
scoreboard objectives remove monster_slime
scoreboard objectives remove monster_golem

#人體變形
scoreboard objectives remove morph
scoreboard objectives remove morph_skill_1
scoreboard objectives remove morph_skill_2
scoreboard objectives remove morph_skill_2_duration
scoreboard objectives remove use_ender_pearl

scoreboard objectives remove boss_health
scoreboard objectives remove boss_time
scoreboard objectives remove boss_status

#隊伍
team remove survivor
team remove monitor
team remove spec

bossbar remove jk2:boss
bossbar remove jk2:time
bossbar remove jk2:prepare

data remove storage jk2:data root

tellraw @a ["◎ ", {"text": "資料包", "color": "gold"}, "已解除安裝"]