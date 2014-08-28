%stats es un array formado por x1 ...x5
function stats=calculateStats(board,player)
    stats=zeros(1,5);
    [rows, cols]=size(board);
    enemy=player*(-1);
    
    for i=1:rows
        auxi=sum(board(i,:));
        if(auxi*player==3)
            %tateti propio
            stats(1,1)=stats(1,1)+1;
        
        elseif(auxi*enemy==3) 
            %tateti propio
            stats(1,2)=stats(1,2)+1;
        elseif (auxi*player==2)
            %posible tateti propio
            stats(1,3)=stats(1,3)+1;
        elseif (auxi*enemy==2)
            %posible tateti del contrincante
            stats(1,4)=stats(1,4)+1;
        end
    end    
    
    for i=1:cols
        auxi=sum(board(:,i));
        if(auxi*player==3)
            %tateti propio
            stats(1,1)=stats(1,1)+1;
        
        elseif(auxi*enemy==3) 
            %tateti propio
            stats(1,2)=stats(1,2)+1;
        elseif (auxi*player==2)
            %posible tateti propio
            stats(1,3)=stats(1,3)+1;
        elseif (auxi*enemy==2)
            %posible tateti del contrincante
            stats(1,4)=stats(1,4)+1;
        end

    end   
    
    diag=[board(1,1),board(2,2),board(3,3)];
    auxi=sum(diag);
    if(auxi*player==3)
            %tateti propio
            stats(1,1)=stats(1,1)+1;
        
        elseif(auxi*enemy==3) 
            %tateti propio
            stats(1,2)=stats(1,2)+1;
        elseif (auxi*player==2)
            %posible tateti propio
            stats(1,3)=stats(1,3)+1;
        elseif (auxi*enemy==2)
            %posible tateti del contrincante
            stats(1,4)=stats(1,4)+1;
    end
    
    diag=[board(1,3),board(2,2),board(3,1)];
    auxi=sum(diag);
    if(auxi*player==3)
            %tateti propio
            stats(1,1)=stats(1,1)+1;
        
        elseif(auxi*enemy==3) 
            %tateti propio
            stats(1,2)=stats(1,2)+1;
        elseif (auxi*player==2)
            %posible tateti propio
            stats(1,3)=stats(1,3)+1;
        elseif (auxi*enemy==2)
            %posible tateti del contrincante
            stats(1,4)=stats(1,4)+1;
    end
    
 
    stats(1,5)=sum(sum(board~=0)); %calculando cantidad de fichas del tablero
    
end