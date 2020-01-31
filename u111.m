clear a
a(1) = rospublisher('/darwin/j_ankle1_l_position_controller/command')
a(2) = rospublisher('/darwin/j_ankle1_r_position_controller/command')
a(3) = rospublisher('/darwin/j_ankle2_l_position_controller/command')
a(4) = rospublisher('/darwin/j_ankle2_r_position_controller/command')
a(5) = rospublisher('/darwin/j_gripper_l_position_controller/command')
a(6) = rospublisher('/darwin/j_gripper_r_position_controller/command')
a(7) = rospublisher('/darwin/j_high_arm_l_position_controller/command')
a(8) = rospublisher('/darwin/j_high_arm_r_position_controller/command')
a(9) = rospublisher('/darwin/j_low_arm_l_position_controller/command')
a(10) = rospublisher('/darwin/j_low_arm_r_position_controller/command')
a(11) = rospublisher('/darwin/j_pan_position_controller/command')
a(12) = rospublisher('/darwin/j_pelvis_l_position_controller/command');
a(13) = rospublisher('/darwin/j_pelvis_r_position_controller/command')
a(14) = rospublisher('/darwin/j_shoulder_l_position_controller/command')
a(15) = rospublisher('/darwin/j_shoulder_r_position_controller/command')
a(16) = rospublisher('/darwin/j_thigh1_l_position_controller/command')
a(17) = rospublisher('/darwin/j_thigh1_r_position_controller/command')
a(18) = rospublisher('/darwin/j_thigh2_l_position_controller/command')
a(19) = rospublisher('/darwin/j_thigh2_r_position_controller/command')
a(20) = rospublisher('/darwin/j_tibia_l_position_controller/command')
a(21) = rospublisher('/darwin/j_tibia_r_position_controller/command')
a(22) = rospublisher('/darwin/j_tilt_position_controller/command')
a(23) = rospublisher('/darwin/j_wrist_l_position_controller/command')
a(24) = rospublisher('/darwin/j_wrist_r_position_controller/command')

for x = 1:24 
    b = rosmessage(a(x).MessageType)
    b.Data = 0
    send(a(x),b) 
end 

%% Tadasana

 % Wdech
for i=0:0.1:0.3
    x = 22
    b = rosmessage(a(x).MessageType)
    b.Data = (0+i)
    send(a(x),b) 
    pause(0.1)
end
for i=0:0.1:0.3
    x = 22
    b = rosmessage(a(x).MessageType)
    b.Data = 0.3-i
    send(a(x),b) 
    pause(0.1)
end
 % Rêce do do³u
for i=0:0.1:1.5
    x = 7
    b = rosmessage(a(x).MessageType)
    b.Data = 0+i
    send(a(x),b) 
 
    x = 8
    b = rosmessage(a(x).MessageType)
    b.Data = 0+i
    send(a(x),b) 
    pause(0.2)
end
% Wdech
for i=0:0.1:0.3
    x = 22
    b = rosmessage(a(x).MessageType)
    b.Data = (0+i)
    send(a(x),b) 
    pause(0.1)
end
for i=0:0.1:0.3
    x = 22
    b = rosmessage(a(x).MessageType)
    b.Data = 0.3-i
    send(a(x),b) 
    pause(0.1)
end
 % Rêce do góry
for i=0:0.1:3
    x = 7
    b = rosmessage(a(x).MessageType)
    b.Data = 1.5-i
    send(a(x),b) 
 
    x = 8
    b = rosmessage(a(x).MessageType)
    b.Data = 1.5-i
    send(a(x),b) 
    pause(0.2)
end
% Wdech
for i=0:0.1:0.3
    x = 22
    b = rosmessage(a(x).MessageType)
    b.Data = (0+i)
    send(a(x),b) 
    pause(0.1)
end
for i=0:0.1:0.3
    x = 22
    b = rosmessage(a(x).MessageType)
    b.Data = 0.3-i
    send(a(x),b) 
    pause(0.1)
end
 % pozycja starotowa
for i=0:0.1:1.5
    x = 7
    b = rosmessage(a(x).MessageType)
    b.Data = -1.5 +i
    send(a(x),b) 
 
    x = 8
    b = rosmessage(a(x).MessageType)
    b.Data = -1.5+i
    send(a(x),b) 
    pause(0.2)
end

%% Utkakasana
Wdech
for i=0:0.1:0.3
    x = 22
    b = rosmessage(a(x).MessageType)
    b.Data = (0+i)
    send(a(x),b) 
    pause(0.1)
