function ejercicio5(trainingQty)
    
    varQty=6;
    
    %ejercicio 5.a
    trainingSet=[1,1,1,1,1,1,1 ; 1,1,2,1,1,1,1 ;2,2,2,1,1,2,-1 ; 1,1,2,1,2,2,1];
        
    resultado=DISFRUTADEPORTE(trainingSet);
    disp(resultado);
    
    %conjunto de entrenamiento aleatorio
    description=[3,2,2,2,2,2];
    rightnessPercentage=0;
    for j=1:20
        
        trainingSet=zeros(trainingQty,varQty+1);
        for i=1:trainingQty
            result=randi(2,1,1);
            if(mod(result,2)==0)
                result=1;
            else
                result=(-1);
            end
            
            trainingSet(i,:)=[randi(3,1,1) randi(2,1,5) result];
            
            
        end
        disp('trainingSet');
        disp(trainingSet);
        resultado=ENCONTRARS(description,trainingSet);
        disp(resultado);
        
        funcionObjetivo=[1,1,0,0,0,0];
        equals=true;
        for k=1:varQty
            if(funcionObjetivo(1,k)~=resultado(1,k))
                equals=false;
            end  
        end
        if(equals==true)
            rightnessPercentage=rightnessPercentage+1;
        end
    end
    
    rightnessPercentage=rightnessPercentage/20
    

end