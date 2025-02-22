clear all; clc; close all;

sim = remApi('remoteApi');
sim.simxFinish(-1);
clientID = sim.simxStart('127.0.0.1', 19000, true, true, 5000, 5);

%% Confirm connection
if clientID > -1
    disp('Connected to CoppeliaSim');
else
    disp('Failed to connect');
end

%% Fetch YouBoy joint handles

%% ...

