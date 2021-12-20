union() {
    cylinder(h=0.15,r1=0.2,r2=0.25, $fn=50);
    translate([0,0,0.15])
        cylinder(h=0.4,r1=0.25, r2=0.25, $fn=50);
    translate([0,0,0.55])
        cylinder(h=0.15,r1=0.25,r2=0.2, $fn=50);
}
