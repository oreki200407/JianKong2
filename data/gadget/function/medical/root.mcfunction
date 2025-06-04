advancement revoke @s only gadget:medical

execute if score @s medical_cooldown matches 1.. run return fail
scoreboard players set @s medical_cooldown 10

execute if items entity @s weapon.mainhand paper[item_name="繃帶"] run return run function gadget:medical/bandage
execute if items entity @s weapon.mainhand paper[item_name="止痛藥"] run return run function gadget:medical/painkiller
execute if items entity @s weapon.mainhand paper[item_name="夾板"] run return run function gadget:medical/fracture/heal
execute if items entity @s weapon.mainhand paper[item_name="醫療箱"] run return run function gadget:medical/medkit
execute if items entity @s weapon.mainhand paper[item_name="電擊器"] run function gadget:medical/defibrillator