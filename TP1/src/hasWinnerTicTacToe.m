function answer=hasWinnerTicTacToe(board )
    [rows, cols]=size(board);
    for i=1:rows
        auxi=sum(board(i,:));
        if(auxi==3)
            answer=1;
            return;
        end
        if(auxi==(-3)) 
            answer=(-1);
            return;
        end
    end    
    
    for i=1:cols
        auxi=sum(board(:,i));
        if(auxi==3)
            answer=1;
            return;
        end
        
        if(auxi==(-3))
            answer=(-1);
            return;
        end
    end   
    
    if(board(1,1)==board(2,2) && board(2,2)==board(3,3) && board(3,3)~=0)
        answer=board(1,1);
        disp('detectada diagonal');
        return;
    end

    if(board(1,3)==board(2,2) && board(2,2)==board(3,1)&& board(3,1)~=0)
        answer=board(1,3);
        disp('detectada otra diagonal');
        return;
    end
    
    answer=0;
    
end