

//+
SetFactory("OpenCASCADE");

// Parameters
ri = 200;  // Internal radius (mm)
l = 100;   // Length of the bitter (mm)
alpha = Pi/18; // Angle in radians
r1 = 10;   // Diameter of cooling hole (mm)
w2 = 1.1;  // Width of cooling slots (mm)
l2 = 5.9;  // Length of cooling slots (mm)
h = 4;     // Height (mm)


//Base structure R_in R_out R_channel

Point(1) = {0,0,0};
Point(2) = {ri,0,0};
Point(3) = {0,l,0};
Point(4) = {ri,l,0};

Point(100) = {0,0,4};
Point(200) = {ri,0,4};
Point(300) = {0,l,4};
Point(40) = {ri,l,4};

// Point for circle of base rChannel
Point(3000) = {ri/2, -ri / (2 * Sin(Pi/36)), 4};
Point(310) = {ri/2, l + -ri / (2 * Sin(Pi/36)), 4};
Point(30) = {ri/2, -ri / (2 * Sin(Pi/36)), 0};
Point(31) = {ri/2, l + -ri / (2 * Sin(Pi/36)), 0};


// Create line R_in R_out
Line(2) = {3,1};
Line(3) = {4,2};
Line(200) = {300,100};
Line(300) = {40,200};

//Line joining the two faces 
Line(301) = {3, 300};
Line(302) = {4, 40};
Line(303) = {1, 100};
Line(304) = {2, 200};

// Create circle for R_channel
Circle(22) = {1,30,2};
Circle(23) = {3,31,4};
Circle(220) = {100,3000,200};
Circle(230) = {300,310,40};


//All small hole 
//Point for R_cool_2_1
Point(6) = {10,8,0};
Point(7) = {10+l2,8,0};
Point(8) = {10+l2,8+w2,0};
Point(9) = {10,8+w2,0};
Point(10) = {10,8+w2/2,0};
Point(11) = {10+l2,8+w2/2,0};

Point(60) = {10,8,4};
Point(70) = {10+l2,8,4};
Point(80) = {10+l2,8+w2,4};
Point(90) = {10,8+w2,4};
Point(101) = {10,8+w2/2,4};
Point(110) = {10+l2,8+w2/2,4};


//Line and circle for R_cool_2_1
Line(6) = {6,7};
Line(7) = {9,8};
Line(60) = {60,70};
Line(70) = {90,80};

Circle(8) = {6,10,9};
Circle(9) = {8,11,7};
Circle(80) = {60,101,90};
Circle(90) = {80,110,70};

//Line joining the two faces 

Line(317) = {7, 70};
Line(318) = {8, 80};
Line(319) = {6, 60};
Line(320) = {90, 9};

//Point for R_cool_2_2


Point(12) = {10,88,0};
Point(13) = {10+l2,88,0};
Point(14) = {10,88+w2,0};
Point(15) = {10+l2,88+w2,0};
Point(16) = {10,w2/2+88,0};
Point(17) = {10+l2,88+w2/2,0};

Point(120) = {10,88,4};
Point(130) = {10+l2,88,4};
Point(140) = {10,88+w2,4};
Point(150) = {10+l2,88+w2,4};
Point(160) = {10,w2/2+88,4};
Point(170) = {10+l2,88+w2/2,4};

//Line and circle for R_cool_2_2
Line(10) = {12,13};
Line(11) = {15,14};
Line(100) = {120,130};
Line(110) = {150,140};


Circle(12) = {12,16,14};
Circle(13) = {15,17,13};
Circle(120) = {120,160,140};
Circle(130) = {150,170,130};

//Line joining the volume
Line(306) = {14, 140};
Line(307) = {12, 120};
Line(308) = {13, 130};
Line(309) = {15, 150};

//Point for R_cool_2_3

Point(18) = {180,8,0};
Point(19) = {180,8+w2,0};
Point(20) = {180+l2,8,0};
Point(21) = {180+l2,8+w2,0};
Point(22) = {180,8+w2/2,0};
Point(23) = {180+l2,8+w2/2,0};

Point(180) = {180,8,4};
Point(190) = {180,8+w2,4};
Point(2000) = {180+l2,8,4};
Point(210) = {180+l2,8+w2,4};
Point(220) = {180,8+w2/2,4};
Point(230) = {180+l2,8+w2/2,4};

//Circle and line for R_cool_2_3
Line(14) = {21,19};
Line(15) = {18,20};
Line(140) = {210,190};
Line(150) = {180,2000};

Circle(16) = {18,22,19};
Circle(17) = {21,23,20};
Circle(160) = {180,220,190};
Circle(170) = {210,230,2000};

//Line joining the two faces 
Line(313) = {2000, 20};
Line(314) = {210, 21};
Line(315) = {180, 18};
Line(316) = {190, 19};

//Point for R_cool_2_4

Point(24) = {180,88,0};
Point(25) = {180,88+w2,0};
Point(26) = {180+l2,88,0};
Point(27) = {180+l2,88+w2,0};
Point(28) = {180,w2/2+88,0};
Point(29) = {180+l2,88+w2/2,0};


Point(240) = {180,88,4};
Point(250) = {180,88+w2,4};
Point(260) = {180+l2,88,4};
Point(270) = {180+l2,88+w2,4};
Point(280) = {180,w2/2+88,4};
Point(290) = {180+l2,88+w2/2,4};


//Line and circle for R_cool_2_4
Line(18) = {27,25};
Line(19) = {24,26};
Line(180) = {270,250};
Line(190) = {240,260};


Circle(20) = {24,28,25};
Circle(21) = {27,29,26};
Circle(201) = {240,280,250};
Circle(210) = {270,290,260};

//Line joining the volume
Line(311) = {24, 240};
Line(312) = {27, 270};
Line(310) = {25, 250};

// Circle for R_cool_1

center_x = (ri + 0) / 2;
center_y = (l + 0) / 2;

Circle(5) = {center_x, center_y, 0, r1/2}; // Circle in 2D plane (center, radius)
Circle(50) = {center_x, center_y, 4, r1/2}; // Circle in 2D plane (center, radius)



