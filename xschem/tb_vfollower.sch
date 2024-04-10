v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -480 -790 320 -390 {flags=graph
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
out"
color="4 8"
dataset=-1
unitx=1
logx=0
logy=0
}
C {vfollower.sym} 220 -170 0 0 {name=x1}
C {devices/vsource.sym} -140 -110 0 0 {name=V2 value="pwl(0 1.8 70u 0 140u 1.8) r=0" savecurrent=false
}
C {devices/vsource.sym} -140 -200 0 0 {name=V3 value=1.8 savecurrent=false
}
C {devices/lab_pin.sym} 200 -120 0 1 {name=p1 sig_type=std_logic lab=GND
}
C {devices/lab_pin.sym} 200 -220 0 1 {name=p2 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 150 -170 0 0 {name=p4 sig_type=std_logic lab=IN
}
C {devices/lab_pin.sym} 290 -170 0 1 {name=p5 sig_type=std_logic lab=OUT
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
C {devices/code_shown.sym} -500 -310 0 0 {name=STIMULI only_toplevel=false value=".control
save in out
tran 1u 1000u
remzerovec
write tb_vfollower.raw
.endc
"}
C {devices/launcher.sym} 110 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_vfollower.raw tran"
}
