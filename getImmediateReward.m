function reward = getImmediateReward(cState)
    global tState
    if cState == tState
        reward = 1000;
    else 
        reward = 0;
    end
end