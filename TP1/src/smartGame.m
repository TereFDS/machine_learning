function smartGame()
board=zeros(3,3);
    i=0;
    winner=0;
    while(i<9 && winner==0)
        
        
        [row,col]=smartPosition(board,player);
        disp('movement');
        disp([row,col]);
        if( mod(i,2)==0)
            player=1;
        else
            player= -1;
        end
         [row,col]=smartPosition(board,player);
   
         board=moveTicTacToe(board,row,col,player);
        
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


function [row, col]= smartPosition(board,player)
[rows, cols]=size(board);
if(player==-1)
   [row, col]=pcMove(board,player);
    return;
end

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