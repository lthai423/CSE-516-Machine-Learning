function maxValue = getPolicyTable(qMatrix, ySize, xSize, target, listOfObstacles)
    grid = zeros(ySize, xSize);
    for i=1:ySize*xSize
       tempValue = qMatrix(i, 1);
       temp = 1;
       for j = 2: 4
           if tempValue < qMatrix(i, j)
               tempValue = qMatrix(i, j);
               temp = j;
           end
       end
       grid(i) = temp;
       
    end
    grid(target) = inf;
    for k = 1:length(listOfObstacles)
       grid(listOfObstacles(k)) = -inf;
    end
    maxValue = grid;
    
end