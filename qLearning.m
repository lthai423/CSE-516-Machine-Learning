function policyTable = qLearning(nIterations, xSize, ySize, targetState, initState, learningRate)
    global incompPolicyTable vTable
    instantiateGlobalVars(ySize, xSize, learningRate, targetState)
    for n = 1:nIterations
        cState = initState; % use random initState function
        while cState ~= targetState
                nextActionToTake = takeAction(cState); % isActionValid()
                nextState = getNextState(cState, nextActionToTake);
                qValue = getQ_Value(nextState);
                updateV_Value(cState, qValue, nextActionToTake) % if needed
                cState = nextState;
        end
    end
    policyTable = incompPolicyTable;
    %policyTable = vTable;
end
