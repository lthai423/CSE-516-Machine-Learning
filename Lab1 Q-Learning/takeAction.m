function actionToTake = takeAction(cState)
    potentialAction = ceil(rand*4);
    while 1 ~= isActionValid(cState, potentialAction)
       potentialAction = ceil(rand*4);
    end
    actionToTake = potentialAction;
end