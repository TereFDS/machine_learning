%funcion de evaluacion fija (contrincante del robot que esta aprendiendo)
function [row, col]=pcMove(board,player)
    [rows, cols]=size(board);
    row= -1;
    col= -1;
    maxScore= -1;
    for i=1:rows
       for j=1:cols
           if(board(i,j)==0)
              actualScore=fixedEvaluation(board,i,j,player);
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
