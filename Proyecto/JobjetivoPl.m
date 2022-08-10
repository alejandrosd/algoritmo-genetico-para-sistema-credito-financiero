function f = JobjetivoPl(x)
%Función para el cálculo del desempeño de un sistema difuso 
%dado por los parámetros del vector x

%Creación del sistema difuso
a = sisdifuso(x);

%[15 74 5 25 5 45 5 67 200 1000 50 400 50 600 50 825 20 300 20 75 20 150 20 200 0 45 2 12 20 17 30 45 0 25 0 3 6 5 11 18 16 19 22]

%Datos de entrenamiento
X = [ecgEdad...
    ecgSalario...
    ecgCapacidad];

%Evaluación del sistema difuso
yd = evalfis(X,a);
yd = yd(:,1);

%Se traen las salidas
Y = [xlsread('datosBanco.xlsx','Analisis','D3:D53')]

%Cálculo del error
error=Y-yd;

%Error cuadrático
f=1/length(error)*sum(error.^2);