function instantiateGlobalVars(THISySize, THISxSize, gamma, targetState)
    global UP DOWN RIGHT LEFT
    global xSize ySize
    global discount tState
    tState = targetState;
    discount = gamma;
    xSize = THISxSize;
    ySize = THISySize;
    UP = -1;
    DOWN = 1;
    RIGHT = xSize;
    LEFT = -xSize;
    global incompPolicyTable vTable
    vTable = zeros(ySize, xSize); 
    incompPolicyTable = zeros(ySize, xSize); %instantiate default policy
end