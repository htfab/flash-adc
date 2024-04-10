v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -170 170 -170 {
lab=#net1}
N 90 -220 90 -170 {
lab=#net1}
N 90 -170 90 -120 {
lab=#net1}
N 150 -210 170 -210 {
lab=IN}
N 330 -190 350 -190 {
lab=OUT}
N 90 -320 90 -280 {
lab=HI}
N 90 -60 90 -20 {
lab=REF1}
N 220 -280 220 -240 {
lab=VDD}
N 220 -140 220 -100 {
lab=VSS}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 90 -90 0 0 {name=R1
W=0.35
L=2.34
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1
}
C {comparator.sym} 240 -190 0 0 {name=x5}
C {devices/opin.sym} 350 -190 0 0 {name=p77 lab=OUT
}
C {devices/lab_pin.sym} 70 -90 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 90 -250 0 0 {name=R2
W=0.35
L=2.34
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1
}
C {devices/lab_pin.sym} 70 -250 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/iopin.sym} 220 -280 0 0 {name=p3 lab=VDD
}
C {devices/iopin.sym} 220 -100 0 0 {name=p4 lab=VSS
}
C {devices/ipin.sym} 150 -210 0 0 {name=p5 lab=IN
}
C {devices/iopin.sym} 90 -20 0 1 {name=p6 lab=REF1
}
C {devices/iopin.sym} 90 -320 0 1 {name=p7 lab=REF2
}
