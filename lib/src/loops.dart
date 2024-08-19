void main() {
  // for loop initialization;condition;increment /decrement
  for (int i = 0; i < 10; i++) {
    print("hello world $i");
  }

  // do while
  // do while always runs one time in any condition it will execute
  int a = 5;
  do {
    print("in do $a");
    a++;
  } while (a < 10);

  //while condition based
  int b = 5;
  while (b < 10) {
    print("while $b");
    b++;
  }
}
