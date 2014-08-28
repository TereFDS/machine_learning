
%asigna a cada muestra un score
% si gana es +100
% si pierde es -100
% si empata es 0
% sino, se da lo del sucesor y todo eso
function trainingMatrix=trainingPair(trainingMatrix, board,player,weights)

stats=calculateStats(board,player);
[rowsTraining, colsTraining]=size(trainingMatrix);
enemy=player*(-1);
score=0;
if (stats(1,1)>0)
    
    score=100;
    
elseif(stats(1,2)>0)
    
    score=(-100);
    
elseif(stats(1,5)==9)
    
    score=0;
    
else
    [rowEnemy colEnemy]=pcMove(board,enemy);
    boardAuxi=moveTicTacToe(board,rowEnemy,colEnemy,enemy);
    stats=calculateStats(boardAuxi,player);
    score=0;
    if (stats(1,1)>0)
        
        score=100;
        
    elseif(stats(1,2)>0)
        
        score=(-100);
        
    elseif(stats(1,5)==9)
        
        score=0;
        
    else
        score=weights(1,1)+weights(1,2:end)*(stats');
    end
end

trainingMatrix(rowsTraining+1,:)=[stats score];
end

