; genearal unload macro for all filaments

T1										; select T1
G53 G1 Z0 F6000                         ; move to top
G53 G1 X-150 Y-315                      ; move to front centre
G53 G1 Z-150                            ; move down
M703									; call filament config for temperatures
M568 A2									; set heater to active

M291 P"Please wait while the nozzle is being heated up" R"Unloading Filament" T0

M116 									; Wait for the temperatures to be reached
M292 									; Hide the message when completed

M291 P"Reract filament?" R"Temperature reached" S3 T0

;M292 P0								; Hide the message when completed
G1 E15 F400								; Prime 15mm of filament at 400mm/min
G4 P4000 								; Wait 4 seconds
G1 E-30 F600							; Retract 30mm of filament at 600mm/min			
G1 E-200 F3600 							; Retract 200mm of filament at 3600mm/min
M400 									; Wait for the moves to finish

M291 P"Filament can now be removed" R"Unloading complete" S3 T0
