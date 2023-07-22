void main(){
  int result = findLargestPalindrome();
  print(result);
}

bool isItPalindromicNumber(int number){
  //verilen sayının palindromik sayı olup olmadığını kontrol eden fonksiyon
  String stringNumber = number.toString();
  return (stringNumber == reverseString(stringNumber));
}

String reverseString(String word){
  //verilen ifadeyi tersten yazar
  String result = "";
  for(int i = word.length - 1;i >= 0;i--){
    String wordElement = word[i];
    result = result + wordElement;
  }
  return result;
}

int findLargestPalindrome(){
  int largestPalindrome = 0;
  
  for(int i = 100; i < 1000;i++){
    for(int j=100; j< 1000; j++){
      int product = i * j;
      if((isItPalindromicNumber(product)) && (product > largestPalindrome) ){
        largestPalindrome = product;
      }
    }
  }

  return largestPalindrome;
}