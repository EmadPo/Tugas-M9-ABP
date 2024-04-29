void main() {
  List<List<int>> array2D = [
    [for (int i = 1; i <= 4; i++) i * 6],
    [for (int i = 1, num = 3; i <= 5; i++, num += 2) num],
    [for (int i = 1, num = 4; i <= 6; i++, num++) num * num * num],
    [for (int i = 1, num = 3; i <= 7; i++, num += 7) num],
  ];

  print('Isi List:');
  for (var row in array2D) {
    print(row.join(' '));
  }

  int num1 = 12;
  int num2 = 8;
  printFPB(num1, num2);
}

void printFPB(int num1, int num2) {
  print('Bilangan 1: $num1');
  print('Bilangan 2: $num2');
  print('FPB $num1 dan $num2 = ${findGCD(num1, num2)}');
}

int findGCD(int num1, int num2) {
  while (num2 != 0) {
    int temp = num2;
    num2 = num1 % num2;
    num1 = temp;
  }
  return num1;
}
