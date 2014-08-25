function [trainingBoards, result]=systemPerformance(board,weights)
    
    trainingBoards={};
    i=0;
    result=0;
    while(i<9 && result==0)
        
        if( mod(i,2)==0)
            player=1;
        else
            player= -1;
        end
         [row,col]=smartPosition(board,player,weights);
   
         board=moveTicTacToe(board,row,col,player);
         
        i=i+1;
        disp(i);
        showBoard(board);
        [trainRows, trainCols]=size(trainingBoard);
        trainingBoard(trainRows+1,trainCols)={calculateStats(board,player)};
        result=hasWinnerTicTacToe(board);
    end
    
    if(result==1)
        disp('X es el ganador');
    end
    
    if(result==(-1))
        disp('O es el ganador');
    end
    
    if(result==0)
        disp('Empate');
    end
end


function [row, col]= smartPosition(board,player,weights)
[rows, cols]=size(board);
if(player==-1)
   [row, col]=pcMove(board,player);
    return;
else
    [row, col]=robotMove(board,player,weights);
end

end

function showBoard(board)
    for i=1:3
       disp(board(i,:));
    end

end