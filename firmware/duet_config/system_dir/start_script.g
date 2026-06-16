;starting script called by slicer: M98 P0:/sys/start_script.g

T1			    ;select extruder
G90			    ;absolute positioning
M83             ; use relative distances for extrusion
M703			;call filament config
M568 A2         ;turn on heater
M291 P"Please wait while the nozzle is being heated up" R"Heating up" T0
M116 H1	S2		;wait until extruder temperature is reached
M116 H0 S2		;wait until bed temperature is reached +/-2°C
M292            ;acknowledge message when complete 
G92 E0          ;reset extruder distance

;G28			    ;homing XYZAC
;G29 S1 P"heightmap.csv" ;load height map file usual.csv and enable compensation
;M376 H8			;mesh taper height
G1 X0 Y0 F6000