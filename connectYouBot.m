% File: connectYouBot.m
function [sim, clientID, jointHandles] = connectYouBot()
    sim = remApi('remoteApi');
    sim.simxFinish(-1); % just to close any existing connections
    
    % Change the port if needed
    clientID = sim.simxStart('127.0.0.1', 19000, true, true, 5000, 5);
    
    % Initialize a struct or container to store your joints
    jointHandles = struct();
    
    if clientID > -1
        disp('Connected to CoppeliaSim');
        
        [~, jointHandles.rollingJoint_rr] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rr', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.slippingJoint_rr] = sim.simxGetObjectHandle(clientID, 'slippingJoint_rr', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.rollingJoint_rl] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rl', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.slippingJoint_rl] = sim.simxGetObjectHandle(clientID, 'slippingJoint_rl', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.joint] = sim.simxGetObjectHandle(clientID, 'joint', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.slippingJoint_fl] = sim.simxGetObjectHandle(clientID, 'slippingJoint_fl', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.rollingJoint_fr] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fr', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.slippingJoint_fr] = sim.simxGetObjectHandle(clientID, 'slippingJoint_fr', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.youBotArmJoint0] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint0', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.youBotArmJoint1] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint1', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.youBotArmJoint2] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint2', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.youBotArmJoint3] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint3', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.youBotArmJoint4] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint4', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.youBotGripperJoint1] = sim.simxGetObjectHandle(clientID, 'youBotGripperJoint1', sim.simx_opmode_oneshot_wait);
        [~, jointHandles.youBotGripperJoint2] = sim.simxGetObjectHandle(clientID, 'youBotGripperJoint2', sim.simx_opmode_oneshot_wait);

    else
        disp('Connection failed');
    end
end
