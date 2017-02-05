for (int i = 1; i <= 300; ++i) {
  String str = Integer.toString(i);
  int len = str.length();
  int spaces = 3 - len;
  for (int j = 0; j < spaces; ++j) {
    print(" ");
  }
    
  print(str);
  print (" ");
  
  if (i % 10 == 0) {
    println("");
  }
}
