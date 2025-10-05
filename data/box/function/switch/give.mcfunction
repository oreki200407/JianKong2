item replace entity @s enderchest.10 with air
$execute if data entity @s EnderItems[{Slot:$(Slot)b}].components run return run function box:switch/give_component with entity @s EnderItems[{Slot:$(Slot)b}]
$give @s $(id) $(count)