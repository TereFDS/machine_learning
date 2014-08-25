function weights=LMSAlgoritm(trainingMatrix,weights)
    n=0.1; %factor de aprendizaje
    [trainingQty colTrain]=size(trainingMatrix);
    
    for i=1:trainingQty
        vn=weights*(trainingMatrix(i,1:5)');
        weights=weights+n*(trainingMatrix(i,6)-vn);
        
    end
    
end