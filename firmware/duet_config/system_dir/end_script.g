G92 E0			            ;reset extruder distance
G91 G1 E-18 F3600	   	    ;retract 18mm at 3600mm/min
G91 			            ;incremental positioning
G1 Z1 F600		            ;lift Z 1mm
G90			                ;absolute positioning
G53 G1 Z0 F6000             ;parking Z
G53 G1 A0 F6000	            ;parking A
G53 G1 X0 Y0 F6000	        ;parking XY
M98 P"0:/sys/homec.g"       ;parking/ resetting C
M568 P1 A0                  ;trun off hotend
M140 S0 		            ;turn off bed
M107			            ;fan off
G92 E0			            ;reset extruder distance