end
% Rêce do góry
for i=0:0.1:1.5
    x = 7
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+i)
    send(a(x),b) 
 
    x = 8
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+i)
    send(a(x),b) 
    pause(0.2)
end

% Wdech
for i=0:0.1:0.3
    x = 22
    b = rosmessage(a(x).MessageType)
    b.Data = (0+i)
    send(a(x),b) 
    pause(0.1)
end
% Obrót barków

for i=0:0.1:0.2
    x = 14
    b = rosmessage(a(x).MessageType)
    b.Data = (0+i)
    send(a(x),b) 
   

    x = 15
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+i)
    send(a(x),b) 
    pause(0.1)
end
% sk³on
for i=0:0.01:0.5
    x = 18
    b = rosmessage(a(x).MessageType)
    b.Data = 0+2.85*i
    send(a(x),b) 

    x = 19
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+2.85*i)
    send(a(x),b) 
   
    
    x = 21
    b = rosmessage(a(x).MessageType)
    b.Data = 0 +2*i
    send(a(x),b) 

    x = 20
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+2*i)
    send(a(x),b) 
   
    
    x = 2
    b = rosmessage(a(x).MessageType)
    b.Data = 0 +0.5*i
    send(a(x),b) 

    x = 1
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+0.5*i)
    send(a(x),b) 
    pause(0.2)
    
end   
pause(5)
% Wdech
for i=0:0.05:0.3
    x = 22
    b = rosmessage(a(x).MessageType)
    b.Data = (0+i)
    send(a(x),b) 
    pause(0.1)
end
pause(5)


% Powrót do pozycji startowej
for i=0.5:-0.01:0
    x = 18
    b = rosmessage(a(x).MessageType)
    b.Data = 0+2.85*i
    send(a(x),b) 

    x = 19
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+2.85*i)
    send(a(x),b) 
   
    
    x = 21
    b = rosmessage(a(x).MessageType)
    b.Data = 0 +2*i
    send(a(x),b) 

    x = 20
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+2*i)
    send(a(x),b) 
   
    
    x = 2
    b = rosmessage(a(x).MessageType)
    b.Data = 0 +0.5*i
    send(a(x),b) 

    x = 1
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+0.5*i)
    send(a(x),b) 
    pause(0.2)
    
end   
% Powrót r¹k
for i=1.5:-0.1:0
    x = 7
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+i)
    send(a(x),b) 
 
    x = 8
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+i)
    send(a(x),b) 
    pause(0.2)
end
%% Modliszka

%prawa noga do klatki piersiowej
for i = 0:0.01:2.5
    
    x = 21
    b = rosmessage(a(x).MessageType)
    b.Data = 0+0.25*i*2
    send(a(x),b)
    
        
    x = 19
    b = rosmessage(a(x).MessageType)
    b.Data = 0-0.4*i*2
    send(a(x),b)
   
end
%rêce do góry
for i=0:0.1:1.5
    x = 7
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+i)
    send(a(x),b) 
 
    x = 8
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+i)
    send(a(x),b) 
    pause(0.2)
end

pause(1)
%powrót prawej nogi
for i = 2.5:-0.01:0
    
    x = 21
    b = rosmessage(a(x).MessageType)
    b.Data = 0+0.25*i
    send(a(x),b)
    
        
    x = 19
    b = rosmessage(a(x).MessageType)
    b.Data = 0-0.4*i
    send(a(x),b)
end
pause(2)
%lewa noga do klatki piersiowej
for i = 0:0.01:2.5
    
    x = 20
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+0.25*i*2)
    send(a(x),b)
    
        
    x = 18
    b = rosmessage(a(x).MessageType)
    b.Data = -(0-0.4*i*2)
    send(a(x),b)
   
end
pause(1)
%powrót lewej nogi 
for i = -2.5:0.01:0
    
    x = 20
    b = rosmessage(a(x).MessageType)
    b.Data = 0+0.25*i
    send(a(x),b)
    
        
    x = 18
    b = rosmessage(a(x).MessageType)
    b.Data = 0-0.4*i
    send(a(x),b)
   
end
pause(2)
%rêce do do³u
for i=1.5:-0.1:0
    x = 7
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+i)
    send(a(x),b) 
 
    x = 8
    b = rosmessage(a(x).MessageType)
    b.Data = -(0+i)
    send(a(x),b) 
    pause(0.2)
end