class StringCalculator{
  int add(String number){
    if (number.isEmpty) return 0;

    final delimiters = number.replaceAll("\n", ",");
    return delimiters.split(",").map(int.parse).reduce((a,b) => a+b);
  }
}