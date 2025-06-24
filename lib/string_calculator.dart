class StringCalculator {
  int add(String number) {
    if (number.isEmpty) return 0;

    String delimiter = ',';
    String actualNumbers = number;

    // Handle custom delimiter
    if (number.startsWith('//')) {
      final parts = number.split('\n');
      delimiter = parts[0].substring(2);
      actualNumbers = parts[1];
    }
    // Normalize all delimiters to ','
    final normalized = actualNumbers
        .replaceAll('\n', delimiter)
        .replaceAll(delimiter, ",");

    // Convert to integers
    final parts = normalized.split(',');
    final nums = parts.map(int.parse).toList();

    // Check for negatives
    final negatives = nums.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed: ${negatives.join(',')}');
    }

    return nums.reduce((a, b) => a + b);
  }
}
