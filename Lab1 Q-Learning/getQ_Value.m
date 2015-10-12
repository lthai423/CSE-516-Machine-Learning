function qValue = getQ_Value(nextState)
    global discount
    qValue = getImmediateReward(nextState) + (discount * getV(nextState));
end