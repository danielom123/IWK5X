; homec.g
; called to home the C axis
;
G91             	 ; relative positioning
G1 H4 C360 F6000 	 ; move quickly to C axis endstop and stop there (first pass)
G92 C0				 ; set C-Position to (value)
G1 C-10 F6000    	 ; go back a few deg
G1 H4 C20 F200 		 ; move slowly to C axis endstop once more (second pass)
G92 C0				 ; set C-Position to (value)
G90             	 ; absolute positioning

G92 C-5.91			 ; set OFFSET position deg

G1 C0 F6000			 ; go to C0