v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -150 100 -150 {
lab=IN}
N 220 -130 240 -130 {
lab=OUT}
N 100 -110 100 -60 {
lab=OUT}
N 100 -60 220 -60 {
lab=OUT}
N 220 -130 220 -60 {
lab=OUT}
C {opamp.sym} 170 -130 0 0 {name=x1}
C {devices/iopin.sym} 140 -180 0 0 {name=p3 lab=VDD
}
C {devices/iopin.sym} 140 -80 0 0 {name=p6 lab=VSS
}
C {devices/ipin.sym} 80 -150 0 0 {name=p7 lab=IN
}
C {devices/opin.sym} 240 -130 0 0 {name=p8 lab=OUT
}
