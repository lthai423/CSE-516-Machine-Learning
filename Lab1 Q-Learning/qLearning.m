function policyTable = qLearning(nIterations, xSize, ySize, targetState, learningRate, listOfObstacles)
    global incompPolicyTable
    instantiateGlobalVars(ySize, xSize, learningRate, targetState, listOfObstacles)
    for n = 1:nIterations
        display(n)
        cState = randInitState; % use random initState function
        while cState ~= targetState
                nextActionToTake = takeAction(cState); % isActionValid()
                nextState = getNextState(cState, nextActionToTake);
                qValue = getQ_Value(nextState);
                updateV_Value(cState, qValue, nextActionToTake) % if needed
                cState = nextState;
        end
    end
    for i = 1:length(listOfObstacles)
       incompPolicyTable(listOfObstacles(i)) = -inf;
    end
    policyTable = incompPolicyTable;
end
