function maxValue = getMaxValue(cState)
    global vTable
    tempStorage = vTable(cState, 1);
    for i=2:4
        if tempStorage < vTable(cState, i)
            tempStorage = vTable(cState, i);
        end
    end
    maxValue = tempStorage;
end %taking max value of matrix at a row