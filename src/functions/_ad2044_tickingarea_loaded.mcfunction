# INTERNAL CALLBACK - do not run manually. Count readiness, never place structures.
execute if score ad_active ad2044_install matches 1 if score ad_stage ad2044_install matches 1 if score ad_ready ad2044_install matches 0..1 run scoreboard players add ad_ready ad2044_install 1
execute if score ad_stage ad2044_install matches 1 if score ad_ready ad2044_install matches 2 run schedule delay add _ad2044_remove_tickingarea 600 replace
