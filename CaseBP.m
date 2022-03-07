close all; clear; clc;
%Aaron Rosen - Fields & Waves II - Project 1 
%CASE B - Power
 
%Zo: Characteristic Impedance
Zo = 50;
%Zl: Load Impedance
Zl1 = 100;

%Frequency
f = 2.4e9;
%w == angular frequency
w = 2.*pi.*f;
%l in m
l = 0.5;
%c == speed of light in m/s
c = 299792458;
%up == propagation velocity
%up of RG58 is 65.9% of c
%up = c/sqrt(er)
%I am going to use the 65.9% to calculate up
%source: http://www.idc-online.com/technical_references/pdfs/data_communications/RG_58.pdf
up = 0.659*c;
%B= up/w
B = w./up;
t = tan(B.*0);
%25ohm
num1 = Zl1 + 1j.*Zo.*t;
dem1 = Zo + 1j.*Zl1.*t;
Zin1 = (Zo.*num1)./dem1;
Rs = 50;
Vs = 1; %RMS
totalresistance = Rs + Zin1;
I = Vs./totalresistance;
P = I.^2.*abs(Zin1);
P
