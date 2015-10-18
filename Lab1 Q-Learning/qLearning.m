function policyTable = qLearning(nIterations, xSize, ySize, targetState, learningRate, listOfObstacles)
    global vTable
    instantiateGlobalVars(ySize, xSize, learningRate, targetState, listOfObstacles)
    for n = 1:nIterations
        cState = randInitState;
        while isempty(find(targetState == cState, 1)) == 1
                nextActionToTake = takeAction(cState);
                nextState = getNextState(cState, nextActionToTake);
                getQ_Value(nextState, nextActionToTake, cState);
                cState = nextState;
        end
    end
    policyTable = vTable;
end
