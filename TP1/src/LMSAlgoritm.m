function weights=LMSAlgoritm(trainingMatrix,weights)
    n=0.1; %factor de aprendizaje
    [trainingQty colTrain]=size(trainingMatrix);
    
    for i=1:trainingQty
        vn=weights(1,1)+weights(1,2:end)*(trainingMatrix(i,1:5)');
        (trainingMatrix(i,end)-vn)
        n*(trainingMatrix(i,end)-vn)*trainingMatrix(i,1:5)
        weights(1,2:end)=weights(1,2:end)+n*(trainingMatrix(i,end)-vn)*trainingMatrix(i,1:5);
        
    end
    
end