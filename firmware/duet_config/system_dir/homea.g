; homea.g
; called to home the A axis
;
G91             	 ; relative positioning
G1 H1 A-95 F1500 	 ; move quickly to A axis endstop and stop there (first pass)
G1 A10 F1000    	 ; go back a few deg
G1 H1 A-15 F200 	 ; move slowly to A axis endstop once more (second pass)
G90             	 ; absolute positioning
G1 A0 F2000			 ; move to horizontal position

G92 A-1.6			 ; set OFFSET position °

G1 A0 F1000			 ; move to horizontal position


