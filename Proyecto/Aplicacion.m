%% Entrenamiento de un sistema difuso para la predicción de un prestamo bancario 
%con entradas edad, salario y capacidad de pago empleando algoritmo
%genetico

%% Conf 1: 14,Conf 2: 93, Conf 3: 172, Conf 4: 251
%% Configuracion basica del algoritmo genetico
close all
clear all
warning off

%Opciones
%options = optimset('Display','iter','MaxIter',18);
options = optimset('Display','iter','MaxIter',18);

%% Valores iniciales CONFIGURACION 1
 difuso = [21 74 18 21 18 60 18 74 248 800 248 400 248 600 248 800 5 300 5 75 5 150 5 200 0 45 2 12 20 17 30 45 0 25 0 3 6 5 11 18 16 19 22]

% Simulacion para plazo

%Función de minimización fminunc para plazo
[difuso,fval,exitflag,output] = fminunc(@JobjetivoPl,difuso,options);

%Sistema difuso optimizado
FIS = sisdifuso(difuso);

%Datos para comprobación
X = [ecgEdad...
    ecgSalario...
    ecgCapacidad]

Y = [xlsread('datosBanco.xlsx','Analisis','D3:D53')]

%Evaluación del sistema difuso
yd = evalfis(X,FIS);
yd = yd(:,1)

% para llenar tabla de datos
clear std min max;
%Error obtenido
error=Y-yd;

% Minimo
min = min(error)

% Maximo
max = max(error)

% MSE
msePlazo=1/length(error)*sum(error.^2)

% desviacion estandar
std = std(error)

%Presentación de los resultados
figure
title('Comparación')
plot(yd)
hold on
plot(Y)
legend('plazo simulado','plazo real')
xlabel('X');ylabel('Datos')

%Figura del error
figure
plot(error)
title('Error')
xlabel('X');ylabel('Error')

% Simulacion para prestamo

%Función de minimización fminunc para prestamo
[difuso,fval,exitflag,output] = fminunc(@JobjetivoPre,difuso,options);

%Sistema difuso optimizado
FIS = sisdifuso(difuso);

%Datos para comprobación
X = [ecgEdad...
    ecgSalario...
    ecgCapacidad]

Y = [xlsread('datosBanco.xlsx','Analisis','E3:E53')]

%Evaluación del sistema difuso
yd = evalfis(X,FIS);
yd = yd(:,2)

% para llenar tabla de datos
clear std min max;
%Error obtenido
error=Y-yd;

% Minimo
min = min(error)

% Maximo
max = max(error)

% MSE
msePrestamo=1/length(error)*sum(error.^2)

% desviacion estandar
std = std(error)

%Presentación de los resultados
figure
title('Comparación')
plot(yd)
hold on
plot(Y)
legend('prestamo simulado','prestamo real')
xlabel('X');ylabel('Datos')

%Figura del error
figure
plot(error)
title('Error')
xlabel('X');ylabel('Error')

%% Valores iniciales CONFIGURACION 2 (conjunto grande de consideracion para personas jovenes)
 difuso = [21 74 18 28 18 60 18 74 248 800 248 400 248 600 248 800 5 300 5 75 5 150 5 200 0 45 2 12 20 17 30 45 0 25 0 3 6 5 11 18 16 19 22]

% Simulacion para plazo

%Función de minimización fminunc para plazo
[difuso,fval,exitflag,output] = fminunc(@JobjetivoPl,difuso,options);

%Sistema difuso optimizado
FIS = sisdifuso(difuso);

%Datos para comprobación
X = [ecgEdad...
    ecgSalario...
    ecgCapacidad]

Y = [xlsread('datosBanco.xlsx','Analisis','D3:D53')]

%Evaluación del sistema difuso
yd = evalfis(X,FIS);
yd = yd(:,1)

% para llenar tabla de datos
clear std min max;
%Error obtenido
error=Y-yd;

% Minimo
min = min(error)

% Maximo
max = max(error)

% MSE
msePlazo=1/length(error)*sum(error.^2)

% desviacion estandar
std = std(error)

%Presentación de los resultados
figure
title('Comparación')
plot(yd)
hold on
plot(Y)
legend('plazo simulado','plazo real')
xlabel('X');ylabel('Datos')

%Figura del error
figure
plot(error)
title('Error')
xlabel('X');ylabel('Error')

% Simulacion para prestamo

%Función de minimización fminunc para prestamo
[difuso,fval,exitflag,output] = fminunc(@JobjetivoPre,difuso,options);

%Sistema difuso optimizado
FIS = sisdifuso(difuso);

%Datos para comprobación
X = [ecgEdad...
    ecgSalario...
    ecgCapacidad]

Y = [xlsread('datosBanco.xlsx','Analisis','E3:E53')]

%Evaluación del sistema difuso
yd = evalfis(X,FIS);
yd = yd(:,2)

% para llenar tabla de datos
clear std min max;
%Error obtenido
error=Y-yd;

% Minimo
min = min(error)

% Maximo
max = max(error)

% MSE
msePrestamo=1/length(error)*sum(error.^2)

% desviacion estandar
std = std(error)

