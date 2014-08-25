function randomGame()
    board=zeros(3,3);
    i=0;
    winner=0;
    while(i<9 && winner==0)
        
        
        [row,col]=randomPosition(board);
        disp('movement');
        disp([row,col]);
        if( mod(i,2)==0)
            
            board=moveTicTacToe(board,row,col,1);
        else
            board=moveTicTacToe(board,row,col,-1);
        end
        i=i+1;
        disp(i);
        showBoard(board);
        winner=hasWinnerTicTacToe(board);
    end
    
    if(winner==1)
        disp('X es el ganador');
    end
    
    if(winner==(-1))
        disp('O es el ganador');
    end
    
    if(winner==0)
        disp('Empate');
    end
end


function [row, col]= randomPosition(board)
[rows, cols]=size(board);
row=randi(rows);
col=randi(cols);
while(board(row,col)~=0)
    row=randi(rows);
    col=randi(cols);
end
end

function showBoard(board)
    for i=1:3
       disp(board(i,:));
    end

end