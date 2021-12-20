dlugosc = 5;
szerokosc = 4;
grubosc = 0.3;
wysokosc = 1;

difference() {
    difference() {
        //zewnetrzna bryla
        translate([0,0,wysokosc/2])
            cube([dlugosc+2*grubosc, szerokosc+2*grubosc, 
            wysokosc], center=true);
        //wewnetrzna bryla
        translate([0,0,wysokosc/2])
            cube([dlugosc, szerokosc, 
            wysokosc], center=true);
    }
    #translate([0,(szerokosc+grubosc)/2, wysokosc/2])
        cube([1, grubosc, wysokosc], center = true);
}