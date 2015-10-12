function nextState = getNextState(cState, nextActionToTake)
    global UP DOWN RIGHT LEFT
    if nextActionToTake == 1
        nextState = cState + UP;
    elseif nextActionToTake == 2
        nextState = cState + RIGHT;
    elseif nextActionToTake == 3
        nextState = cState + DOWN;
    else
        nextState = cState + LEFT;
    end
end