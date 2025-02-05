SetFactory("OpenCASCADE");

// Parameters
ri = 200;  // Internal radius (mm)
l = 100;   // Length of the bitter (mm)
alpha = Pi/18; // Angle in radians
r1 = 10;   // Diameter of cooling hole (mm)
w2 = 1.1;  // Width of cooling slots (mm)
l2 = 5.9;  // Length of cooling slots (mm)
h = 4;     // Height (mm)

Point(1) = {0,0,0};
Point(2) = {ri,0,0};
Point(3) = {0,l,0};
Point(4) = {ri,l,0};

// Define edges
Line(2) = {3,1};
Line(3) = {4,2};

// Circle in the center 
center_x = (ri + 0) / 2;
center_y = (l + 0) / 2;
Circle(5) = {center_x, center_y, 0, r1/2}; 

// Define surface
Curve Loop(3) = {5};
Plane Surface(2) = {3};

// Small holes
holes = {{10,8}, {10,88}, {180,8}, {180,88}};

For i In {0:#holes[]-1}
    x = holes[i][0];
    y = holes[i][1];
    Point(100 + i*4) = {x, y, 0};
    Point(101 + i*4) = {x+l2, y, 0};
    Point(102 + i*4) = {x, y+w2, 0};
    Point(103 + i*4) = {x+l2, y+w2, 0};
    Point(104 + i*4) = {x, y+w2/2, 0};
    Point(105 + i*4) = {x+l2, y+w2/2, 0};
    Line(200 + i*2) = {101 + i*4, 103 + i*4};
    Line(201 + i*2) = {102 + i*4, 100 + i*4};
    Circle(300 + i*2) = {100 + i*4, 104 + i*4, 102 + i*4};
    Circle(301 + i*2) = {103 + i*4, 105 + i*4, 101 + i*4};
EndFor

// Outer arc
Point(30) = {ri/2, -ri / (2 * Sin(Pi/36)), 0};
Circle(22) = {1,30,2};
Point(31) = {ri/2, l + -ri / (2 * Sin(Pi/36)), 0};
Circle(23) = {3,31,4};

// Create 3D extrusion
out[] = Extrude {{0,0,h}} { Surface{2}; };
