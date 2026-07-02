; genearal load macro for all filaments

T1											;select T1
G53 G1 Z0 F6000                             ; move to top
G53 G1 X-150 Y-315                          ; move to front centre
G53 G1 Z-150                                ; move down

M291 P"Please wait while the nozzle is being heated up" R"Heating up" T0

M83											; Set extruder to relative extrusion
M116 										; Wait for the temperatures to be reached
M292 										; Hide the message when completed

M291 P"Insert filament and continue" R"Temperature reached" S3 T0

;M292 P0 									; Hide the message when completed
G1 E10 F3600 								; Feed 10mm of filament at 3600mm/min
G1 E150 F400 								; Feed 150mm of filament at 400mm/min
G4 P1000 									; Wait one second
G1 E-10 F1800 								; Retract 10mm of filament at 1800mm/min
G53 G1 Z0 F6000                             ; move up
G53 G1 X0 Y0                                ; park extruder

M291 P"Filament can now be used" R"Loading complete" S3 T0
