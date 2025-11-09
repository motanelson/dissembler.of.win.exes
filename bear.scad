// Ícone do Android em OpenSCAD
// Corpo principal
color("Yellow")
union() {
    // Cabeça
    translate([0, 15, 0])
    sphere(r = 8, $fn = 30);
    
    // Corpo
    translate([0, 0, 0])
    sphere(r = 10, $fn = 30);
}

// Antenas
color("Yellow")
union() {
    translate([-3, 22, 0])
    rotate([0, 0, -30])
    cylinder(h = 8, r1 = 1.5, r2 = 1, center = true, $fn = 20);
    
    translate([3, 22, 0])
    rotate([0, 0, 30])
    cylinder(h = 8, r1 = 1.5, r2 = 1, center = true, $fn = 20);
}

// Braços e pernas
color("Yellow")
union() {
    // Braço esquerdo
    translate([-8, 5, 0])
    rotate([0, 0, 15])
    cylinder(h = 12, r = 2, center = true, $fn = 20);
    
    // Braço direito
    translate([8, 5, 0])
    rotate([0, 0, -15])
    cylinder(h = 12, r = 2, center = true, $fn = 20);
    
    // Perna esquerda
    translate([-6, -8, 0])
    cylinder(h = 10, r = 2, $fn = 20);
    
    // Perna direita
    translate([6, -8, 0])
    cylinder(h = 10, r = 2, $fn = 20);
}

// Olhos
color("Black")
union() {
    translate([-2.5, 16, 5])
    sphere(r = 1.5, $fn = 20);
    
    translate([2.5, 16, 5])
    sphere(r = 1.5, $fn = 20);
}