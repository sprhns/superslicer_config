M118 S"Set bed temp for first layer"
M140 S[first_layer_bed_temperature] ; Set bed temp

M118 S"Wait for bed temp for first layer"
M190 S[first_layer_bed_temperature] ; Wait for Heat Bed temperature

M118 S"Set extruder temp for first layer"
M104 S[first_layer_temperature]     ; set extruder temp

M118 S"Wait for extruder temp for first layer"
M109 S[first_layer_temperature]     ; Wait for extruder temperature

; Nozzle prime / cleaning

G0 X3 Y105 F9000 ; Go to back left 3 mm off each side
G0 Z0.15 ; Drop to bed
G92 E0 ; zero the extruded length
G1 Y45 E25 F500 ; Extrude 25mm of filament in a 6 cm line
G92 E0 ; zero the extruded length
G1 E-1 F500 ; Retract a little
G1 Y10 F4000 ; Quickly wipe away from the filament line
G1 Z1 ; Raise and begin printing.
