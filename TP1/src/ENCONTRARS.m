%descripton es un array en donde para cada elemento se especifica la
%cantidad de posibles valores que pueden tener (puede ir de 1 hasta
%infinito positivo)
%trainingSet es el conjunto de entrenamiento a utilizar
%Retorna un array con los valores de cada atributo, -1 si es nulo y 0 si es "?" 
function  hipotesis = ENCONTRARS( description,trainingSet )
    [rows, varQty]=size(description);
    [trainQty, result]=size(trainingSet);
    nullVal=-1;
    generalVal=0;
    hipotesis=repmat(nullVal,1,varQty);
    for i=1:trainQty
        if(trainingSet(i,result)>0)
            for j=1:varQty
               if(hipotesis(j)~=generalVal && trainingSet(i,j)~=hipotesis(j))
                   if(hipotesis(j)== nullVal)
                                hipotesis(j)=trainingSet(i,j);        
                   else
                           hipotesis(j)=generalVal;
                   end
               end
            end    
        end
        
    end
end

