class StringCalculator{
  int add(String number){
    if (number.isEmpty) return 0;

    String delimiter = ',';
    String actualNumbers = number;

    if (number.startsWith('//')) {
      final parts = number.split('\n');
      delimiter = parts[0].substring(2);
      actualNumbers = parts[1];
    }

    final normalized = actualNumbers.replaceAll('\n', delimiter).replaceAll(delimiter, ",");
    return normalized.split(",").map(int.parse).reduce((a,b) => a+b);
  }
}