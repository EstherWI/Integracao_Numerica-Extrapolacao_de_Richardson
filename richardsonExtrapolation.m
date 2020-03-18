%Exemplo: funcao = log(2^x)+ cos(x); a=1; b=4 -> valor exato = 3.60033...

function I = richardsonExtrapolation(funcao,a,b,tipoRegra,N)

%A fun��o richardsonExtrapolation calcula uma integral definida de forma aproximada,
%buscando obter uma estimativa mais precisa a partir de duas estimativas menos precisas desta mesma integral.
%No caso dessa implementa��o, existem duas op��es de m�todos para a resolu��o da integral: 
%Regra Trapezoidal Composta e Regra 1/3 de Simpson Composta
%A fun��o richardsonExtrapolation � baseada no caso especial em que h2=h1/2, isto �, quando o
%intervalo de uma aproxima��o � a metade do intervalo da outra.
%Vari�veis de entrada:
%funcao que ser� integrada, string
%a limite inferior de integra��o
%b limite superior de integra��o
%tipoRegra a regra para encontrar as duas estimativas da integral, sendo a entrada 1
%para escolher a regra trapezoidal e 2 para escolher a regra 1/3 de simpson
%N n�mero de segmentos (n�vel de precis�o) da integra��o para gerar uma das estimativas utilizadas
%Sa�das:
%Resultado da integra��o

 if (tipoRegra == 1) %trapezoidal composta
     Ih1=trapezoidal(funcao,a,b,N);       %Estimativa com N intervalos
     Ih2=trapezoidal(funcao,a,b,N/2);    %Estimativa com N/2 intervalos
     disp('Regra Trapezoidal Composta');
     disp(['Resultado da estimativa h1: ' num2str(Ih1)]);
     disp(['Resultado da estimativa h2: ' num2str(Ih2)]);
     I=((2^2)*Ih1 - Ih2)/(2^2 -1);     %F�rmula geral para duas estimativas com erro de O(h^2) e h2=h1/2
 elseif (tipoRegra == 2) %1/3 de simpson
     Ih1=umtercoSimpson(funcao ,a,b,N);       %Estimativa com N intervalos
     Ih2=umtercoSimpson(funcao,a,b,N/2);    %Estimativa com N/2 intervalos
     disp('Regra 1/3 de Simpson Composta');
     disp(['Resultado da estimativa h1: ' num2str(Ih1)]);
     disp(['Resultado da estimativa h2: ' num2str(Ih2)]);
     I=((2^4)*Ih1 - Ih2)/(2^4 -1);     %F�rmula geral para duas estimativas com erro de O(h^4) e h2=h1/2
 else
     fprintf('Entrada referente ao tipo de regra de integra��o inv�lida');
 end
 
disp('-----------------------------------------------------------------');
disp(['Resultado da integral pela Extrapola��o de Richardson: ' num2str(I)]);