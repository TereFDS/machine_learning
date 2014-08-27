function ejercicio5()

varQty=6;

%ejercicio 5.a
trainingSet=[1,1,1,1,1,1,1 ; 1,1,2,1,1,1,1 ;2,2,2,1,1,2,-1 ; 1,1,2,1,2,2,1];

resultado=DISFRUTADEPORTE(trainingSet);
disp(resultado);


%ejercicio 5.b

description=[3,2,2,2,2,2];

funcionObjetivo=[1,1,0,0,0,0];
trainingQtyAverage=0;
for j=1:20
    trainingQty=4;
    rightnessPercentage=0;
    while(rightnessPercentage==0 && trainingQty<prod(description))
        trainingQty=trainingQty+1;
        trainingSet=zeros(trainingQty,varQty+1);
        trainingSetChosen=zeros(1,trainingQty);
       
        % se crea conjunto de entrenamiento aleatorio
        for i=1:trainingQty
        
            auxi=[randi(3,1,1) randi(2,1,5)];            
            trainKey=generateKey(auxi);
            while(sum(trainingSetChosen==trainKey)~=0)
                auxi=[randi(3,1,1) randi(2,1,5)];
                trainKey=generateKey(auxi);
            end
            if(auxi(1)==funcionObjetivo(1) && auxi(2)==funcionObjetivo(2))
               result=1;
            else
                result=(-1);
            end
            trainingSet(i,:)=[auxi result];
            trainingSetChosen(i)=trainKey;
            
        end
        
%        disp('trainingSet');
%        disp(trainingSet);
        resultado=ENCONTRARS(description,trainingSet);
%        disp(resultado);
        
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
    if(rightnessPercentage~=0)
       disp('Cantidad minima de muestras necesarias: ');
       disp(trainingQty);
       trainingQtyAverage=trainingQtyAverage+trainingQty;
    end
end

trainingQtyAverage=trainingQtyAverage/20;
disp('Promedio de cantidad de muestras necesarias: ');
disp(trainingQtyAverage);

end


%genera una clave unica para cada muestra de entrenamiento (se usa para
%evitar que haya inconsistencias)
function number=generateKey(trainExample)
    primes=[2,3,5,7,11,13];
    primesQty=6;
    number=0;
    for i=1:primesQty
       number=number+(primes(i))*(trainExample(i)); 
        
    end
    

end