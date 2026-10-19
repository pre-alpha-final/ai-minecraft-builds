# INTERNAL CALLBACK - do not run manually. Count readiness; never place structures.
execute if score ppb_active ppb_install matches 1 if score ppb_stage ppb_install matches 1 if score ppb_ready ppb_install matches 0..3 run scoreboard players add ppb_ready ppb_install 1
execute if score ppb_active ppb_install matches 1 if score ppb_stage ppb_install matches 1 if score ppb_ready ppb_install matches 4 run schedule delay add _pink_plush_bird_remove_tickingarea 600 replace
