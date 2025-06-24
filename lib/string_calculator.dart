class StringCalculator{
  int add(String number){
    if (number.isEmpty) return 0;

    if(number.contains(",")){
      return number.split(",").map(int.parse).reduce((a,b) => a+b);
    }
    return int.parse(number);
  }
}