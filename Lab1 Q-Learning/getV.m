function V = getV(selectedState, nextActionToTake)
    global vTable
    display(selectedState)
    V = vTable(selectedState, nextActionToTake);
end