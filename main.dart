void main() {
  // Q 1
  print("Q1");
  int limit = 10;

  int a = 0;
  int b = 1;

  print(a);
  print(b);

  for (int i = 2; i <= limit; i++) {
    int c = a + b;
    if (c > limit) {
      break;
    }
    print(c);
    a = b;
    b = c;
  }
  // Q2
  print("Q2");

  List numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];

  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  print("Largest element:");
  print(largest);
  // Q3
  print("Q3");

  int table = 5;
  for (int i = 1; i <= 10; i++) {
    print("$table x $i = ${table * i}");
  }

  // Q4
  print("Q4");

  String text = "radar";
  String reverse = "";

  for (int i = text.length - 1; i >= 0; i--) {
    reverse = reverse + text[i];
  }

  if (text == reverse) {
    print('"$text" is a palidrome');
  } else {
    print('"$text" is not a palidrome');

    print("Q5");
  }
  for (int i = 1; i <= 4; i++) {
    String row = '';

    for (int j = 1; j <= i; j++) {
      row += i.toString();
    }

    print(row);
  }
  print("Q6");
  List<int> number = [2, 7, 4, 9, 1, 6];

  for (int i = 0; i < numbers.length; i++) {
    if (number[i] > 5) {
      print(numbers[i]);
    }
  }
  print("Q7");
  String istext = "hello world";
  int vowelCount = 0;

  for (int i = 0; i < istext.length; i++) {
    String ch = text[i].toLowerCase();

    if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
      vowelCount++;
    }

    print("Total vowels: $vowelCount");
  }
}
