#遊戲準備中的tick

#使用監視器介面
execute as @a[scores={camera_interface=1..}] run function monitor:install/camera_interface/root

#商店
execute as @a[team=survivor] at @s run function shop:root