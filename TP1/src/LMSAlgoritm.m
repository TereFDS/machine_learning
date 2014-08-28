function weights=LMSAlgoritm(trainingMatrix,weights)
    n=0.1; %factor de aprendizaje
    [trainingQty, colTrain]=size(trainingMatrix);
    
    for i=1:trainingQty
        vn=weights(1,1)+weights(1,2:end)*(trainingMatrix(i,1:4)');
        weights(1,:)=weights(1,:)+n*(trainingMatrix(i,end)-vn)*[1 trainingMatrix(i,1:4)];
    end
    
end