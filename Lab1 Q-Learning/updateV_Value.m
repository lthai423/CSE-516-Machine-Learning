function updateV_Value(cState, v_Value, nextActionToTake)
    global vTable;
    global incompPolicyTable
    
    if v_Value > getV(cState)
        vTable(cState) = v_Value;
        incompPolicyTable(cState) = nextActionToTake;
    end 
end