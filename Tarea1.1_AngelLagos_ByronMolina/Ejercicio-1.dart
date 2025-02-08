void main(){
  // Ejercicio #1  sucesion fibonacci
List<int> fibonacci = [0,1];
for(int i=2 ; i <15 ; i++){
fibonacci.add(fibonacci[i-1]+ fibonacci[i-2]);
}
print(fibonacci);
}
