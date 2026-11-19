# INTERNAL CALLBACK - do not run manually. Count plot readiness.
execute if score gr_phase gr_install matches 2 if score gr_ready gr_install matches 0..2 run scoreboard players add gr_ready gr_install 1
execute if score gr_phase gr_install matches 2 if score gr_ready gr_install matches 3 run schedule delay add _theme_park_glacier_run_alpine_park_remove_tickingarea 2 replace
