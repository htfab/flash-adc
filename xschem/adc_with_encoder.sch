v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -410 230 -390 {
lab=VDD}
N 230 -50 230 -30 {
lab=VSS}
N 80 -410 230 -410 {
lab=VDD}
N 80 -30 230 -30 {
lab=VSS}
N 530 -410 530 -390 {}
N 230 -410 530 -410 {}
N 230 -30 530 -30 {}
N 530 -50 530 -30 {}
C {flash_adc.sym} 230 -220 0 0 {name=x1}
C {encoder_tree.sym} 530 -220 0 0 {name=x2}
C {devices/iopin.sym} 80 -410 2 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} 80 -30 2 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} 80 -220 0 0 {name=p3 lab=IN
}
C {devices/opin.sym} 680 -190 0 0 {name=p77 lab=OUT0
}
C {devices/opin.sym} 680 -210 0 0 {name=p61 lab=OUT1
}
C {devices/opin.sym} 680 -230 0 0 {name=p62 lab=OUT2
}
C {devices/opin.sym} 680 -250 0 0 {name=p63 lab=OUT3
}
