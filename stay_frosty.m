%% Final Project MATLAB Code Allen George, Cristopher Falcon Ortiz, Abdalla Elattar 
% Authors: Allen George, Cristopher Falcon Ortiz, Abdalla Elattar
% Date: 12/11/18
% Course: ENGR114 Fall 2018
% Description: Accepts Arduino input and responds by sending outputs to
% Arduino, and allows user input to control a fan.

%% Open serial port
clc, clear;                     % clears command window and workspace variables
Port = 'COM7';                  % Port the Arduino is connected to 
delete(instrfindall);           % deletes any connected ports
a = serial(Port);               % create the serial port
fopen(a);                       % open the serial port
pause(1);                       % pause for 1 second to make sure a connection is made
out = instrfind('Port', Port); % see if the port you specified is open 
fprintf('Serial Port is Open\n')% lets user know port is open

%% Analyzing Arduino input
fprintf('\nMove in front of sensor to activate fan\n')
serial_read = zeros(1,5);               % Initializes serial_read as a 1x5 zeroes matrix so that our if loop can function
while (1)                               % Sets up an infinite loop
    serial_read(end+1) = fscanf(a,'%d');% read the serial input as a decimal number
    pause(.50);                         % wait half a second before next serial reading
        if serial_read(end-4:end) == ones(1,5)  % If the last 5 digits of serial_read are one, activate loop.
            send_str = 'H';                     % Sends H to arduino, which turns fan on.
            fprintf(a, '%s', send_str);
            pause(1);
            break                       % Ends infinite while loop
        end
end

%% User input to turn on & off fan
while (1)               % Sets up infinite loop
    % asks user for input continuously. Invalid inputs are ignored.
    user_input = input('\nType H to turn on the LED, L to turn off the LED, or Q to quit: ','s'); 
        if strcmp(user_input ,'L')              % If user types L, turns fan off
            fprintf('[Fan Turns Off]\n')
            send_str = 'L';                    
            fprintf(a, '%s', send_str);         % Sends L to arduino
            pause(1);                           % 1 second pause
        
        elseif strcmp(user_input, 'H')          % If user types H, turns fan off
            fprintf('[Fan Turns On]\n')
            send_str = 'H';
            fprintf(a, '%s', send_str);         % Sends H to arduino
            pause(1);                           % 1 second pause
                  
        elseif strcmp(user_input, 'Q')          % If user types Q, turns fan and program off.
            fprintf('[Program Terminates]\n')
            send_str = 'L';
            fprintf(a, '%s', send_str);         % Sends L to arduino
            pause(1);                           % 1 second pause
         break                                  % Ends loop
    end
end

%% Close the serial port
fclose(a);
delete(a);
clear a;
fprintf('\nSerial Port is closed\n')