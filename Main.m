%Esse � o arquivo principal e cont�m alguns exemplos de integra��es para a compara��o dos
%seus valores exatos e o valor encontrado com a extrapola��o

%Exemplo1 -> valor exato = 3.60033... 
funcao = 'log(2^x) + cos(x)'; a=1; b=4; tipoRegra=1; N=8; %(utilizando regra dos trap�zios composta)


%Exemplo2 -> valor exato = 1.640533
%funcao = '0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5' ; a=0; b=0.8; tipoRegra=2; N=8; %(utilizando regra 1/3 de simpson composta)




richardsonExtrapolation(funcao,a,b,tipoRegra,N)
%Vari�veis de entrada:
%funcao fun��o que ser� integrada, string 
%a limite inferior de integra��o
%b limite superior de integra��o
%tipoRegra a regra para encontrar as duas estimativas da integral, sendo a entrada 1
%para escolher a regra trapezoidal e 2 para escolher a regra 1/3 de simpson
%N n�mero de segmentos (n�vel de precis�o) da integra��o para gerar uma das estimativas utilizadas
