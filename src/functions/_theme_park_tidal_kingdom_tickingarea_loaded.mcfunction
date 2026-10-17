# INTERNAL CALLBACK - do not run manually. Readiness barrier for the current stage.
execute if score tki_active tk19_install matches 1 if score tki_stage tk19_install matches 1..2 if score tki_ready tk19_install matches 0..7 run scoreboard players add tki_ready tk19_install 1
execute if score tki_ready tk19_install matches 8 run schedule delay add _theme_park_tidal_kingdom_remove_tickingarea 600 replace
