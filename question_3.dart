import 'dart:math';

void main(){
  print(divisorsOfNumbers(9009));
  //print(findPrimeFactors(600851475143).reduce(max));

}

List<int> findPrimeFactors(int number){
  List<int> primeFactors = [];
  List<int> divisors = divisorsOfNumbers(number);
  for(int i = 0;i < divisors.length;i++){
    int divisorElement = divisors[i];
    if(isItPrime(divisorElement)){
      primeFactors.add(divisorElement);
    }
  }
  return primeFactors;
}



bool isItPrime(int number){
  //Verilen sayının asal mı değil mi olduğunu döndüren fonksiyon
  bool state = false;
  if(number == 0){
    //0 asal değil
    state = false;
  }
  if(number == 1){
    //1 asal değil
    state = false;
  }
  else{
    List<int> divisors = divisorsOfNumbers(number);
    if(divisors.length == 2){
      state = true;
    }
  }
  return state;
}
List<int> divisorsOfNumbers(int number){
  //sayının bölenlerini döndüren fonksiyon
  List<int> divisors = [];
  for(int i = 1; i< number;i++){
    if(number % i == 0){
      divisors.add(i);
    }
  }
  divisors.add(number);
  return divisors;
}