v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Note: Dependence of device capacitances on ng seems unrealistically large with these models.
I am therefore using m-factor scaling.} 40 50 0 0 0.4 0.4 {}
N 310 -330 350 -330 {
lab=vsd}
N 130 -370 130 -220 {
lab=vsd}
N 130 -370 310 -370 {
lab=vsd}
N 130 -160 130 -140 {
lab=GND}
N 310 -160 310 -140 {
lab=GND}
N 310 -240 390 -240 {
lab=vsc}
N 310 -240 310 -220 {
lab=vsc}
N 310 -290 350 -290 {
lab=GND}
N 310 -290 310 -270 {
lab=GND}
N 230 -280 230 -240 {
lab=vsc}
N 390 -280 390 -240 {
lab=vsc}
N 310 -370 310 -330 {
lab=vsd}
N 230 -240 310 -240 {
lab=vsc}
N 270 -290 310 -290 {
lab=GND}
N 270 -330 310 -330 {
lab=vsd}
N 50 -260 50 -220 {
lab=VDD}
N 50 -160 50 -140 {
lab=GND}
N 620 -310 620 -250 {lab=tail}
N 800 -310 800 -250 {lab=tail}
N 710 -250 800 -250 {lab=tail}
N 840 -310 880 -310 {lab=vim}
N 710 -250 710 -200 {lab=tail}
N 620 -250 710 -250 {lab=tail}
N 620 -410 620 -340 {lab=vom}
N 800 -410 800 -340 {lab=vop}
N 620 -560 620 -520 {lab=VDD}
N 620 -560 800 -560 {lab=VDD}
N 800 -560 800 -520 {lab=VDD}
N 530 -310 580 -310 {lab=vip}
N 230 -420 230 -340 {lab=vsp}
N 230 -530 230 -480 {lab=vip}
N 390 -420 390 -340 {lab=vsm}
N 390 -530 390 -480 {lab=vim}
N 800 -410 820 -410 {lab=vop}
N 800 -460 800 -410 {lab=vop}
N 600 -410 620 -410 {lab=vom}
N 620 -460 620 -410 {lab=vom}
C {devices/code_shown.sym} 950 -550 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.inc ../../example2_params.spice
.param vdd=1.2 vcm=0.7

.control
    save all
    op
    show
    write example2.raw
    ac dec 100 1e3 10e9
    let vod_mag = abs(v(vop, vom))
    meas ac AV0 find vod_mag at=1k
    let th = AV0/sqrt(2) 
    meas ac BW when vod_mag=th fall=1
    set wr_singlescale
    set wr_vecnames
    option numdgt = 3
    wrdata example2.txt vod_mag
.endc
"}
C {devices/launcher.sym} 1030 -140 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vcvs.sym} 230 -310 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 390 -310 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 130 -190 0 0 {name=Vdm value="dc 0 ac 1" savecurrent=false}
C {devices/vsource.sym} 310 -190 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 130 -140 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 310 -140 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 310 -270 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 50 -190 0 0 {name=V1 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 50 -260 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 50 -140 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 540 -410 1 0 {name=l2 lab=GND}
C {devices/isource.sym} 710 -170 0 0 {name=IB value=\{2*id\}}
C {devices/lab_wire.sym} 230 -530 0 1 {name=p4 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 390 -530 0 1 {name=p6 sig_type=std_logic lab=vim}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 -310 0 0 {name=M1
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 820 -310 0 1 {name=M2
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 710 -140 0 0 {name=l4 lab=GND}
C {res.sym} 620 -490 0 0 {name=R1
value=\{rd\}
footprint=1206
device=resistor
m=1}
C {res.sym} 800 -490 0 0 {name=R2
value=\{rd\}
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 700 -560 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 880 -310 0 1 {name=p1 sig_type=std_logic lab=vim}
C {devices/lab_wire.sym} 530 -310 0 0 {name=p3 sig_type=std_logic lab=vip}
C {res.sym} 230 -450 0 0 {name=R4
value=\{rs\}
footprint=1206
device=resistor
m=1}
C {res.sym} 390 -450 0 0 {name=R5
value=\{rs\}
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 880 -410 3 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 620 -370 0 0 {name=p7 sig_type=std_logic lab=vom}
C {devices/lab_wire.sym} 800 -370 0 1 {name=p8 sig_type=std_logic lab=vop}
C {devices/capa.sym} 850 -410 3 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 570 -410 3 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 710 -220 0 1 {name=p9 sig_type=std_logic lab=tail}
C {devices/lab_wire.sym} 390 -390 0 1 {name=p10 sig_type=std_logic lab=vsm}
C {devices/lab_wire.sym} 230 -390 0 1 {name=p11 sig_type=std_logic lab=vsp}
C {devices/lab_wire.sym} 130 -370 0 1 {name=p12 sig_type=std_logic lab=vsd}
C {devices/lab_wire.sym} 260 -240 0 1 {name=p13 sig_type=std_logic lab=vsc}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
