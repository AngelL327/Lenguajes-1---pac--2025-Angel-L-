//Creamos las clases
class Empleado{
  final String nombre;
  final String puesto;
  final double salario;

Empleado({
   required this.nombre,
   required this.puesto, 
   required this.salario});
}
// Funcion que calcula el salario total
double calSalarioTotal(List<Empleado> empleados) {
  double total=0;
  for(int i=0 ;i< empleados.length ; i++){
    total += empleados[i].salario;
  }
  return total;
}
// Funcion que calcula el salario promedio
double calcSalarioPromedio(List<Empleado> empleados){
  return empleados.length == 0 ? 0 : calSalarioTotal(empleados) / empleados.length;
}
void main() {
  final empleados = <Empleado>[
    Empleado(nombre: 'Juan ', puesto: 'Desarrollador ', salario: 2000),
    Empleado(nombre: 'Rebeca', puesto: 'Asistente ', salario: 1500),
    Empleado(nombre: 'Pablo', puesto: 'Director', salario: 5000)   
  ];
  
print('-------- Lista de empleados ------------');
for(int i=0; i < empleados.length ; i++){
print('${empleados[i].nombre} ${empleados[i].puesto} \$${empleados[i].salario}');
}
final  SalarioTotal = calSalarioTotal(empleados);
final SalarioPromedio = calcSalarioPromedio(empleados);
print('--------- Calculos ------------');
print('Salario Total:    \$${SalarioTotal}');
print('Promedio Total:   \$${SalarioPromedio}');
}