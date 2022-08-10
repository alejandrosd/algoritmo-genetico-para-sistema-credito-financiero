function a = sisdifuso(x)
x = [21 74 18 21 18 60 18 74 248 800 248 450 248 1000 248 5000 5 300 5 75 5 150 5 200 0 45 2 12 20 17 30 45 0 25 0 3 6 5 11 18 16 19 22]
%Sistema
a=newfis('Prestamo Bancario');
a.andMethod = 'min';
a.orMethod = 'max';
a.defuzzMethod = 'centroid';
a.impMethod = 'min';
a.aggMethod = 'max';

%Variable de entrada: Cliente
a=addvar(a,'input','Cliente',[x(1) x(2)]);

%Funciones de pertenencia
a=addmf(a,'input',1,'Joven','gaussmf',[x(3) x(4)]);
a=addmf(a,'input',1,'Adulto','gaussmf',[x(5) x(6)]);
a=addmf(a,'input',1,'Viejo','gaussmf',[x(7) x(8)]);

%Variable de entrada: Ingresos
a=addvar(a,'input','Ingresos',[x(9) x(10)]);

%Funciones de pertenencia
a=addmf(a,'input',2,'Bajos','gaussmf',[x(11) x(12)]);
a=addmf(a,'input',2,'Medios','gaussmf',[x(13) x(14)]);
a=addmf(a,'input',2,'Altos','gaussmf',[x(15) x(16)]);

%Variable de entrada: Capacidad de Pago
a=addvar(a,'input','Capacidad_Pago',[x(17) x(18)]);

%Funciones de pertenencia
a=addmf(a,'input',3,'Minimo','gaussmf',[x(19) x(20)]);
a=addmf(a,'input',3,'Promedio','gaussmf',[x(21) x(22)]);
a=addmf(a,'input',3,'Maximo','gaussmf',[x(23) x(24)]);

%Variable de salida: Plazo
a=addvar(a,'output','Plazo',[x(25) x(26)]);

%Funciones de pertenencia
a=addmf(a,'output',1,'Corto','trimf',[x(27) x(28) x(29)]);
a=addmf(a,'output',1,'Prolongado','trimf',[x(30) x(31) x(32)]);

%Variable de salida: Prestamo
a=addvar(a,'output','Prestamo',[x(33) x(34)]);

%Funciones de pertenencia
a=addmf(a,'output',2,'Bajo','trimf',[x(35) x(36) x(36)]);
a=addmf(a,'output',2,'Promedio','trimf',[x(38) x(38) x(40)]);
a=addmf(a,'output',2,'Alto','trimf',[x(41) x(42) x(43)]);

%Reglas de inferencia
ruleList=[
  	1 0 0 1 0 1 2
   	2 0 0 2 0 1 2
    3 0 0 1 0 1 2
    0 1 1 0 1 1 2
    0 2 2 0 2 1 2
    0 3 3 0 3 1 2];

a = addrule(a,ruleList);
