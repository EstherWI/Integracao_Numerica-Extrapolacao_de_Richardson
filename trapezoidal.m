function I=trapezoidal(funcao,a,b,N)
%A fun��o trapezoidal calcula a integral atrav�s da regra do Trap�zio
%Composta
%Vari�veis de entrada:
%funcao que ser� integrada, string
%a limite inferior de integra��o
%b limite superior de integra��o
%N n�mero de intervalos
%Vari�vel de sa�da:
%Resultado da integra��o

if (N==0);
    fprintf('Erro. Divis�o por zero');
elseif (N<0);
    fprintf('Intervalo Inv�lido');
else
    h = (b-a)/N;  %calcula a largura do intervalo
    func=str2func(['@(x)' funcao]); %transforma string numa funcao
    y = a:h:b;    %cria um vetor com as coordenadas dos subintervalos
    
    for i=1:N+1
        F(i)=func(y(i));
    end
    I=h*(F(1)+F(N+1))/2+h*sum(F(2:N)); %formula geral da regra dos trapezios composta
end