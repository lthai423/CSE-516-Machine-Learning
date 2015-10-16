function getQ_Value(nextState, nextActionToTake, cState)
    global discount vTable
    vTable(cState, nextActionToTake) = getImmediateReward(nextState) + ...
        (discount * getMaxValue(nextState));
end