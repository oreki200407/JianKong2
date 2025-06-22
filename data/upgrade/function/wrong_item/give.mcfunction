$execute unless items entity @s enderchest.$(Slot) * run return fail

$execute if data entity @s EnderItems[{Slot:$(Slot)b}].components run return run function upgrade:wrong_item/give_component with entity @s EnderItems[{Slot:$(Slot)b}]

$give @s $(id) $(count)