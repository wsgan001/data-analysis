<<<<<<< HEAD
% pause(5);
count = 1;
% string "IxxxxRxLxx\r\n"
%           I 73   R 114 L 108 
%           \r 13
%           \n 10
delete(instrfindall);
dataArray = zeros(18,10);
sensor = serial('COM7');
set(sensor, 'BaudRate', 9600, 'DataBits', 8,'InputBufferSize', 512, 'Timeout', 31)
fopen(sensor);
 fprintf(sensor, '#');
readasync(sensor);

beep;
 while (count > -1)
   % incl. hand-shake
%     fprintf(sensor, '#');
   
   rawdata = fread(sensor,18);
   dataArray(:,count)= rawdata;
   count = count + 1;
   rawdata(2)
   
 
 end
% save('From_1to8_long_route_2','dataArray')
=======
% pause(5);
count = 1;
% string "IxxxxRxLxx\r\n"
%           I 73   R 114 L 108 
%           \r 13
%           \n 10
delete(instrfindall);
dataArray = zeros(18,10);
sensor = serial('COM7');
set(sensor, 'BaudRate', 9600, 'DataBits', 8,'InputBufferSize', 512, 'Timeout', 31)
fopen(sensor);
 fprintf(sensor, '#');
readasync(sensor);

beep;
 while (count > -1)
   % incl. hand-shake
%     fprintf(sensor, '#');
   
   rawdata = fread(sensor,18);
   dataArray(:,count)= rawdata;
   count = count + 1;
   rawdata(2)
   
 
 end
save('19_02_exp_1.mat','dataArray')
>>>>>>> ff6a48a4cb1abbd75a6418d9df3e7c42c4d2779d
beep;