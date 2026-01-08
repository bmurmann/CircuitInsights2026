v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 60 570 860 970 {flags=graph
y1=-43
y2=60
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color=4
node="\\"vo db20()\\""

sim_type=ac
autoload=0
hilight_wave=-1
x2=9}
T {tcleval(A0: [to_eng [xschem raw value A0 0]]
GBW: [to_eng [xschem raw value ugf 0]]
PM: [to_eng [xschem raw value pm 0]]
)} 930 750 0 0 0.4 0.4 {floater=1}
N 570 160 590 160 {
lab=vo}
N 260 300 300 300 {
lab=#net1}
N 80 250 80 410 {
lab=#net1}
N 80 250 260 250 {
lab=#net1}
N 80 470 80 490 {
lab=GND}
N 260 470 260 490 {
lab=GND}
N 260 390 340 390 {
lab=#net2}
N 260 390 260 410 {
lab=#net2}
N 260 340 300 340 {
lab=GND}
N 260 340 260 360 {
lab=GND}
N 180 350 180 390 {
lab=#net2}
N 340 350 340 390 {
lab=#net2}
N 260 250 260 300 {
lab=#net1}
N 340 210 340 290 {
lab=vim}
N 180 210 180 290 {
lab=vip}
N 180 390 260 390 {
lab=#net2}
N 220 340 260 340 {
lab=GND}
N 220 300 260 300 {
lab=#net1}
N 340 200 420 200 {lab=vim}
N 340 200 340 210 {lab=vim}
N 180 120 420 120 {lab=vip}
N 180 120 180 210 {lab=vip}
N 440 370 440 410 {
lab=VSS}
N 440 470 440 490 {
lab=GND}
N 520 370 520 410 {
lab=VDD}
N 520 470 520 490 {
lab=GND}
N 650 160 650 180 {lab=vo}
N 590 160 650 160 {lab=vo}
N 650 180 650 200 {lab=vo}
N 650 260 650 300 {lab=GND}
C {devices/lab_wire.sym} 480 100 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 880 50 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.inc /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.inc ../sizing_ota-5t_gf.spice
.param vdd=3 vcm=1.5 cl=1p
.option savecurrents

.control
    save all
    save @m.x1.xM0a.m0[gm]
    op
    show
    write ota-5t_gf_tb.raw
    set appendwrite

    ac dec 20 1 10e9
    let vo_mag = abs(v(vo))
    let vo_phase_margin = phase(v(vo)) * 180/pi + 180
    meas ac A0 find vo_mag at=1k
    meas ac UGF when vo_mag=1 fall=1
    meas ac PM find vo_phase_margin when vo_mag=1
    echo $&A0 $&UGF $&PM
    echo $plots
    remzerovec
    write ota-5t_gf_tb.raw
.endc
"}
C {devices/launcher.sym} 990 650 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 990 700 0 0 {name=h27
descr="Load AC" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw ac
"
}
C {devices/lab_wire.sym} 590 160 0 1 {name=p11 sig_type=std_logic lab=vo}
C {ota-5t_gf.sym} 490 160 0 0 {name=x1}
C {devices/vcvs.sym} 180 320 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 340 320 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 80 440 0 0 {name=Vdm value="dc 0 ac 1" savecurrent=false}
C {devices/vsource.sym} 260 440 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 80 490 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 260 490 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 260 360 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 480 220 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 440 440 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 440 490 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 520 440 0 0 {name=V1 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 440 370 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 520 370 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 520 490 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 650 230 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 650 300 0 0 {name=l2 lab=GND}
C {devices/isource.sym} 500 80 0 0 {name=IB value=\{ibn\}}
C {devices/lab_wire.sym} 500 50 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 270 120 0 1 {name=p4 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 360 200 0 1 {name=p6 sig_type=std_logic lab=vim}
