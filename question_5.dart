import 'dart:math';

void main(){
  List<int> oneToTenNumberList = [];
  for(int i = 1;i <= 10;i++){
    oneToTenNumberList.add(i);
  }
  print(lowestCommonMultiple(oneToTenNumberList));
}
// lowest (or least) common multiple

int lowestCommonMultiple(List<int> numbers){
  List<int> dividers = [];
  //turkish => ekok fonksiyonu
  //array loop
  for(int i = 0;i < numbers.length;i++){
    int numbersElement = numbers[i];
    //divider loop
    for(int j = 2; j <= findTheLargestPrimeNumberInTheList(numbers); i++){
      if(numbersElement % j == 0){
        numbers[i] = (numbersElement / j).toInt();
        if(!(isItInTheList(dividers, j))){
          dividers.add(j);
        }
      }
      else{
      }

    }
  }
  return multiplyList(numbers);
}
int multiplyList(List<int> numbers){
  //verilen int tipinde listenin elemanlarını çarpıp sonucu döndüren fonksiyon
  int result = 1;
  for(int i = 0;i < numbers.length;i++){
    result = result * numbers[i];
  }
  return result;
}


int findTheLargestPrimeNumberInTheList(List<int> numberList){
  //verilen int tipinde listedeki en büyük asal sayıyı döndüren fonksiyon
  List<int> primeNumberList = [];
  for(int i = 0;i < numberList.length;i++){
    int number = numberList[i];
    if(number == 0){
    //0 asal değil
  }
    if(number == 1){
      //1 asal değil
    }
    else{
      List<int> divisors = divisorsOfNumbers(number);
      if(divisors.length == 2){
        primeNumberList.add(number);
      }
    }
  }
  int maxinTheList = primeNumberList.reduce(max);
  return maxinTheList;
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


bool isItInTheList(List list,dynamic searchElement){
  //verilen elemanın listede olup olmadığını döndüren fonksiyon
  /*
   list = [3,4,5];searchElement = 3 => return true
   list = [6,4,5];searchElement = 3 => return false
   */
  for(int i = 0; i < list.length;i++){
    dynamic element = list[i];
    if(element == searchElement){
      return true;
    }
  }
  return false;
}

int divideTheNumber(int number,int divider){
 //eğer number, divider a kalansız bölünüyor ise ise number/divider ı eğer number kalansız bölünmüyor ise numberı döndüren fonksiyon
 
 /* int result = number;
  /*

  number % divider == 0 => return number / divider
  number % divider != 0 => return number
   */
  if(number % divider == 0){
    result = (number / divider).toInt();
  }
  return result; */
  return (number % divider == 0) ? (number/divider).toInt() : number; 
}