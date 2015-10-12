function reward = getImmediateReward(cState)
    global tState listOfObstacles
    if cState == tState
        reward = 100;
    else 
        reward = 0;
    end
    for i = 1:length(listOfObstacles)
        if listOfObstacles(i) == cState
            reward = -1000;
        end
    end
end