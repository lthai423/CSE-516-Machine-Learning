function isValid = isActionValid(cState, potentialAction)
    global RIGHT ySize xSize
    if potentialAction == 1 && mod(cState - 1, xSize) ~= 0
        isValid = 1;
    elseif potentialAction == 2 && cState + RIGHT < xSize*ySize
        isValid = 1;
    elseif potentialAction == 3 &&  mod(cState, xSize) ~= 0 % or cState/ySize < 1
        isValid = 1;
    elseif potentialAction == 4 &&  cState > xSize
        isValid = 1;
    else
        isValid = 0;
    end
end