%Presentación de los resultados
figure
title('Comparación')
plot(yd)
hold on
plot(Y)
legend('prestamo simulado','prestamo real')
xlabel('X');ylabel('Datos')

%Figura del error
figure
plot(error)
title('Error')
xlabel('X');ylabel('Error')

%% Valores iniciales CONFIGURACION 3 (cambio en el conjunto de ingresos)
 difuso = [21 74 18 21 18 60 18 74 248 800 248 450 248 1000 248 5000 5 300 5 75 5 150 5 200 0 45 2 12 20 17 30 45 0 25 0 3 6 5 11 18 16 19 22]

% Simulacion para plazo

%Función de minimización fminunc para plazo
[difuso,fval,exitflag,output] = fminunc(@JobjetivoPl,difuso,options);

%Sistema difuso optimizado
FIS = sisdifuso(difuso);

%Datos para comprobación
X = [ecgEdad...
    ecgSalario...
    ecgCapacidad]

Y = [xlsread('datosBanco.xlsx','Analisis','D3:D53')]

%Evaluación del sistema difuso
yd = evalfis(X,FIS);
yd = yd(:,1)

% para llenar tabla de datos
clear std min max;
%Error obtenido
error=Y-yd;

% Minimo
min = min(error)

% Maximo
max = max(error)

% MSE
msePlazo=1/length(error)*sum(error.^2)

% desviacion estandar
std = std(error)

%Presentación de los resultados
figure
title('Comparación')
plot(yd)
hold on
plot(Y)
legend('plazo simulado','plazo real')
xlabel('X');ylabel('Datos')

%Figura del error
figure
plot(error)
title('Error')
xlabel('X');ylabel('Error')

% Simulacion para prestamo

%Función de minimización fminunc para prestamo
[difuso,fval,exitflag,output] = fminunc(@JobjetivoPre,difuso,options);

%Sistema difuso optimizado
FIS = sisdifuso(difuso);

%Datos para comprobación
X = [ecgEdad...
    ecgSalario...
    ecgCapacidad]

Y = [xlsread('datosBanco.xlsx','Analisis','E3:E53')]

%Evaluación del sistema difuso
yd = evalfis(X,FIS);
yd = yd(:,2)

% para llenar tabla de datos
clear std min max;
%Error obtenido
error=Y-yd;

% Minimo
min = min(error)

% Maximo
max = max(error)

% MSE
msePrestamo=1/length(error)*sum(error.^2)

% desviacion estandar
std = std(error)

%Presentación de los resultados
figure
title('Comparación')
plot(yd)
hold on
plot(Y)
legend('prestamo simulado','prestamo real')
xlabel('X');ylabel('Datos')

%Figura del error
figure
plot(error)
title('Error')
xlabel('X');ylabel('Error')

%% Valores iniciales CONFIGURACION 4 (cambio en el conjunto prestamos, prioridad largo plazo)
 difuso = [21 74 18 21 18 60 18 74 248 800 248 400 248 600 248 800 5 300 5 75 5 150 5 200 0 45 2 7 12 13 28 45 0 25 0 3 6 5 11 18 16 19 22]

% Simulacion para plazo

%Función de minimización fminunc para plazo
[difuso,fval,exitflag,output] = fminunc(@JobjetivoPl,difuso,options);

%Sistema difuso optimizado
FIS = sisdifuso(difuso);

%Datos para comprobación
X = [ecgEdad...
    ecgSalario...
    ecgCapacidad]

Y = [xlsread('datosBanco.xlsx','Analisis','D3:D53')]

%Evaluación del sistema difuso
yd = evalfis(X,FIS);
yd = yd(:,1)

% para llenar tabla de datos
clear std min max;
%Error obtenido
error=Y-yd;

% Minimo
min = min(error)

% Maximo
max = max(error)

% MSE
msePlazo=1/length(error)*sum(error.^2)

% desviacion estandar
std = std(error)

%Presentación de los resultados
figure
title('Comparación')
plot(yd)
hold on
plot(Y)
legend('plazo simulado','plazo real')
xlabel('X');ylabel('Datos')

%Figura del error
figure
plot(error)
title('Error')
xlabel('X');ylabel('Error')

% Simulacion para prestamo

%Función de minimización fminunc para prestamo
[difuso,fval,exitflag,output] = fminunc(@JobjetivoPre,difuso,options);

%Sistema difuso optimizado
FIS = sisdifuso(difuso);

%Datos para comprobación
X = [ecgEdad...
    ecgSalario...
    ecgCapacidad]

Y = [xlsread('datosBanco.xlsx','Analisis','E3:E53')]

%Evaluación del sistema difuso
yd = evalfis(X,FIS);
yd = yd(:,2)

% para llenar tabla de datos
clear std min max;
%Error obtenido
error=Y-yd;

% Minimo
min = min(error)

% Maximo
max = max(error)

% MSE
msePrestamo=1/length(error)*sum(error.^2)

% desviacion estandar
std = std(error)

%Presentación de los resultados
figure
title('Comparación')
plot(yd)
hold on
plot(Y)
legend('prestamo simulado','prestamo real')
xlabel('X');ylabel('Datos')

%Figura del error
figure
plot(error)
title('Error')
xlabel('X');ylabel('Error')