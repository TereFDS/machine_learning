function score=fixedEvaluation(board,row,col,player)
    [rows cols]= size(board);
    score=0;
    enemy= (-1)*player;
    for i=1:rows
        auxi=sum(board(i,:)==enemy);
        if(auxi==2)
            if(row==i)
                score=score+10;
            else
                score=score -20; 
            end
        end
    end
    
    for i=1:cols
        auxi=sum(board(:,i)==enemy);
        if(auxi==2)
            if(col==i)
                score=score+10;
            else
                score=score -20; 
            end
        end
    end

    diag=[board(1,1),board(2,2),board(3,3) ];
     auxi=sum(diag==enemy);
     if(auxi==2)
        if(row==col)
            score=score+10;
        else
            score=score -20;
        end
     end
    
     diag=[board(1,3),board(2,2),board(3,1) ];
     auxi=sum(diag==enemy);
     if(auxi==2)
         if(row+col==4)
            score=score+10;
        else
            score=score -20;
        end
     end

end