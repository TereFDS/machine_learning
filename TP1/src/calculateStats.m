%stats es un array formado por x1 ...x4
function stats=calculateStats(board,player)
    stats=zeros(1,4);
    [rows, cols]=size(board);
    enemy=player*(-1);
    stats(1,1)=sum(sum(board==player));
    stats(1,2)=sum(sum(board==enemy));
    for i=1:rows
        auxi=sum(board(i,:));
        if (auxi*player==2 )
            if(board(i,2)~=0)
                %x3
                stats(1,3)=stats(1,3)+1;
            end
        elseif (auxi*enemy==2)
            if(board(i,2)~=0)
                %x4
                stats(1,4)=stats(1,4)+1;
            end

        end
    end    
    
    for i=1:cols
        auxi=sum(board(:,i));
        if (auxi*player==2)
            if(board(i,2)~=0)
                %x3
                stats(1,3)=stats(1,3)+1;
            end
        elseif (auxi*enemy==2)
               if(board(i,2)~=0)
                %x4
                stats(1,4)=stats(1,4)+1;
            end
        end

    end   
    
    diag=[board(1,1),board(2,2),board(3,3)];
    auxi=sum(diag);
    if (auxi*player==2)
            if(board(2,2)~=0)
                %x3
                stats(1,3)=stats(1,3)+1;
            end
        elseif (auxi*enemy==2)
            if(board(2,2)~=0)
                %x4
                stats(1,4)=stats(1,4)+1;
            end
    end
    
    diag=[board(1,3),board(2,2),board(3,1)];
    auxi=sum(diag);
    if (auxi*player==2)
            if(board(2,2)~=0)
                %x3
                stats(1,3)=stats(1,3)+1;
            end
        elseif (auxi*enemy==2)
            if(board(2,2)~=0)
                %x4
                stats(1,4)=stats(1,4)+1;
            end
    end
        
end