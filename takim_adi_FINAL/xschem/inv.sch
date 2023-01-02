v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 -190 200 -140 {
lab=Y}
N 140 -110 170 -110 {
lab=A}
N 140 -220 140 -110 {
lab=A}
N 140 -230 170 -230 {
lab=A}
N 200 -110 200 -80 {
lab=VSS}
N 200 -80 200 -60 {
lab=VSS}
N 200 -280 200 -260 {
lab=VDD}
N 200 -260 200 -230 {
lab=VDD}
N 200 -170 220 -170 {
lab=Y}
N 120 -170 140 -170 {
lab=A}
N 140 -230 140 -220 {
lab=A}
N 200 -200 200 -190 {
lab=Y}
C {sky130_fd_pr/nfet_01v8.sym} 180 -110 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 180 -230 0 0 {name=M2
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 120 -170 0 0 {name=l1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 220 -170 2 0 {name=l2 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} 200 -280 1 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -60 3 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 10 -140 0 0 {name=p1 lab=A}
C {devices/iopin.sym} 10 -110 0 0 {name=p2 lab=Y}
C {devices/iopin.sym} 10 -80 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 10 -50 0 0 {name=p4 lab=VSS}
