%Utiliza la funcion ENCONTRARS para resolver el problema DISFRUTADEPORTE, y
%mostrar la hipotesis resultado de manera legible 
function hipotesisSolution= DISFRUTADEPORTE(trainingSet)
   description=[3,2,2,2,2,2];
   nullVal=-1;
    generalVal=0;
   
    hipotesis=ENCONTRARS(description,trainingSet); 
    
    textCell=cell(3,6);
    %descripcion de cielo
    textCell(1,1)=java.lang.String('soleado');
    textCell(2,1)=java.lang.String('nublado');
    textCell(3,1)=java.lang.String('lluvioso');
    %descripcion del aire
    textCell(1,2)=java.lang.String('cálida');
    textCell(2,2)=java.lang.String('fría');
    %descripcion de humedad
    textCell(1,3)=java.lang.String('normal');
    textCell(2,3)=java.lang.String('alta');
    %descripcion de viento
        textCell(1,4)=java.lang.String('fuerte');
    textCell(2,4)=java.lang.String('débil');
    %descripcion de agua
    textCell(1,5)=java.lang.String('cálida');
    textCell(2,5)=java.lang.String('fría');
    %descripcion de pronostico
    textCell(1,6)=java.lang.String('igual');
    textCell(2,6)=java.lang.String('cambiante');
    [r, variablesQty]=size(hipotesis);
    hipotesisSolution=cell(1,variablesQty);
    for i=1: variablesQty
        if(hipotesis(i)==nullVal)
              hipotesisSolution(1,i)=java.lang.String('0');
                        
        elseif (hipotesis(i)==generalVal) 
                        hipotesisSolution(i)=java.lang.String('?');
                        
        else
            hipotesisSolution(1,i)=textCell(hipotesis(i),i);
       
        end
    end
end

