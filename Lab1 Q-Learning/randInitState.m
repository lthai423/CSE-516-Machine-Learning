function randomInitialState = randInitState
    global tState xSize ySize
    x = ceil(rand*(xSize*ySize));
    if tState == x %initial state == targetState recursively call initstate
       randomInitialState = randInitState;
    else
        randomInitialState = x;
    end
end