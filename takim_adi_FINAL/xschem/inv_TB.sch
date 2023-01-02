v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -100 -120 -100 -100 {
lab=A}
N -100 -130 -100 -120 {
lab=A}
N -180 -130 -180 -100 {
lab=VDD}
N 90 -130 120 -130 {
lab=A}
N 250 -230 250 -210 {
lab=VDD}
N 370 -130 390 -130 {
lab=Y}
C {inv.sym} 250 -130 0 0 {name=x1}
C {devices/vsource.sym} -180 -70 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 250 -50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -180 -40 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -100 -70 0 0 {name=V2 value="pulse 0 1.8 2n 1n 1n 10n 20n"}
C {devices/gnd.sym} -100 -40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -180 -130 1 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 250 -230 1 0 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 90 -130 0 0 {name=l6 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -100 -130 1 0 {name=l7 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 390 -130 2 0 {name=l8 sig_type=std_logic lab=Y}
C {devices/code.sym} -170 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm

"
spice_ignore=false}
C {devices/code_shown.sym} 40 50 0 0 {name=NGSPICE 
only_toplevel=false
value="

.include ../netgen/inv_pex.spice

.control

save all

tran 0.1n 200n
save inv_TB.raw

.endc
"}
