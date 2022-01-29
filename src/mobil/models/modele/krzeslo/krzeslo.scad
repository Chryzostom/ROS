union () {
    translate([0.3, -0.4, 0])
    cube([0.1, 0.1, 0.6], center = true);

    translate([0.3, 0.4, 0])
    cube([0.1, 0.1, 0.6], center = true);

    translate([-0.3, -0.4, 0])
    cube([0.1, 0.1, 0.6], center = true);

    translate([-0.3, 0.4, 0])
    cube([0.1, 0.1, 0.6], center = true);

    translate([0, 0, 0.35])
    cube([0.7, 0.9, 0.1], center = true);

    translate([0, 0.4, 0.85])
    cube([0.7, 0.1, 0.9], center = true);
}
