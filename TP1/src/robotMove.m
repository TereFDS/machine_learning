function [row, col]=robotMove(board,player,weights)
[rows, cols]=size(board);
    row= -1;
    col= -1;
    maxScore= -1;
    for i=1:rows
       for j=1:cols
           if(board(i,j)==0)
               board=moveTicTacToe(board,row,col,player);
              actualScore=(weights(2:5)')*calculateStats(board,player);
              board(i,j)=0; %deshago el movimiento hecho
              if(row== -1 && col== -1)
                 row=i;
                 col=j;
                 maxScore=actualScore;
              else
                 if(maxScore<actualScore)
                    row=i;
                    col=j;
                    maxScore=actualScore;
                 end
              end
           end
       end
    end

end