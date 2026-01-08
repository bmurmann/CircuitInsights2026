v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 -380 270 -300 {
lab=vmirr}
N 310 -410 390 -410 {
lab=vmirr}
N 330 -410 330 -360 {
lab=vmirr}
N 270 -360 330 -360 {
lab=vmirr}
N 490 -380 490 -300 {
lab=vo}
N 270 -240 270 -210 {
lab=vtail}
N 270 -210 350 -210 {
lab=vtail}
N 490 -240 490 -210 {
lab=vtail}
N 140 -170 200 -170 {
lab=ibn}
N 200 -170 200 -120 {
lab=ibn}
N 140 -90 140 -70 {
lab=VSS}
N 380 -90 380 -70 {
lab=VSS}
N 270 -460 270 -440 {
lab=VDD}
N 490 -460 490 -440 {
lab=VDD}
N 140 -70 140 -50 {
lab=VSS}
N 380 -70 380 -50 {
lab=VSS}
N 150 -480 430 -480 {
lab=VDD}
N 490 -480 490 -460 {
lab=VDD}
N 270 -480 270 -460 {
lab=VDD}
N 270 -270 280 -270 {
lab=VSS}
N 480 -270 490 -270 {
lab=VSS}
N 390 -410 420 -410 {
lab=vmirr}
N 460 -210 490 -210 {
lab=vtail}
N 460 -480 490 -480 {
lab=VDD}
N 380 -180 380 -150 {
lab=vtail}
N 140 -180 140 -150 {
lab=ibn}
N 380 -210 380 -180 {
lab=vtail}
N 100 -50 120 -50 {
lab=VSS}
N 140 -200 140 -180 {
lab=ibn}
N 180 -120 230 -120 {
lab=ibn}
N 120 -50 170 -50 {
lab=VSS}
N 230 -120 330 -120 {
lab=ibn}
N 170 -50 370 -50 {
lab=VSS}
N 380 -120 380 -90 {
lab=VSS}
N 140 -120 140 -90 {
lab=VSS}
N 270 -440 270 -410 {
lab=VDD}
N 490 -440 490 -410 {
lab=VDD}
N 70 -480 150 -480 {
lab=VDD}
N 490 -340 540 -340 {
lab=vo}
N 100 -230 140 -230 {lab=ibn}
N 140 -230 140 -200 {lab=ibn}
N 540 -340 580 -340 {lab=vo}
N 420 -410 450 -410 {lab=vmirr}
N 430 -210 460 -210 {lab=vtail}
N 430 -480 460 -480 {lab=VDD}
N 330 -120 340 -120 {lab=ibn}
N 370 -50 380 -50 {lab=VSS}
N 370 -210 380 -210 {lab=vtail}
N 350 -210 370 -210 {lab=vtail}
N 380 -210 430 -210 {lab=vtail}
C {devices/ipin.sym} 230 -270 0 0 {name=p1 lab=vip}
C {devices/ipin.sym} 530 -270 0 1 {name=p2 lab=vim}
C {devices/opin.sym} 580 -340 0 0 {name=p3 lab=vo
}
C {devices/iopin.sym} 70 -480 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} 100 -50 2 0 {name=p5 lab=VSS}
C {devices/lab_wire.sym} 280 -270 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -270 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 380 -180 0 1 {name=p17 sig_type=std_logic lab=vtail}
C {devices/lab_wire.sym} 360 -410 0 1 {name=p8 sig_type=std_logic lab=vmirr}
C {symbols/pfet_03v3.sym} 470 -410 0 0 {name=M2b
L=\{L2\}
W=\{W2\}
nf=14
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 290 -410 0 1 {name=M2a
L=\{L2\}
W=\{W2\}
nf=14
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 250 -270 0 0 {name=M1a
L=\{L1\}
W=\{W1\}
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 360 -120 0 0 {name=M0b
L=\{L0\}
W=\{W0\}
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 510 -270 0 1 {name=M1b
L=\{L1\}
W=\{W1\}
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 160 -120 0 1 {name=M0a
L=\{L0\}
W=\{W0\}
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 100 -230 2 0 {name=p6 lab=ibn}
