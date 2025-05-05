% electrical constants and derived quantities for typical 
% mammalian dendrite

% Dimensions of compartments

d1 = 75e-4; 			% cm
d21 = 30e-4; 			% cm
d22 = 15e-4; 			% cm
%d21 = 47.2470e-4;       % E9 cm
%d22 = d21;               % E9 cm

l1 = 1.5;			% dimensionless
l21 = 3.0;			% dimensionless
l22 = 3.0;			% dimensionless

% Electrical properties of compartments

Rm = 6e3;			% Ohms cm^2
Rc = 90;			% Ohms cm
Rs = 1e6;			% Ohms

c1 = 2*(Rc*Rm)^(1/2)/pi;

rl1 = c1*d1^(-3/2);		% Ohms
rl21 = c1*d21^(-3/2);		% Ohms
rl22 = c1*d22^(-3/2);		% Ohms


% Applied current

iapp = 1e-9; 	% Amps

% Coefficient matrices

A = [1 -1 0 0 0 0;
     0 0 exp(-l21) exp(l21) 0 0;
     0 0 0 0 exp(-l22) exp(l22);
     exp(-l1) exp(l1) -exp(-l1) -exp(l1) 0 0;
     0 0 exp(-l1) exp(l1) -exp(-l1) -exp(l1);
     -exp(-l1) exp(l1) rl1*exp(-l1)/rl21 -rl1*exp(l1)/rl21 rl1*exp(-l1)/rl22 -rl1*exp(l1)/rl22];

b = [rl1*iapp 0 0 0 0 0]';

%% 

%Question 3
x=A\b;
display(x)

%% 


%Question 4
y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);

v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'-y',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady Stage Voltage - E5');



%% 

%Question 5- (a)

A1=A;
A1(2,:) = [0 0 -exp(-l21) exp(l21) 0 0];
x=A1\b;


y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);

v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'-y',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady Stage Voltage - E5');



%% 

%Question 5- (b)


A1(3,:) = [0 0 0 0 -exp(-l22) exp(l22)];
x=A1\b;


y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);

v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'-y',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady Stage Voltage - E5');



%% 

%Question 5- (c)

A2=A;
A2(2,:) = [0 0 -exp(-l21) exp(l21) 0 0];


b2=b;
b2(1) = 0;
b2(2) = rl21*iapp;

x=A2\b2;


y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);

v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'-y',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady Stage Voltage - E5');




%% 


%Question 5- (d)

b2(3) = rl22*iapp;

x=A1\b2;


y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);

v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'-y',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady Stage Voltage - E5');


%% 


%Question 6


%electrical constants and derived quantities for typical 
% mammalian dendrite

% Dimensions of compartments

d1 = 75e-4; 			% cm
%d21 = 30e-4; 			% cm
%d22 = 15e-4; 			% cm
d21 = 47.2470e-4;       % E9 cm
d22 = d21;               % E9 cm

l1 = 1.5;			% dimensionless
l21 = 3.0;			% dimensionless
l22 = 3.0;			% dimensionless

% Electrical properties of compartments

Rm = 6e3;			% Ohms cm^2
Rc = 90;			% Ohms cm
Rs = 1e6;			% Ohms

c1 = 2*(Rc*Rm)^(1/2)/pi;

rl1 = c1*d1^(-3/2);		% Ohms
rl21 = c1*d21^(-3/2);		% Ohms
rl22 = c1*d22^(-3/2);		% Ohms


% Applied current

iapp = 1e-9; 	% Amps

% Coefficient matrices

A = [1 -1 0 0 0 0;
     0 0 exp(-l21) exp(l21) 0 0;
     0 0 0 0 exp(-l22) exp(l22);
     exp(-l1) exp(l1) -exp(-l1) -exp(l1) 0 0;
     0 0 exp(-l1) exp(l1) -exp(-l1) -exp(l1);
     -exp(-l1) exp(l1) rl1*exp(-l1)/rl21 -rl1*exp(l1)/rl21 rl1*exp(-l1)/rl22 -rl1*exp(l1)/rl22];

b = [rl1*iapp 0 0 0 0 0]';


%% 

%Question 6- (b)

A3=A;
A3(2,:) = [0 0 -exp(-l21) exp(l21) 0 0];
A3(3,:) = [0 0 0 0 -exp(-l22) exp(l22)];
x=A3\b;


y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);

v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'-y',y21,v21,'r-',y22,v22,'b-');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady Stage Voltage - E5');




%% 


%Question 6- (d)

A3=A;
A3(2,:) = [0 0 -exp(-l21) exp(l21) 0 0];
A3(3,:) = [0 0 0 0 -exp(-l22) exp(l22)];

b3=b;
b3(1) = 0;
b3(2) = rl21*iapp;
b3(3) = rl22*iapp;

x=A3\b3;


y1=linspace(0,l1,20);
y21=linspace(l1,l21,20);
y22=linspace(l1,l22,20);

v1=x(1)*exp(-y1)+x(2)*exp(y1);
v21=x(3)*exp(-y21)+x(4)*exp(y21);
v22=x(5)*exp(-y22)+x(6)*exp(y22);
plot(y1,v1,'-y',y21,v21,'r-',y22,v22,'b--');
xlabel('X(dimensionless)');
ylabel('V(Volts)');
title('Steady Stage Voltage - E5');


