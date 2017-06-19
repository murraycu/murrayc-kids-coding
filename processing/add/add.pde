String add_numbers(String a, String b) {
  String answer = new String();

  int lena = a.length();
  int lenb = b.length();
  int n = Math.max(lena, lenb);

  int carry = 0;
  for (int i = 1; i <= n; i += 1) {
    int d1 = 0;
    if (i <= lena) {
      d1 = a.charAt(lena - i) - '0';
    }

    int d2 = 0;
    if (i <= lenb) {
      d2 = b.charAt(lenb - i) - '0';
    }

    int add = d1 + d2 + carry;
    int remainder = add % 10;
    carry = add / 10;

    answer = remainder + answer;
  }

  if (carry > 0) {
    answer = carry + answer;
  }

  return answer;
}

void add_and_print(String[] nums) {
  String a = nums[0];
  String b = nums[1];
  String answer = add_numbers(a, b);

  println("  " + a);
  println("+ " + b);
  println("  ---------");
  println("= " + answer);
}

void setup() {
  String[] nums = {"1234", "5678"};
  add_and_print(nums);
}
