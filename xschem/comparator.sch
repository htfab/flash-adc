v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -130 110 -130 {
lab=P}
N 90 -90 110 -90 {
lab=N}
N 90 -180 270 -180 {
lab=VDD}
N 90 -40 270 -40 {
lab=VSS}
N 350 -110 370 -110 {
lab=OUT}
N 150 -180 150 -160 {}
N 270 -180 270 -160 {}
N 150 -60 150 -40 {}
N 270 -60 270 -40 {}
C {opamp.sym} 180 -110 0 0 {name=x1}
C {buffer.sym} 300 -110 0 0 {name=x2}
C {devices/iopin.sym} 90 -180 0 1 {name=p1 lab=VDD
}
C {devices/iopin.sym} 90 -40 0 1 {name=p2 lab=VSS
}
C {devices/ipin.sym} 90 -130 0 0 {name=p3 lab=P
}
C {devices/ipin.sym} 90 -90 0 0 {name=p4 lab=N
}
C {devices/opin.sym} 370 -110 0 0 {name=p5 lab=OUT
}
