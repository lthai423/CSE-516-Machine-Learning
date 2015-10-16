function instantiateGlobalVars(THISySize, THISxSize, gamma, targetStates, listObstacles)
    global UP DOWN RIGHT LEFT
    global xSize ySize
    global discount tState
    tState = targetStates;
    discount = gamma;
    xSize = THISxSize;
    ySize = THISySize;
    UP = -1;
    DOWN = 1;
    RIGHT = ySize;
    LEFT = -ySize;
    global incompPolicyTable vTable listOfObstacles
    vTable = zeros(ySize*xSize, 4); 
    incompPolicyTable = zeros(ySize, xSize); %instantiate default policy
    listOfObstacles = listObstacles;
    incompPolicyTable(tState) = inf;
end