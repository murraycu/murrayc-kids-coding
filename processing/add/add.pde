//          01234567
String a = "56789869";
String b = "12345999";
String answer = new String();

println("  " + a);
println("+ " + b);
println("  ---------");

int n = a.length();
int carry = 0;
for (int i = n - 1; i >= 0; i = i - 1) {
  int d1 = a.charAt(i) - '0';
  int d2 = b.charAt(i) - '0';

  int add = d1 + d2 + carry;
  int remainder = add % 10;
  carry = add / 10;

  answer = remainder + answer;
}

println("= " + answer);

