%Sistema de aprendizaje. Ejecutar esta funcion para el ejercicio 3.

function learningSystem()
    maxIterations=200;
    weights=rand(1,5);
    player=1; %player es el aprendiz
    results=zeros(1,maxIterations);
    for i=1:maxIterations
        board=experimentGenerator(weights);
        [trainingBoards, result]=systemPerformance(board,weights);
        [boardsQty, boardsCol]=size(trainingBoards);
        trainingMatrix=[]; %almacena estados de un juego con su respectivo puntaje
        for j=1:boardsQty
            trainingMatrix=trainingPair(trainingMatrix,trainingBoards{j,boardsCol},player,weights);
        end
        
        weights=LMSAlgoritm(trainingMatrix,weights);
        if(i==1)
            results(i)=result;
        else
            results(i)=(results(i-1)*(i-1)+result)/i;
        end
    end
    plot([1:maxIterations],results,'o');
end