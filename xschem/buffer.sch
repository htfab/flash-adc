v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -70 190 -40 {
lab=VSS}
N 190 -40 360 -40 {
lab=VSS}
N 360 -70 360 -40 {
lab=VSS}
N 190 -300 190 -270 {
lab=VDD}
N 190 -300 360 -300 {
lab=VDD}
N 360 -300 360 -270 {
lab=VDD}
N 130 -240 150 -240 {
lab=IN}
N 130 -100 150 -100 {
lab=IN}
N 300 -240 320 -240 {
lab=#net1}
N 300 -100 320 -100 {
lab=#net1}
N 130 -240 130 -100 {
lab=IN}
N 300 -240 300 -100 {
lab=#net1}
N 190 -210 190 -130 {
lab=#net1}
N 360 -210 360 -130 {
lab=OUT}
N 190 -170 300 -170 {
lab=#net1}
N 360 -170 400 -170 {
lab=OUT}
N 90 -170 130 -170 {
lab=IN}
N 90 -300 190 -300 {
lab=VDD}
N 90 -40 190 -40 {
lab=VSS}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 170 -100 0 0 {name=M1
L=0.5
W=0.5
body=VSS
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 170 -240 0 0 {name=M2
L=0.5
W=1
body=VDD
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 340 -100 0 0 {name=M3
L=0.5
W=0.5
body=VSS
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 340 -240 0 0 {name=M4
L=0.5
W=1
body=VDD
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 90 -300 0 1 {name=p1 lab=VDD
}
C {devices/iopin.sym} 90 -40 0 1 {name=p2 lab=VSS
}
C {devices/ipin.sym} 90 -170 0 0 {name=p3 lab=IN
}
C {devices/opin.sym} 400 -170 0 0 {name=p5 lab=OUT
}
