function  hipotesis = ENCONTRARS( description,trainingSet )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [rows varQty]=size(description);
    [trainQty result]=size(trainingSet);
    nullVal=-1;
    generalVal=0;
    hipotesis=repmat(nullVal,1,varQty);
    for i=1:trainQty
        if(trainingSet(i,result)>0)
            for j=1:varQty
               if(hipotesis(j)~=generalVal && trainingSet(i,j)~=hipotesis(j))
                   switch hipotesis(j)
                       case nullVal
                                hipotesis(j)=trainingSet(i,j);
                                    break;
                       otherwise
                           hipotesis(j)=generalVal;
                   end
               end
            end    
        end
    end
end

