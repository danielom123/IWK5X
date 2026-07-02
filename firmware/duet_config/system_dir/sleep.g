; sleep.g
; called when M1 (Sleep) is being processed
;
M83                     ; relative extruder moves
G1 E-20 F3600           ; retract 10mm of filament
G53 G1 Z0 F6000         ; move gantry to top
G53 G1 X0 Y0 A0 C0      ; move axis away