v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 900 -1400 920 -1400 {
lab=#net1}
N 600 -1400 620 -1400 {
lab=#net2}
N 1200 -1400 1220 -1400 {
lab=#net3}
N 1500 -1400 1520 -1400 {
lab=#net4}
N 440 -1400 460 -1400 {
lab=IN}
N 440 -1480 440 -1400 {
lab=IN}
N 740 -1480 740 -1400 {
lab=IN}
N 740 -1400 760 -1400 {
lab=IN}
N 1040 -1480 1040 -1400 {
lab=IN}
N 1040 -1400 1060 -1400 {
lab=IN}
N 1340 -1480 1340 -1400 {
lab=IN}
N 1340 -1400 1360 -1400 {
lab=IN}
N 400 -1480 440 -1480 {
lab=IN}
N 580 -1320 580 -1280 {
lab=#net5}
N 880 -1320 880 -1280 {
lab=#net5}
N 1180 -1320 1180 -1280 {
lab=#net6}
N 620 -1400 620 -1260 {
lab=#net2}
N 620 -1260 620 -1100 {
lab=#net2}
N 620 -1100 620 -940 {
lab=#net2}
N 620 -940 620 -780 {
lab=#net2}
N 920 -1400 920 -1260 {
lab=#net1}
N 920 -1260 920 -1100 {
lab=#net1}
N 920 -1100 920 -940 {
lab=#net1}
N 920 -940 920 -780 {
lab=#net1}
N 1220 -1400 1220 -1260 {
lab=#net3}
N 1220 -1260 1220 -1100 {
lab=#net3}
N 1220 -1100 1220 -940 {
lab=#net3}
N 1220 -940 1220 -780 {
lab=#net3}
N 1520 -1260 1520 -1100 {
lab=#net4}
N 1520 -1100 1520 -940 {
lab=#net4}
N 880 -680 880 -660 {
lab=#net7}
N 1180 -680 1180 -660 {
lab=#net7}
N 580 -680 580 -660 {
lab=VSS}
N 400 -660 580 -660 {
lab=VSS}
N 440 -1480 740 -1480 {
lab=IN}
N 740 -1480 1040 -1480 {
lab=IN}
N 1040 -1480 1340 -1480 {
lab=IN}
N 580 -1160 580 -1120 {
lab=#net8}
N 580 -1000 580 -960 {
lab=#net9}
N 580 -840 580 -800 {
lab=#net10}
N 880 -1160 880 -1120 {
lab=#net11}
N 880 -1000 880 -960 {
lab=#net12}
N 880 -840 880 -800 {
lab=#net13}
N 1180 -1160 1180 -1120 {
lab=#net14}
N 1180 -1000 1180 -960 {
lab=#net15}
N 1180 -840 1180 -800 {
lab=#net16}
N 1480 -1160 1480 -1120 {
lab=#net17}
N 1480 -1000 1480 -960 {
lab=#net18}
N 580 -1320 880 -1320 {
lab=#net5}
N 880 -660 1180 -660 {
lab=#net7}
N 1180 -1320 1480 -1320 {
lab=#net6}
N 400 -1520 1780 -1520 {
lab=VDD}
N 1480 -1320 1480 -1280 {
lab=#net6}
N 1480 -840 1480 -820 {
lab=VDD}
N 1480 -820 1780 -820 {
lab=VDD}
N 1780 -1520 1780 -820 {
lab=VDD}
N 1520 -1400 1520 -1260 {
lab=#net4}
C {devices/iopin.sym} 400 -1520 2 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} 400 -660 2 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} 400 -1480 0 0 {name=p3 lab=IN
}
C {vfollower.sym} 530 -1400 0 0 {name=x1}
C {vfollower.sym} 830 -1400 0 0 {name=x2}
C {vfollower.sym} 1130 -1400 0 0 {name=x3}
C {vfollower.sym} 1430 -1400 0 0 {name=x4}
C {devices/lab_pin.sym} 510 -1350 0 1 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 510 -1450 0 1 {name=p5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 810 -1350 0 1 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 810 -1450 0 1 {name=p7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1110 -1350 0 1 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1110 -1450 0 1 {name=p9 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1410 -1350 0 1 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1410 -1450 0 1 {name=p11 sig_type=std_logic lab=VDD
}
C {ladder_rung.sym} 660 -760 0 0 {name=x5}
C {devices/lab_pin.sym} 660 -1190 0 1 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 660 -1290 0 1 {name=p17 sig_type=std_logic lab=VDD
}
C {ladder_rung.sym} 660 -920 0 0 {name=x6}
C {ladder_rung.sym} 660 -1080 0 0 {name=x7}
C {ladder_rung.sym} 660 -1240 0 0 {name=x8}
C {devices/lab_pin.sym} 660 -1030 0 1 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 660 -1130 0 1 {name=p19 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 660 -870 0 1 {name=p20 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 660 -970 0 1 {name=p21 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 660 -710 0 1 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 660 -810 0 1 {name=p23 sig_type=std_logic lab=VDD
}
C {ladder_rung.sym} 960 -1240 0 0 {name=x9}
C {devices/lab_pin.sym} 960 -1190 0 1 {name=p29 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 960 -1290 0 1 {name=p30 sig_type=std_logic lab=VDD
}
C {ladder_rung.sym} 960 -1080 0 0 {name=x10}
C {ladder_rung.sym} 960 -920 0 0 {name=x11}
C {ladder_rung.sym} 960 -760 0 0 {name=x12}
C {devices/lab_pin.sym} 960 -1030 0 1 {name=p31 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 960 -1130 0 1 {name=p32 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 960 -870 0 1 {name=p33 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 960 -970 0 1 {name=p34 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 960 -710 0 1 {name=p35 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 960 -810 0 1 {name=p36 sig_type=std_logic lab=VDD
}
C {ladder_rung.sym} 1260 -760 0 0 {name=x13}
C {devices/lab_pin.sym} 1260 -1190 0 1 {name=p40 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1260 -1290 0 1 {name=p41 sig_type=std_logic lab=VDD
}
C {ladder_rung.sym} 1260 -920 0 0 {name=x14}
C {ladder_rung.sym} 1260 -1080 0 0 {name=x15}
C {ladder_rung.sym} 1260 -1240 0 0 {name=x16}
C {devices/lab_pin.sym} 1260 -1030 0 1 {name=p42 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1260 -1130 0 1 {name=p43 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1260 -870 0 1 {name=p44 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1260 -970 0 1 {name=p45 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1260 -710 0 1 {name=p46 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1260 -810 0 1 {name=p47 sig_type=std_logic lab=VDD
}
C {ladder_rung.sym} 1560 -1240 0 0 {name=x17}
C {ladder_rung.sym} 1560 -1080 0 0 {name=x18}
C {ladder_rung.sym} 1560 -920 0 0 {name=x19}
C {devices/lab_pin.sym} 1560 -1190 0 1 {name=p54 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1560 -1290 0 1 {name=p55 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1560 -1030 0 1 {name=p56 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1560 -1130 0 1 {name=p57 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1560 -870 0 1 {name=p58 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1560 -970 0 1 {name=p59 sig_type=std_logic lab=VDD
}
C {devices/opin.sym} 740 -760 0 0 {name=p77 lab=OUT0
}
C {devices/opin.sym} 740 -920 0 0 {name=p61 lab=OUT1
}
C {devices/opin.sym} 740 -1080 0 0 {name=p62 lab=OUT2
}
C {devices/opin.sym} 740 -1240 0 0 {name=p63 lab=OUT3
}
C {devices/opin.sym} 1040 -1240 0 0 {name=p64 lab=OUT4
}
C {devices/opin.sym} 1040 -1080 0 0 {name=p65 lab=OUT5
}
C {devices/opin.sym} 1040 -920 0 0 {name=p66 lab=OUT6
}
C {devices/opin.sym} 1040 -760 0 0 {name=p67 lab=OUT7
}
C {devices/opin.sym} 1340 -760 0 0 {name=p68 lab=OUT8
}
C {devices/opin.sym} 1340 -920 0 0 {name=p69 lab=OUT9
}
C {devices/opin.sym} 1340 -1080 0 0 {name=p70 lab=OUT10
}
C {devices/opin.sym} 1340 -1240 0 0 {name=p71 lab=OUT11
}
C {devices/opin.sym} 1640 -1240 0 0 {name=p72 lab=OUT12
}
C {devices/opin.sym} 1640 -1080 0 0 {name=p73 lab=OUT13
}
C {devices/opin.sym} 1640 -920 0 0 {name=p74 lab=OUT14
}
