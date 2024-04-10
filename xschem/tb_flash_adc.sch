v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -480 -830 320 -430 {flags=graph
y1=-9.5e-05
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
out0
out1
out2
out3
out4
out5
out6
out7
out8
out9
out10
out11
out12
out13
out14"
color="4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19"
dataset=-1
unitx=1
logx=0
logy=0
}
C {flash_adc.sym} 220 -210 0 0 {name=x1}
C {devices/vsource.sym} -140 -110 0 0 {name=V2 value="pwl(0 1.8 70u 0 140u 1.8) r=0" savecurrent=false
}
C {devices/vsource.sym} -140 -200 0 0 {name=V3 value=1.8 savecurrent=false
}
C {devices/lab_pin.sym} 220 -40 0 1 {name=p1 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 220 -380 0 1 {name=p2 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 70 -210 0 0 {name=p4 sig_type=std_logic lab=IN
}
C {devices/lab_pin.sym} 370 -70 0 1 {name=p5 sig_type=std_logic lab=OUT0
}
C {devices/lab_pin.sym} -140 -80 0 1 {name=p7 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} -140 -170 0 1 {name=p8 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} -140 -140 0 1 {name=p10 sig_type=std_logic lab=IN
}
C {devices/lab_pin.sym} -140 -230 0 1 {name=p11 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/corner.sym} -500 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} -510 -370 0 0 {name=STIMULI only_toplevel=false value=".control
save in
+ out0 out1 out2 out3
+ out4 out5 out6 out7
+ out8 out9 out10 out11
+ out12 out13 out14
tran 1u 1000u
remzerovec
write tb_flash_adc.raw
.endc
"}
C {devices/launcher.sym} -170 -380 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_flash_adc.raw tran"
}
C {devices/lab_pin.sym} 370 -90 0 1 {name=p3 sig_type=std_logic lab=OUT1
}
C {devices/lab_pin.sym} 370 -110 0 1 {name=p6 sig_type=std_logic lab=OUT2
}
C {devices/lab_pin.sym} 370 -130 0 1 {name=p9 sig_type=std_logic lab=OUT3
}
C {devices/lab_pin.sym} 370 -150 0 1 {name=p12 sig_type=std_logic lab=OUT4
}
C {devices/lab_pin.sym} 370 -170 0 1 {name=p13 sig_type=std_logic lab=OUT5
}
C {devices/lab_pin.sym} 370 -190 0 1 {name=p14 sig_type=std_logic lab=OUT6
}
C {devices/lab_pin.sym} 370 -210 0 1 {name=p15 sig_type=std_logic lab=OUT7
}
C {devices/lab_pin.sym} 370 -230 0 1 {name=p16 sig_type=std_logic lab=OUT8
}
C {devices/lab_pin.sym} 370 -250 0 1 {name=p17 sig_type=std_logic lab=OUT9
}
C {devices/lab_pin.sym} 370 -270 0 1 {name=p18 sig_type=std_logic lab=OUT10
}
C {devices/lab_pin.sym} 370 -290 0 1 {name=p19 sig_type=std_logic lab=OUT11
}
C {devices/lab_pin.sym} 370 -310 0 1 {name=p20 sig_type=std_logic lab=OUT12
}
C {devices/lab_pin.sym} 370 -330 0 1 {name=p21 sig_type=std_logic lab=OUT13
}
C {devices/lab_pin.sym} 370 -350 0 1 {name=p22 sig_type=std_logic lab=OUT14
}
