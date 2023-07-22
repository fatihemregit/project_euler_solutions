void main(){
  //çift sayıları tutmak için liste oluşturuyorum
  List<int> evenNumbers = [];
  //fibonacci dizisini tanımlıyorum
  List<int> fibonacciNumbers = getFibonacciNumbers(4000000);
  //fibonacci dizisindeki elemanları for döngüsüne sokuyorum
  for(int i = 0;i < fibonacciNumbers.length;i++){
    //dizideki döngüye giren elemanı temsil eden değişken
    int fibonacciNumbersListElement = fibonacciNumbers[i];
    //şart kontrolü
    if(fibonacciNumbersListElement % 2 == 0){
      //şart sağlanıyorsa çift sayıları tutmak için oluşturduğumuz listeye ekliyorum
      evenNumbers.add(fibonacciNumbersListElement);
    }
  }
  //şartı sağlayan çift sayıları topluyorum,
  int result = sumList(evenNumbers);
  print(result);
}

List<int> getFibonacciNumbers(int maxNumber){

  //verilen değere göre fibonacci dizisini oluşturan fonksiyon
  List<int> fibonacciNumbers = [];

  if(maxNumber == 0){
    return [];
  }
  else if(maxNumber == 1){
    return [0,1];
  }
  else{
    fibonacciNumbers.addAll([0,1]);
    for(int i = 2;i < maxNumber; i++){
      int fibonacciElement = fibonacciNumbers[i-1] + fibonacciNumbers[i - 2];
      if(fibonacciElement > maxNumber){

        break;
      }
      fibonacciNumbers.add(fibonacciElement);
    }
  }

  return fibonacciNumbers;
}
int sumList(List<int> list){
  //verilen int listedeki sayıları  toplayıp döndüren fonksiyon
  int sum = 0;
  for(int i = 0;i < list.length;i++){
    int listElement = list[i];
    sum = sum + listElement;
  }
  return sum;
}