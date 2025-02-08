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
// Create line
//Line(1) = {1,2};
Line(2) = {3,1};
Line(3) = {4,2};
//Line(4) = {3,4};


// Circle in the center 
center_x = (ri + 0) / 2;
center_y = (l + 0) / 2;

Circle(5) = {center_x, center_y, 0, r1/2}; // Circle in 2D plane (center, radius)

Curve Loop(3) = {5};
Plane Surface(2) = {3};


// small hole at the bottom

Point(6) = {10,8,0};
Point(7) = {10+l2,8,0};
Point(8) = {10+l2,8+w2,0};
Point(9) = {10,8+w2,0};


Point(10) = {10,8+w2/2,0};
Point(11) = {10+l2,8+w2/2,0};

Line(6) = {6,7};
Line(7) = {9,8};

Circle(8) = {6,10,9};
Circle(9) = {8,11,7};


// small hole at the bottom

Point(12) = {10,88,0};
Point(13) = {10+l2,88,0};
Point(14) = {10,88+w2,0};
Point(15) = {10+l2,88+w2,0};


Point(16) = {10,w2/2+88,0};
Point(17) = {10+l2,88+w2/2,0};

Line(10) = {12,13};
Line(11) = {15,14};

Circle(12) = {12,16,14};
Circle(13) = {15,17,13};


// small hole at the top 


Point(18) = {180,8,0};
Point(19) = {180,8+w2,0};
Point(20) = {180+l2,8,0};
Point(21) = {180+l2,8+w2,0};


Point(22) = {180,8+w2/2,0};
Point(23) = {180+l2,8+w2/2,0};

Line(14) = {21,19};
Line(15) = {18,20};

Circle(16) = {18,22,19};
Circle(17) = {21,23,20};


// small hole at the bottom

Point(24) = {180,88,0};
Point(25) = {180,88+w2,0};
Point(26) = {180+l2,88,0};
Point(27) = {180+l2,88+w2,0};


Point(28) = {180,w2/2+88,0};
Point(29) = {180+l2,88+w2/2,0};

Line(18) = {27,25};
Line(19) = {24,26};

Circle(20) = {24,28,25};
Circle(21) = {27,29,26};


// first try : 
Point(30) = {ri/2, -ri / (2 * Sin(Pi/36)), 0};
Circle(22) = {1,30,2};

Point(31) = {ri/2, l + -ri / (2 * Sin(Pi/36)), 0};
Circle(23) = {3,31,4};




