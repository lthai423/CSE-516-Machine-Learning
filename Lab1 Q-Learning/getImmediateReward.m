function reward = getImmediateReward(cState)
    global tState listOfObstacles
    if isempty(find(tState == cState, 1)) == 0
        reward = 100; 
    elseif isempty(find(listOfObstacles == cState, 1)) == 0
        reward = -1000;
    else
        reward = 0;
        
    end
end