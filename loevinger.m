function [ y ] =  loevinger(a,b,c,d,p_1,p_2,q_1,q_2)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
num = a*d-b*c;
den = min(p_1*q_2,p_2*q_1);
y=num/den;

end