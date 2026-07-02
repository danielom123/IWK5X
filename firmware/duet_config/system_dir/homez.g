; homez.g
; called to home the Z axis

G91                 ; relative positioning
G1 H1 Z300 F2000    ; move Z up until the endstops are triggered
G1 Z-5 F3000		; move down
G1 H1 Z10 F200		; 2nd pass
G1 Z-2 F3000		; move down
G90					; absolute positioning



