v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -160 380 -140 {
lab=VD}
N 320 -110 340 -110 {
lab=GND}
N 320 -110 320 -50 {
lab=GND}
N 320 -50 380 -50 {
lab=GND}
N 380 -80 380 -50 {
lab=GND}
N 320 -50 320 -30 {
lab=GND}
N 380 -230 380 -220 {
lab=GND}
N 380 -150 400 -150 {
lab=VD}
C {sky130_fd_pr/pnp_05v5.sym} 360 -110 0 0 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {devices/gnd.sym} 320 -30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 380 -230 2 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 530 -160 0 0 {name=NGSPICE only_toplevel=false value=".save all
.dc Ibias 0 2uA 0.01u temp 0 100 10
.control 
run
plot VD
.endc"}
C {devices/lab_pin.sym} 400 -150 0 1 {name=p1 sig_type=std_logic lab=VD}
C {devices/code_shown.sym} 210 -260 0 0 {name=MODEL only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/isource.sym} 380 -190 0 0 {name=Ibias value=1u}
