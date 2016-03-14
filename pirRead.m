% save('From_1to8_long_route_2','dataArray')

pause(15);
count = 1;
% string "IxxxxRxLxx\r\n"
%           I 73   R 114 L 108 
%           \r 13
%           \n 10
delete(instrfindall);
dataArray = zeros(18,10);
sensor = serial('COM8');
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
save('under_8.mat','dataArray')

beep;