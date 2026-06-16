; pause.g
; called when a print from SD card is paused
;
M83            ; relative extruder moves
G1 E-20 F3600  ; retract 10mm of filament
G53 G1 Z0 F6000; move gantry to top