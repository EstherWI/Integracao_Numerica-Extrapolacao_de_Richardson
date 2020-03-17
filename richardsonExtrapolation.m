function I = richardsonExtrapolation(funcao,a,b,tipoRegra,N)

%A fun��o richardsonExtrapolation calcula uma integral definida de forma aproximada,
%buscando obter uma estimativa mais precisa a partir de duas estimativas menos precisas desta mesma integral.
%No caso dessa implementa��o, existem duas op��es de m�todos para a resolu��o da integral: 
%Regra Trapezoidal Composta e Regra 1/3 de Simpson Composta
%Essa fun��o � baseada no caso especial em que h2=h1/2, isto �, quando o
%intervalo de uma aproxima��o � a metade do intervalo da outra.
%Vari�veis de entrada:
%funcao que ser� integrada, string
%a limite inferior de integra��o
%b limite superior de integra��o
%tipoRegra a regra para encontrar as duas estimativas da integral, sendo a entrada 1
%para escolher a regra trapezoidal e 2 para escolher a regra 1/3 de simpson
%N n�mero de segmentos (n�vel de precis�o) da integra��o para gerar uma das estimativas utilizadas
%Vari�vel de sa�da:
%Resultado da integra��o

 if (tipoRegra == 1) %trapezoidal composta
     In=trapezoidal(funcao,a,b,N);       %Estimativa com N intervalos
     I2n=trapezoidal(funcao,a,b,2*N);    %Estimativa com 2N intervalos
     
 elseif (tipoRegra == 2) %1/3 de simpson
     In=umtercoSimpson(funcao,a,b,N);       %Estimativa com N intervalos
     I2n=umtercoSimpson(funcao,a,b,2*N);    %Estimativa com 2N intervalos
 else
     fprintf('Entrada do tipo de regra de integra��o inv�lida');
 end
 
I=(2^2*I2n - In)/(2^2 -1);     %F�rmula geral para duas estimativas com erro de mesma ordem e h2=h1/2
