function actionToTake = takeAction(cState)
    potentialAction = ceil(rand*4);
    while 0 == isActionValid(cState, potentialAction)
       potentialAction = ceil(rand*4);
    end
    actionToTake = potentialAction;
end