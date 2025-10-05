execute if data entity @s EnderItems[{Slot:10b}].components run return run function box:switch/give_component with entity @s EnderItems[{Slot:10b}]
$give @s $(id) $(count)
item replace entity @s enderchest.10 with air