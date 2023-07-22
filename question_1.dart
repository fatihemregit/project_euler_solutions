void main(){
  //şartı sağlayan numaraları tutmak için liste oluşturalım.
  var numberList = <int>[];
  //öncelikle şarta uyan numaraları bulalım
  for(var i = 1;i < 1000;i++){
    if((i % 3  == 0 )|| (i % 5 == 0) ){
      numberList.add(i);
    }
  }
  // daha sonra sayıları toplayalım
  print(sumList(numberList));
}

int sumList(List<int> list){
  //verilen integer dizideki elemanların toplamını veren fonksiyon
  int sum = 0;
  for(var element in list){
    sum = sum + element;
  }
  return sum;
}