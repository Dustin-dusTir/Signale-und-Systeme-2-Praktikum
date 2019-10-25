%% Test: Anzahl ben�tigter Iterationen in Abh�nigkeit der Boxgr��e
varCount = 100;  
arrIterations1x1x1 = zeros(1,varCount);
arrIterations2x2x2 = zeros(1,varCount);
arrIterations10x10x10 = zeros(1,varCount);
arrIterationError = -1 * ones(1,varCount);

arrErrors = [];
arrAvgErrors = [];
arrDigitalisierungsfehler = linspace(0/100000, 1/100000 , 11  );
    %%Test fuer Fehler Rechnung
for digitalisierungsfehler = arrDigitalisierungsfehler
    arrErrors = [];
    for i = 1:varCount
        fly = bornFly(10,10,10);
        BrundleFly;
        setDerivatives(TimeDivs);
        gM = [0.5,0.5,0];
        [cM, iteration] = SolveRecursiv (gM, 0);
        if iteration > -1
            arrErrors = [arrErrors (norm((cM - fly')))];            
        end
    end
    avgError = mean(arrErrors, 'all');
    arrAvgErrors = [arrAvgErrors avgError];
end

%% other Tests
%{  
      
     for i = 1:varCount
        
       fly = bornFly(1,1,1);
       BrundleFly;
       setDerivatives(TimeDivs);
       gM = [0.5,0.5,0];
       [gM iteration] = SolveRecursiv (gM, 0);
       arrIterations1x1x1 = [arrIterations1x1x1 iteration];
    end
    
      arrIterations2x2x2 = [];
    for i = 1:varCount
       fly = bornFly(2,2,2);
       BrundleFly;
       setDerivatives(TimeDivs);
       gM = [0.5,0.5,0.5];
       [gM iteration] = SolveRecursiv (gM, 0);
       
       arrIterations2x2x2 = [arrIterations2x2x2 iteration];
    end
    

     arrIterations10x10x10 = [];
    for i = 1:varCount
       fly = bornFly(10,10,10);
       BrundleFly;
       setDerivatives(TimeDivs);
       gM = [0.5,0.5,0.5];
       [gM iteration] = SolveRecursiv (gM, 0);
       
       arrIterations10x10x10 = [arrIterations10x10x10 iteration];
    end
  

    x = 1:varCount;

%{
mic0 = [0   0   1];
mic1 = [1   0   0];
mic2 = [0   1   0];
mic3 = [1   1   0];

 for i = 1:varCount
        
       fly = bornFly(1,1,1);
       BrundleFly;
       setDerivatives(TimeDivs);
       gM = [0,0,0];
       [gM iteration] = SolveRecursiv (gM, 0);
       
       arrIterations0_1 = [arrIterations0_1 iteration];
    end

%}
%}